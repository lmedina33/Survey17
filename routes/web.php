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

Route::get('/admin', 'AdminController@index');
Route::get('/admin/pregunta/crear', 'PreguntaController@crearPregunta');
Route::post('/admin/pregunta/guardar', 'PreguntaController@guardarPregunta');
Route::get('/admin/preguntas','PreguntaController@getListaPreguntas');
Route::get('/admin/pregunta/{slug}/{id}','PreguntaController@verPregunta');
Route::get('/admin/modulos','ModuloController@getListaModulos');
Route::get('/admin/entidades','EntidadController@getListaEntidades');
Route::get('/admin/entidad/{slug}/{id}','EntidadController@verEntidad');

Route::get('/encuesta','EncuestaController@index');

Route::post('/ajax/guardar/datos_generales','EntidadController@guardarEntidad');