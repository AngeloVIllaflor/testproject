<?php

namespace App\Http\Controllers;

use DB;
use App\Models\{
    Department,
    User
};
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class AdminController extends Controller
{
    public function dashboard()
    {
        $TotalTodayVisitors = User::where('created_at', '>=', date('Y-m-d 00:00:00'))
            ->whereNotIn('id', [1,2])
            ->count();
        $ActiveVisitors = User::whereNull('logout_time')
            ->whereNotIn('id', [1,2])
            ->count();

        $ClearedVisitors = User::whereDoesntHave('purposes', function($query){
            $query->whereNull('department_user_table.finished_at');
        })
            ->whereNotIn('id', [1,2])
            ->count();
        $Last7DaysVisitors = User::where('created_at', '>=', Carbon::now()->subDays(7))
            ->whereNotIn('id', [1,2])
            ->count();

        return view(
            'admin.dashboard', 
            compact(
                'TotalTodayVisitors',
                'ActiveVisitors',
                'ClearedVisitors',
                'Last7DaysVisitors',
            )
        );
    }

    public function admin()
    {
        return view('admin.admin');
    }

    public function guard()
    {
        return view('admin.visitor');
    }

    public function apiVisitors(Request $request)
    {
        $draw = $request->get('draw');
        $start = $request->get("start");
        $rowperpage = $request->get("length");
        $columnIndex_arr = $request->get('order');
        $columnName_arr = $request->get('columns');
        $order_arr = $request->get('order');
        $search_arr = $request->get('search');
        $columnIndex = $columnIndex_arr[0]['column'];
        $columnName = $columnName_arr[$columnIndex]['data'];
        $columnSortOrder = $order_arr[0]['dir'];
        $searchValue = $search_arr['value'];
        $data_arr = [];

        $queryTotalRecordswithFilter = User::leftJoin('department_user_table', function($join) {
                $join->on('department_user_table.user_id', '=', 'users.id');
            })
            ->leftJoin('departments', function($join) {
                $join->on('department_user_table.department_id', '=', 'departments.id');
            });
       if ($searchValue) {
            $queryTotalRecordswithFilter->where('users.first_name', 'like', '%' . $searchValue . '%')
                ->orWhere('users.last_name', 'like', '%' . $searchValue . '%')
                ->orWhere('department_user_table.status', 'like', '%' . $searchValue . '%')
                ->orWhere('departments.name', 'like', '%' . $searchValue . '%')
                ->orWhere('departments.purpose', 'like', '%' . $searchValue . '%')
                ->orWhere('departments.description', 'like', '%' . $searchValue . '%');
        }
        $totalRecordswithFilter = $queryTotalRecordswithFilter->count();

        $purposes = [
            "name",
            "purpose",
        ];

        $pivot = [
            "status",
            "finished_at",
        ];

        if (in_array($columnName, $purposes)) {
            $columnName = 'departments.' . $columnName;
        } elseif (in_array($columnName, $pivot)) {
            $columnName = 'department_user_table.' . $columnName;
        } else {
            $columnName = 'users.' . $columnName;
        }

        $queryRecords = User::select('users.*', 'departments.purpose', 'departments.name', 'department_user_table.status', 'department_user_table.finished_at')->leftJoin('department_user_table', function($join) {
                $join->on('department_user_table.user_id', '=', 'users.id');
            })
            ->leftJoin('departments', function($join) {
                $join->on('department_user_table.department_id', '=', 'departments.id');
            })
            ->orderBy($columnName, $columnSortOrder)
            ->skip($start)
            ->take($rowperpage);
        if ($searchValue) {
            $queryRecords->where('users.first_name', 'like', '%' . $searchValue . '%')
                ->orWhere('users.last_name', 'like', '%' . $searchValue . '%')
                ->orWhere('department_user_table.status', 'like', '%' . $searchValue . '%')
                ->orWhere('departments.name', 'like', '%' . $searchValue . '%')
                ->orWhere('departments.purpose', 'like', '%' . $searchValue . '%')
                ->orWhere('departments.description', 'like', '%' . $searchValue . '%');
        }
        $users = $queryRecords->whereNotIn('users.id', [1,2])->get();

        foreach($users as $user) {
            $data_arr[] = [ 
                'id' => $user->id,
                'first_name' => $user->first_name,
                'last_name' => $user->last_name,
                'phone_number' => $user->phone_number,
                'name' => $user->name,
                'purpose' => $user->purpose,
                'status' => $user->status,
                'finished_at' => $user->finished_at,
                'created_at' => $user->created_at,
                'logout_time' => $user->logout_time,
            ];
        }

        $response = [
            'draw' => intval($draw),
            'iTotalRecords' => count($data_arr),
            'iTotalDisplayRecords' => $totalRecordswithFilter,
            'aaData' => $data_arr
        ];

        return response()->json($response);
    }

    public function apiLineChart()
    {
        try {
            $mon = app('request')->input('month');
            $yr = app('request')->input('year');
            if (in_array($mon, ['04', '06', '09', '11'])) {
                $day = 30;
            } else if ($mon == '02') {
                $day = 28;
            } else {
                $day = 31;
            }
            
            $visitorPerDay = DB::table('users')
                ->select([
                    'id',
                    DB::Raw('DATE_FORMAT(created_at, \'%Y-%m-%d\') AS created_at')
                ])
                ->whereRaw("created_at BETWEEN '".$yr."-".$mon."-01 00:00:01' AND '".$yr."-".$mon."-".$day." 23:59:59'");

            $visitorPerDayCounts = DB::table(DB::raw("({$visitorPerDay->toSql()}) AS t1"))
                ->select([
                    'id',
                    'created_at',
                    DB::raw('SUBSTRING(created_at, 6, 2) AS month'),
                    DB::raw('SUBSTRING(created_at, 9, 2) AS day'),
                    DB::raw('SUBSTRING(created_at, 1, 4) AS year'),
                    DB::raw('COUNT(*) AS total')
                ])
                ->groupBy([
                    'id',
                    'created_at'
                ])
                ->orderBy('created_at')
                ->get();
        } catch (\Exception $e) {
            return response()->json(['message' => $e->getMessage()], 422);
        }

        return $visitorPerDayCounts;
    }

    public function apiPieChart()
    {
        try {
            $departmentCount = Department::groupBy('purpose')
                ->select([
                    DB::raw('purpose AS department'),
                    DB::raw('COUNT(*) AS total')
                ])
                ->orderBy('department')
                ->get();
        } catch (\Exception $e) {
            return response()->json(['message' => $e->getMessage()], 422);
        }

        return $departmentCount;
    }

    public function download()
    {
        $users = User::with('purposes')
            ->get();
        $data = collect();
        foreach($users as $user) {
            foreach($user->purposes as $purpose) {
                $data->push([ 
                    'id' => $user->id,
                    'first_name' => $user->first_name,
                    'last_name' => $user->last_name,
                    'phone_number' => $user->phone_number,
                    'purpose_name' => $purpose->name,
                    'purpose_purpose' => $purpose->purpose,
                    'purpose_status' => $purpose->pivot->status,
                    'created_at' => $user->created_at,
                    'logout_time' => $user->logout_time,
                ]);
            }
        }

        $csvExporter = new \Laracsv\Export();
        $csvExporter->build(
                $data, 
                [
                    'id', 
                    'first_name', 
                    'last_name', 
                    'phone_number', 
                    'purpose_name', 
                    'purpose_purpose', 
                    'purpose_status', 
                    'created_at', 
                    'logout_time'
                ]
            )
            ->download();
    }
}
