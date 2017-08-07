<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PdteFiltradosController extends Controller
{
    public function obtener($dni){
    	$pdte = \App\PdtesFiltradosModel::where('nro_documento','=',$dni)->get();
    	
    	return $pdte;
    }

    public function guardarValidacion(Request $request){
    	\App\ValidacionModel::create([
    		'presidente_dni'=>$request['dni'],
    		'estado'=>$request['estado']
    		]);
        return $request['dni'];
    }

    public function buscarValidacion(Request $request){
    	$validado = \App\ValidacionModel::where('presidente_dni','=',$request['dni'])->where('estado','=','validado')->first();
    	return $validado;
    	//return $request['dni'];
    }
}
