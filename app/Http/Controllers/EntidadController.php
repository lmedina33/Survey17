<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class EntidadController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function guardarEntidad(Request $request){
    	\App\EntidadModel::create([
    		'nombre_entidad'=>$request['entidad'],
            'slug'=>str_slug($request['entidad']),
    		'departamento'=>$request['departamento'],
    		'provincia'=>$request['provincia'],
    		'distrito'=>$request['distrito']
    		]);

    	$entidad = \App\EntidadModel::all()->last();

        \App\ActividadModel::create([
            'tipo_actividad'=>'Entidad',
            'id_actividad'=>$entidad['id'],
            'estado'=>'false'
            ]);

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

        \App\EncuestaModel::create([
            'entidad_id'=>$entidad['id'],
            'progreso'=>$request['progreso']
            ]);

        return $entidad['id'];

    }

    public function getListaEntidades(){
        $entidades = \App\EntidadModel::all();
        $notificaciones = \App\ActividadModel::all();
        return view('admin.entidades.lista_entidades', compact('entidades','notificaciones'));
    }

    public function getAjaxListaEntidades(){
        $entidades = \App\EntidadModel::all();
        return $entidades;
    }

    public function verEntidad($slug, $id){
        $entidad = \App\EntidadModel::find($id);
        $titular = \App\TitularModel::where('entidad_id','=',$id)->get();
        $presidente = \App\PresidenteModel::where('entidad_id','=',$id)->get();
        $responsable = \App\EncuestadoModel::where('entidad_id','=',$id)->get();
        $encuesta = \App\EncuestaModel::where('entidad_id','=',$id)->get();
        $notificaciones = \App\ActividadModel::all();
        $entidades = \App\EntidadModel::all();
        return view('admin.entidades.entidad_detalle', compact('entidad','titular','presidente','responsable','encuesta','notificaciones','entidades'));
    }
}
