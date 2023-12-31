<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\TabelController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
})->name('home');

Route::get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

Route::get('loadTabel', [TabelController::class, 'loadTabel'])->name('loadTabel');
Route::get('deleteRow', [TabelController::class, 'deleteRow'])->name('deleteRow');
Route::get('btnPlusFormRow', [TabelController::class, 'btnPlusFormRow'])->name('btnPlusFormRow');
Route::post('saveTabel', [TabelController::class, 'saveTabel'])->name('saveTabel');

require __DIR__.'/auth.php';
