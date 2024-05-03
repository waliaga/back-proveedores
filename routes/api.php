<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CheckEmailController;
use App\Http\Controllers\MaterialesYCostosController;
use App\Http\Controllers\PhpInfoController;

Route::group([], function(){

    Route::get('/getphpinfo',               [PhpInfoController::class, 'index']);

    Route::post('checkemail',               [CheckEmailController::class, 'checkemail']);
    Route::post('validateemailandcode',     [CheckEmailController::class, 'validateemailandcode']);
    Route::post('getproveedorinfo',         [CheckEmailController::class, 'getproveedorinfo']);
    Route::post('registerproveedor',        [CheckEmailController::class, 'registerproveedor']);
    Route::post('updateproveedor',          [CheckEmailController::class, 'updateproveedor']);
    Route::post('checkproveedordata',       [CheckEmailController::class, 'checkproveedordata']);

    Route::post('getmaterialespublicados',  [MaterialesYCostosController::class, 'getmaterialespublicados']);
    Route::post('savemyproposal',           [MaterialesYCostosController::class, 'savemyproposal']);
    Route::post('sendmyproposal',           [MaterialesYCostosController::class, 'sendmyproposal']);

    // Enviar correos
    Route::post('justsendmail',             [CheckEmailController::class, 'justsendmail']);

});

/*
 * Not found route method 404
 */
Route::fallback(function (){
    return response()->json([
        'message'   =>  'Route not found - 404'
    ], 404);
});

