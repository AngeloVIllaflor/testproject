    <?php

    use Illuminate\Support\Facades\Route;
    use App\Http\Controllers\ApiController;
    use App\Http\Controllers\ProfileController;
    use App\Models\Department;
    use App\Models\User;
    use Illuminate\Support\Carbon;

    Route::get('/', function () {
        return view('welcome');
    });

    Route::get('/dashboard', function () {
        return view('dashboard');
    })->middleware(['auth', 'verified'])->name('dashboard');

    Route::middleware('auth')->group(function () {
        Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
        Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
        Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    });

    Route::get('/api/update-data', [ApiController::class, 'getUpdateData']);

    Route::post('/api/update-data', [ApiController::class, 'updateData']);

    Route::get('/update/success', function () {
        return view('update-success');
    })->name('update.success');

    Route::get('/update/failure', function () {
        return view('update-failure');
    })->name('update.failure');


    Route::get('/guard', function () {
        $users = User::whereDate('created_at', '>=', Carbon::now())->get();
        
        return view('guard.dashboard', compact('users'));
    });

    Route::get('/update-purpose/{user}/department/{department}', function (User $user, Department $department) {

        $user->purposes()->updateExistingPivot($department->id, [
            'status' => 'Done',
            'finished_at' => Carbon::now()
        ]);

        return redirect()->route('update.success')->with(['message' => 'Update successful', 'fullname' => $user->first_name]);
    });

    Route::get('/guard', function () {
        $users = User::whereDate('created_at', '>=', Carbon::now())->get();
        
        return view('guard.dashboard', compact('users'));
    });

    Route::get('/admin', function () {
        $users = User::whereDate('created_at', '>=', Carbon::now())->get();
        
        return view('admin.dashboardList', compact('users'));
    });

    Route::get('/logout-user/{user}', function (User $user) { 
        $user->update(['logout_time' => Carbon::now()]);
        return redirect('/guard');
        
    })->name('logout.user');

    Route::get('/download-csv', function () {
        $users = User::with('purposes')->whereDate('created_at', '>=', Carbon::now())->get();
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
        $csvExporter->build($data, ['id', 'first_name', 'last_name', 'phone_number', 'purposes.name', 'purposes.purpose', 'purposes.pivot.status', 'created_at', 'logout_time'])->download();
    })->name('download.csv');



    require __DIR__ . '/auth.php';