<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class EntidadController extends Controller
{
    public function guardarEntidad(Request $request){
    	\App\EntidadModel::create([
    		'nombre_entidad'=>$request['entidad'],
            'slug'=>str_slug($request['entidad']),
    		'departamento'=>$request['departamento'],
    		'provincia'=>$request['provincia'],
    		'distrito'=>$request['distrito']
    		]);

    	$entidad = \App\EntidadModel::all()->last();

    	\App\TitularModel::create([
    		'entidad_id'=>$entidad['id'],
    		'nombre_titular'=>$request['titular']
    		]);

        \App\PresidenteModel::create([
            'entidad_id'=>$entidad['id'],
            'nombre_presidente'=>$request['presidente']
            ]);

        \App\EncuestadoModel::create([
            'entidad_id'=>$entidad['id'],
            'nombre_encuestado'=>$request['encuestado']
            ]);

        return '1';

    }

    public function getListaEntidades(){
        $entidades = \App\EntidadModel::all();
        return view('admin.entidades.lista_entidades', compact('entidades'));
    }

    public function verEntidad($slug, $id){
        $entidad = \App\EntidadModel::find($id);
        return view('admin.entidades.entidad_detalle', compact('entidad'));
    }
}
