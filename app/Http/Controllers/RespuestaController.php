<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class RespuestaController extends Controller
{
    public function guardar($id, Request $request){
    	
    	\App\RespuestaModel::create([
    		'pregunta_id'=>$id,
    		'entidad_id'=>$request['entidad'],
    		'rpta'=>$request['respuesta'],
    		'indique_obs'=>''
    		]);
    }
}
