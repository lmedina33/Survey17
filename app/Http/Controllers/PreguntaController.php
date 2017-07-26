<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PreguntaController extends Controller
{
    public function crearPregunta(){
    	$preguntas = \App\PreguntaModel::all();
    	return view('admin.preguntas.crear_pregunta', compact('preguntas'));
    }

    public function guardarPregunta(Request $request){
    	if($request['tipo']=='1'){
    		\App\PreguntaModel::create([
	    		'titulo_pregunta'=>$request['titulo'],
	    		'tipo_pregunta'=>$request['tipo']
	    		]);
    	}
    	


    }
}
