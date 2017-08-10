<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ModuloController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function getListaModulos(){
        $notificaciones = \App\ActividadModel::orderBy('created_at','desc')->get();
        $entidades = \App\EntidadModel::all();
    	$modulos = \App\ModuloModel::all();
    	$preguntas = \App\PreguntaModel::all();
        $preguntasPorModulo = [];
        $i=0;
        $contador = 0;

        foreach ($modulos as $modulo) {
            

            foreach ($preguntas as $pregunta) {
                if($pregunta->modulo_id==$modulo->id){
                    $contador=$contador+1;
                }
            }

            $preguntasPorModulo[$i] = [
                'id_modulo'=>$modulo->id,
                'cantidad_preguntas'=>$contador
                ];

            $i=$i+1;
            $contador=0;

        }

        // return $preguntasPorModulo;
        // return $preguntas;

    	return view('admin.modulos.lista_modulos', compact('modulos','preguntas','preguntasPorModulo','notificaciones','entidades'));
    }

    public function indexModulo(){
        $notificaciones = \App\ActividadModel::orderBy('created_at','desc')->get();
        $entidades = \App\EntidadModel::all();
        $secciones = \App\SeccionModel::all();
    	return view('admin.modulos.crear_modulo', compact('notificaciones','entidades','secciones'));
    }

    public function guardarModulo(Request $request){
    	\App\ModuloModel::create([
            'seccion_id'=>$request['seccion'],
    		'modulo'=>$request['modulo'],
    		'nombre_modulo'=>$request['nombre_modulo'],
    		'tab'=>$request['tab'],
            'slug'=>str_slug($request['modulo']." ".$request['nombre_modulo'],"-")
    		]);
    	
    }

    public function verModulo($slug, $id){
        $modulo = \App\ModuloModel::find($id);
        $preguntas = \App\PreguntaModel::all();
        $notificaciones = \App\ActividadModel::orderBy('created_at','desc')->get();
        $entidades = \App\EntidadModel::all();
        return view('admin.modulos.modulo_detalle', compact('modulo','preguntas','notificaciones','entidades'));
    }

    
}
