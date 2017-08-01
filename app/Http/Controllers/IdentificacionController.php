<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class IdentificacionController extends Controller
{
    public function validar(){
    	return view('encuesta.identificacion');
    }
}
