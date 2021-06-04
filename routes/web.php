<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\indexController;
use App\Http\Controllers\aboutController;
use App\Http\Controllers\servicesController;
use App\Http\Controllers\bookController;
use App\Http\Controllers\contactController;
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
    return view('index');
});

Route::get('index',[indexController::class,'index']);
Route::get('about',[aboutController::class,'about']);
Route::get('services',[servicesController::class,'services']);
Route::get('contact',[contactController::class,'contact']);
Route::get('book',[bookController::class,'book-services']);