    <?php

    use Illuminate\Support\Facades\Route;
    use App\Http\Controllers\{
        AdminController,
        ApiController,
        ProfileController
    };
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

    Route::get('/update-purpose/{user}/department/{department}', function (User $user, Department $department) {
        $user->purposes()->updateExistingPivot($department->id, [
            'status' => 'Done',
            'finished_at' => Carbon::now()
        ]);

        return redirect()->route('update.success')->with(['message' => 'Update successful', 'fullname' => $user->first_name]);
    });

    Route::get('/admin-dashboard', [AdminController::class, 'dashboard'])->name('admin.dashboard');
    Route::get('/admin', [AdminController::class, 'admin'])->name('admin.admin');
    Route::get('/guard', [AdminController::class, 'guard'])->name('admin.guard');
    Route::get('/download-csv', [AdminController::class, 'download'])->name('admin.download');
    Route::get('/api/visitors', [AdminController::class, 'apiVisitors'])->name('admin.api.visitors');
    Route::get('/api/reports/line', [AdminController::class, 'apiLineChart'])->name('admin.api.linechart');

    Route::get('/logout-user/{user}', function (User $user) { 
        $user->update(['logout_time' => Carbon::now()]);

        return redirect('/guard');
    })->name('logout.user');

    require __DIR__ . '/auth.php';
