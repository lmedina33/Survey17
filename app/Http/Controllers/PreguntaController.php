<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PreguntaController extends Controller
{
    public function crearPregunta(){
    	return view('admin.preguntas.crear_pregunta');
    }
}
