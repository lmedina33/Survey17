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
}
