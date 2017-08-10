<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class EntidadController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    

    public function getListaEntidades(){
        $entidades = \App\EntidadModel::all();
        $notificaciones = \App\ActividadModel::orderBy('created_at','desc')->get();
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
        $encuesta = \App\ProgresoEncuestaModel::where('entidad_id','=',$id)->get();
        $notificaciones = \App\ActividadModel::orderBy('created_at','desc')->get();
        $entidades = \App\EntidadModel::all();
        return view('admin.entidades.entidad_detalle', compact('entidad','titular','presidente','responsable','encuesta','notificaciones','entidades'));
    }
}
