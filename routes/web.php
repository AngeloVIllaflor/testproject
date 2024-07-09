    <?php

    use Illuminate\Support\Facades\Route;
    use App\Http\Controllers\{
        AdminController,
        ApiController,
        ProfileController
    };
    use App\Http\Controllers\Auth\LogOutController;
    use App\Models\Department;
    use App\Models\User;
    use Illuminate\Support\Carbon;

    Route::get('/', function () {
        return view('welcome');
    })->name('home');

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

    Route::get('/update-purpose/{user}/department/{department}', function (User $user, Department $department) {
        $user->purposes()->updateExistingPivot($department->id, [
            'status' => 'Done',
            'finished_at' => Carbon::now()
        ]);

        return redirect()->route('update.success')->with(['message' => 'Update successful', 'fullname' => $user->first_name]);
    });

    Route::get('/admin-dashboard', [AdminController::class, 'dashboard'])->middleware('auth')->name('admin.dashboard');
    Route::get('/admin', [AdminController::class, 'admin'])->middleware('auth')->name('admin.admin');
    Route::get('/guard', [AdminController::class, 'guard'])->middleware('auth')->name('admin.guard');
    Route::get('/download-csv', [AdminController::class, 'download'])->middleware('auth')->name('admin.download');
    Route::get('/api/visitors', [AdminController::class, 'apiVisitors'])->middleware('auth')->name('admin.api.visitors');
    Route::get('/api/reports/line', [AdminController::class, 'apiLineChart'])->middleware('auth')->name('admin.api.linechart');
    Route::get('/api/reports/pie', [AdminController::class, 'apiPieChart'])->middleware('auth')->name('admin.api.piechart');

    Route::get('/logout-user/{user}', function (User $user) { 
        $user->update(['logout_time' => Carbon::now()]);

        return redirect('/logout-thank');
    })->name('logout.user');

    Route::get('logout-thank', function(){
        return view('logoutsuccess');       
    });

    Route::get('logout', function(){
        auth()->logout();
        
        return redirect('/');
    });
    
    Route::get('/logout-form', [LogOutController::class, 'showLogoutForm']);
    Route::post('/logout-form', [LogOutController::class, 'submitLogoutForm']);
    Route::get('/get-user/{id}', [LogOutController::class, 'getUser']);


    require __DIR__ . '/auth.php';