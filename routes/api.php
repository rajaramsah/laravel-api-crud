<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductListController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


Route::get("list/{id?}",[ProductListController::class,'showlist']);

Route::post("add",[ProductListController::class,'create']);

Route::put("update",[ProductListController::class,'update']);

Route::delete("delete/{id}",[ProductListController::class,'delete']);

Route::get("search/{productname}",[ProductListController::class,'search']);