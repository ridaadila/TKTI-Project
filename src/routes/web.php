<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\BusinessController;

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
    return view('beranda');
});

Route::get('/login', [App\Http\Controllers\LoginController::class, 'login']);
Route::get('/register', [App\Http\Controllers\RegisterController::class, 'index']);

Route::get('/business_goals', [App\Http\Controllers\BusinessController::class, 'business']);
Route::get('/IT_goals', [App\Http\Controllers\BusinessController::class, 'goals']);
Route::get('/IT_process', [App\Http\Controllers\BusinessController::class, 'final']);

