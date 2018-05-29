<?php

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
});

Route::get('/application', 'ApplicationController@application');//rota para a aplicação
Route::post('/application', 'ApplicationController@add');//recebe e adiciona os dados no BD
Route::get('/delete/{id}', 'ApplicationController@del');//deleta dados
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
