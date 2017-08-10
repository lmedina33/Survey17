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
Route::get('/admin/modulo/crear','ModuloController@indexModulo');
Route::post('/admin/modulo/guardar', 'ModuloController@guardarModulo');
Route::get('/admin/modulo/{slug}/{id}','ModuloController@verModulo');
Route::get('/admin/encuesta_por_entidad','EncuestaController@encuestaPorEntidad');
Route::get('/admin/usuarios', 'UsuarioController@usuarios');
Route::get('/admin/seccion/crear', 'SeccionController@crear');
Route::get('/admin/secciones', 'SeccionController@getListaSecciones');
Route::get('/admin/tipo_encuesta/crear', 'TipoEncuestaController@crear');
Route::get('/admin/estadisticas','EstadisticaController@index');


Route::get('/encuesta','EncuestaController@pre');
Route::get('/encuesta/identificacion','IdentificacionController@validar');
Route::get('/encuesta/{dni}','EncuestaController@index');



Route::get('/ajax/obtener/orden','PreguntaController@obtenerOrden');
Route::post('/ajax/modificar/pregunta/{id}', 'PreguntaController@modificarPregunta');
Route::get('/ajax/obtener/pregunta/{id}','PreguntaController@preModificar');
Route::post('/ajax/guardar/datos_generales','EncuestaController@guardarEntidad');
Route::get('/ajax/obtener/modulos_preguntas','EncuestaController@modulosPreguntas');
Route::get('/ajax/obtener/entidades','EntidadController@getAjaxListaEntidades');
Route::post('/ajax/guardar/progreso','EncuestaController@guardarProgreso');
Route::get('/ajax/obtener/notificaciones/nuevas','ActividadController@getAllNewNotificaciones');
Route::get('/ajax/cambiar/estado/notificaciones','ActividadController@cambiarEstado');
Route::post('/ajax/guardar/rpta/{id}','RespuestaController@guardar');
Route::post('/ajax/guardar/seccion','SeccionController@guardar');
Route::post('/ajax/tipo_encuesta/guardar', 'TipoEncuestaController@guardar');
Route::get('/ajax/buscar/pdte/{dni}', 'PdteFiltradosController@obtener');
Route::post('/ajax/guardar/validar', 'PdteFiltradosController@guardarValidacion');
Route::get('/ajax/buscar/validar', 'PdteFiltradosController@buscarValidacion');
Route::get('/ajax/buscar/presidente/{dni}', 'PresidenteController@buscarPresidente');
Route::get('/ajax/buscar/progreso/entidad/{id}', 'EncuestaController@buscarProgresoEntidad');
Route::post('/ajax/guardar/avance', 'AvanceEncuestaController@guardar');
Route::get('/ajax/mostrar/avance/{dni}', 'AvanceEncuestaController@mostrarAvance');
Route::get('/ajax/buscar/avance/{id}', 'AvanceEncuestaController@buscarAvance');
Route::post('/ajax/modificar/avance', 'AvanceEncuestaController@modificarAvance');
//Route::get('/ajax/obtener/progreso/entidad/{id}', 'EncuestaController@buscarProgresoEntidad');


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
