<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class EncuestaController extends Controller
{
    
    
    public function index($dni){
    	$preguntas = \App\PreguntaModel::all();
    	$modulos = \App\ModuloModel::all();
    	$opciones = \App\OpcionModel::all(); 
        $entidades = \App\EntidadModel::all();
        $validado = \App\ValidacionModel::where('presidente_dni','=',$dni)->first();
        //$pdte_filtrado = \App\PdtesFiltradosModel::where('nro_documento','=',$dni)->first(); 

        $presidente = \App\PresidenteModel::where('dni','=',$dni)->first();

        $pdte_filtrado = \App\PdtesFiltradosModel::where('nro_documento','=',$dni)->first();
        
        if(isset($presidente)){
            
            $progreso = \App\ProgresoEncuestaModel::where('entidad_id','=',$presidente['entidad_id'])->first();

            if(isset($progreso)){
                if($progreso['progreso']<1.0){
                    return view('encuesta.index', compact('preguntas','modulos','opciones','entidades','pdte_filtrado'));
                }
                else{
                    return view('encuesta.cien', compact('pdte_filtrado'));
                }
            }
            

        }
        else{
            if(isset($validado)){
                return view('encuesta.index', compact('preguntas','modulos','opciones','entidades','pdte_filtrado'));
            }
            else{
                return redirect('/encuesta/identificacion');
            }
        }

        

              
    	
    }

    public function pre(){
        return redirect('/encuesta/identificacion');
    }

    public function guardarProgreso(Request $request){
    	$encuesta = \App\ProgresoEncuestaModel::where('entidad_id','=',$request['id'])->get();
    	$encuesta[0]->progreso=$request['progreso'];
    	$encuesta[0]->save();
    }

    public function encuestaPorEntidad(){
    	$encuestas = \App\ProgresoEncuestaModel::all();
    	$entidades = \App\EntidadModel::all();
        $notificaciones = \App\ActividadModel::all();
    	return view('admin.encuesta.lista_progreso', compact('encuestas','entidades','notificaciones'));
    }

    public function modulosPreguntas(){
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

        return $preguntasPorModulo;
    }

    public function guardarEntidad(Request $request){
        \App\EntidadModel::create([
            'tipo_entidad'=>$request['cnig'],
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
            'nombre_presidente'=>$request['presidente'],
            'dni'=>$request['presidenteDNI']
            ]);

        \App\EncuestadoModel::create([
            'entidad_id'=>$entidad['id'],
            'nombre_encuestado'=>$request['encuestado'],
            'dni_encuestado'=>$request['dni']
            ]);

        \App\ProgresoEncuestaModel::create([
            'entidad_id'=>$entidad['id'],
            'progreso'=>$request['progreso']
            ]);

        return $entidad['id'];

    }

    public function buscarProgresoEntidad($id){
        $progreso = \App\ProgresoEncuestaModel::where('entidad_id','=',$id)->first();
        return $progreso;
    }

}
