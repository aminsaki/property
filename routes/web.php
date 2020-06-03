<?php

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


Route::get('/', 'HomeController@index')->name('home');

Route::group(['middleware' => ['auth']], function () {

    #panel controller
    Route::get('/panel', 'PanelController@index')->name('home');

    # Property controller
    Route::get('property/index', 'PropertyController@index');
    Route::post('property/create', 'PropertyController@create');
    Route::get('property/show', 'PropertyController@show');





});

Auth::routes();



















