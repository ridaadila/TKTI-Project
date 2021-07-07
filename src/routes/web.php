<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\BusinessController;
use App\Http\Controllers\RegisterController;
// use Updated upstream;
use App\Http\Controllers\RekomendasiController;

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



Route::get('/', 'AuthController@showFormLogin')->name('login');
Route::get('login', 'AuthController@showFormLogin')->name('login');
Route::post('login', 'AuthController@login');
Route::get('register', 'AuthController@showFormRegister')->name('register');
Route::post('register', 'AuthController@register');
Route::get('logout', 'AuthController@logout')->name('logout');

Route::get('/beranda', 'BerandaController@index');

Route::get('/business_goals', [App\Http\Controllers\BusinessController::class, 'business']);

Route::get('/IT_goals/{id}/{goals}', [App\Http\Controllers\BusinessController::class, 'goals']);
Route::get('/IT_process/{id}', [App\Http\Controllers\BusinessController::class, 'final']);
Route::get('/IT_process/hitung/{id}', [App\Http\Controllers\BusinessController::class, 'hitung']);
Route::get('/rekomendasi/{id}', [App\Http\Controllers\RekomendasiController::class, 'index']);
