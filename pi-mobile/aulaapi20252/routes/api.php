<?php

use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

Route::post('/registro', [UserController::class,'registro']);
Route::post('/login', [UserController::class,'login']);

Route::group(['middleware' => 'auth:sanctum'], function () {
    Route::post('/logout', [UserController::class,'logout']);
    Route::post('/check', [UserController::class,'validateToken']);
});