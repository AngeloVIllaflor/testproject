<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ApiController;
use App\Http\Controllers\ProfileController;

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

require __DIR__.'/auth.php';
