<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PreguntaController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function crearPregunta(){
    	$preguntas = \App\PreguntaModel::all();
        $modulos = \App\ModuloModel::all();
        $notificaciones = \App\ActividadModel::orderBy('created_at','desc')->get();
        $entidades = \App\EntidadModel::all();
    	return view('admin.preguntas.crear_pregunta', compact('preguntas','modulos','notificaciones','entidades'));
    }

    public function guardarPregunta(Request $request){
    	if($request['tipo']=='4'||$request['tipo']=='1'||$request['tipo']=='3'||$request['tipo']=='5'||$request['tipo']=='6'||$request['tipo']=='2'){
    		\App\PreguntaModel::create([
                'modulo_id'=>$request['modulo_id'],
	    		'titulo_pregunta'=>$request['titulo'],
	    		'tipo_pregunta'=>$request['tipo'],
	    		'slug'=>str_slug($request['titulo'], "-"),
                'orden'=>$request['orden'],
                'ubicacion'=>$request['ubicacion']
	    		]);

    		$user = \App\PreguntaModel::all()->last();

    		\App\OpcionModel::create([
    			'pregunta_id'=>$user['id'],
    			'opcion1'=>$request['opcion1'],
    			'opcion2'=>$request['opcion2'],
    			'opcion3'=>$request['opcion3'],
    			'opcion4'=>$request['opcion4'],
    			'opcion5'=>$request['opcion5'],
                'opcion6'=>$request['opcion6']
    			]);

            //return view('admin.preguntas.lista_preguntas');
    	}


    }

    public function preModificar($id){
        $pregunta = \App\PreguntaModel::find($id);
        return $pregunta;
    }
    public function modificarPregunta(Request $request, $id){
        $pregunta = \App\PreguntaModel::find($id);
        $pregunta['modulo_id']= $request['modulo'];
        $pregunta['titulo_pregunta']= $request['titulo'];
        $pregunta['slug']= str_slug($request['titulo'],"-");
        $pregunta['orden']= $request['orden'];
        $pregunta['ubicacion']= $request['ubicacion'];
        $pregunta->save();

    }

    public function getListaPreguntas(){
    	$preguntas = \App\PreguntaModel::all();
        $modulos = \App\ModuloModel::all();
        $notificaciones = \App\ActividadModel::orderBy('created_at','desc')->get();
        $entidades = \App\EntidadModel::all();
    	return view('admin.preguntas.lista_preguntas', compact('preguntas','modulos','notificaciones','entidades'));
    }

    public function verPregunta($slug, $id){
    	$pregunta = \App\PreguntaModel::find($id);
    	$opciones = \App\OpcionModel::where('pregunta_id','=',$id)->get();
        $modulos = \App\ModuloModel::all();
        $notificaciones = \App\ActividadModel::orderBy('created_at','desc')->get(); 
        $entidades = \App\EntidadModel::all();   	
        return view('admin.preguntas.pregunta_detalle', compact('pregunta','opciones','modulos','notificaciones','entidades'));
    }

    public function obtenerOrden(Request $request){
        $preguntas = \App\PreguntaModel::where('modulo_id','=',$request['id'])->get();
        return $preguntas;
    }

}
