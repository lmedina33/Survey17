<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ActividadController extends Controller
{
    public function getAllNewNotificaciones(){
    	$notificaciones = \App\ActividadModel::orderBy('id','DESC')->get();
    	$new=[];
    	$i=0;

    	foreach ($notificaciones as $notificacion) {
    		if($notificacion->estado=="false"){
    			$new[$i]=$notificacion;
    			$i=$i+1;
    		}
    	}
		return $new;
    }

    public function cambiarEstado(){
    	$notificaciones = \App\ActividadModel::all();

    	foreach ($notificaciones as $notificacion) {
    		if($notificacion->estado=="false"){
    			$notificacion->estado="true";
    			$notificacion->save();
    		}
    	}
		

    }
}
