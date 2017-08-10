<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AvanceEncuestaController extends Controller
{
    public function guardar(Request $request){
    	\App\AvanceEncuestaModel::create([
    		'entidad_id'=>$request['entidad'],
    		'modulo_avance'=>$request['modulo'],
    		'pregunta_avance'=>$request['pregunta']
    		]);
    }

    public function mostrarAvance($dni){
    	$presidente = \App\PresidenteModel::where('dni','=',$dni)->first();

    	if(isset($presidente)){
    		$avance = \App\AvanceEncuestaModel::where('entidad_id','=',$presidente['entidad_id'])->first();
    		if(isset($avance)){
    			return $avance;
    		}
    		else{
    			
    		}
    		
    	}	
    	else{
    		return 'nada de nadita';
    	}
    }

    public function buscarAvance($id){
        $avance = \App\AvanceEncuestaModel::where('entidad_id','=',$id)->first();
        return $avance;
    }

    public function modificarAvance(Request $request){
        $avance = \App\AvanceEncuestaModel::where('entidad_id','=',$request['entidad'])->first();
        $avance['modulo_avance'] = $request['modulo'];
        $avance->save();
    }
}
