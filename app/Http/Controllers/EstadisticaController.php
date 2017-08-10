<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class EstadisticaController extends Controller
{
    public function index(){
    	$notificaciones = \App\ActividadModel::orderBy('created_at','desc')->get();
        $entidades = \App\EntidadModel::all();
    	return view('admin.estadistica.index', compact('notificaciones','entidades'));
    }
}
