<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class EncuestaController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index(){
    	$preguntas = \App\PreguntaModel::all();
    	$modulos = \App\ModuloModel::all();
    	$opciones = \App\OpcionModel::all();
        $notificaciones = \App\ActividadModel::all();
        $entidades = \App\EntidadModel::all();
    	return view('encuesta.index', compact('preguntas','modulos','opciones','notificaciones','entidades'));
    }

    public function guardarProgreso(Request $request){
    	$encuesta = \App\EncuestaModel::where('entidad_id','=',$request['id'])->get();
    	$encuesta[0]->progreso=$request['progreso'];
    	$encuesta[0]->save();
    }

    public function encuestaPorEntidad(){
    	$encuestas = \App\EncuestaModel::all();
    	$entidades = \App\EntidadModel::all();
        $notificaciones = \App\ActividadModel::all();
    	return view('admin.encuesta.lista_progreso', compact('encuestas','entidades','notificaciones'));
    }
}
