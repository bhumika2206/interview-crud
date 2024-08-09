<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\StudentController;

Route::get('/', function () {
    return view('welcome');
});



Auth::routes();

Route::prefix('admin')->group(function () {
    Route::get('/dashboard', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
    Route::resource('students', StudentController::class);
    Route::any('/student', [StudentController::class, 'getData'])->name('student.get-data');
    Route::get('/logout', [App\Http\Controllers\HomeController::class, 'logout'])->name('logout');

});
