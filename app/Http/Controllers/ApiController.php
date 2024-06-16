<?php

namespace App\Http\Controllers;

use App\Models\Purpose;
use App\Models\Department;
use Illuminate\Http\Request;

class ApiController extends Controller
{

    // Handle the GET request and redirect to the POST route
    public function getUpdateData(Request $request)
    {


        $departmentId = $request->query('department_id');
        $purposeId = $request->query('purpose_id');
        $fullname = $request->query('fullname');

        return view('clear', compact('departmentId', 'purposeId', 'fullname'));
    }

    public function updateData(Request $request)
    {

        logger()->info('requestsss: ', [$request->all()]);
        $departmentId = $request->input('department_id');
        $purposeId = $request->input('purpose_id');
        $fullname = $request->input('fullname');

        $purpose = Purpose::where('department_id', $departmentId)
            ->where('id', $purposeId)->first();

        logger()->info('purpose: ', [$departmentId]);
        if ($purpose) {
            $purpose->department_status = 'Yes';
            $purpose->save();

            return redirect()->route('update.success')->with(['message' => 'Update successful', 'fullname' => $fullname]);
        }

        return redirect()->route('update.failure')->with('error', 'Record not found');
    }
}
