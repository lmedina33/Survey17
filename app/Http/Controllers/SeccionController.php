<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SeccionController extends Controller
{
    public function crear(){
    	$notificaciones = \App\ActividadModel::all();
        $tipoencuestas = \App\EncuestaModel::all();
    	return view('admin.secciones.crear_seccion', compact('notificaciones','tipoencuestas'));
    }

    public function guardar(Request $request){
    	\App\SeccionModel::create([
    		'nombre_seccion'=>$request['nombre_seccion'],
    		'slug'=>str_slug($request['nombre_seccion'],"-"),
    		'tiempo_inicio'=>$request['fecha_inicio'],
    		'tiempo_fin'=>$request['fecha_fin'],
            'encuesta_id'=>$request['tipo_encuesta']
    		]);
    }

    public function getListaSecciones(){
    	$notificaciones = \App\ActividadModel::all();
    	$secciones = \App\SeccionModel::all();
    	return view('admin.secciones.lista_secciones', compact('secciones','notificaciones'));
    }
}
