<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class EncuestaController extends Controller
{
    public function index(){
    	$preguntas = \App\PreguntaModel::all();
    	$modulos = \App\ModuloModel::all();
    	$opciones = \App\OpcionModel::all();
    	return view('encuesta.index', compact('preguntas','modulos','opciones'));
    }
}
