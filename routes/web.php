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
    Route::get('property/confirmation/{id}', 'PropertyController@confirmation');
    #Favorite Controller
    Route::get('favorite/add/{id}','FavoriteController@create');
    Route::get('favorite/show','FavoriteController@show');
    Route::get('favorite/delete/{id}','FavoriteController@delete');






});

Auth::routes();



















