<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\BusinessController;
use App\Http\Controllers\RegisterController;

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

Route::get('/', [App\Http\Controllers\BerandaController::class, 'index']);

// login
Route::get('/login', [App\Http\Controllers\LoginController::class, 'login']);
Route::post('/login', [App\Http\Controllers\LoginController::class, 'checkUser']);

// register
Route::get('/register', [App\Http\Controllers\RegisterController::class, 'index']);
Route::post('/register', [App\Http\Controllers\RegisterController::class, 'store']);

Route::get('/business_goals', [App\Http\Controllers\BusinessController::class, 'business']);

Route::get('/IT_goals/{id}/{goals}', [App\Http\Controllers\BusinessController::class, 'goals']);
Route::get('/IT_process', [App\Http\Controllers\BusinessController::class, 'final']);
