<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ModuloController extends Controller
{
    public function getListaModulos(){
    	$modulos = \App\ModuloModel::all();
    	$preguntas = \App\PreguntaModel::all();
    	return view('admin.modulos.lista_modulos', compact('modulos','preguntas'));
    }

    public function indexModulo(){
    	return view('admin.modulos.crear_modulo');
    }

    public function guardarModulo(Request $request){
    	\App\ModuloModel::create([
    		'modulo'=>$request['modulo'],
    		'nombre_modulo'=>$request['nombre_modulo'],
    		'tab'=>$request['tab']
    		]);
    	
    }
}
