<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TipoEncuestaController extends Controller
{
    public function crear(){
    	$notificaciones = \App\ActividadModel::orderBy('created_at','desc')->get();
    	$entidades = \App\EntidadModel::all();
    	return view('admin.encuesta.crear_tipo_encuesta', compact('notificaciones','entidades'));
    }

    public function guardar(Request $request){
    	\App\EncuestaModel::create([
    		'tipo_encuesta'=>$request['tipo_encuesta']
    		]);
    }
}
