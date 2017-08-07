<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TipoEncuestaController extends Controller
{
    public function crear(){
    	$notificaciones = \App\ActividadModel::all();
    	return view('admin.encuesta.crear_tipo_encuesta', compact('notificaciones'));
    }

    public function guardar(Request $request){
    	\App\EncuestaModel::create([
    		'tipo_encuesta'=>$request['tipo_encuesta']
    		]);
    }
}
