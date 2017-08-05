<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UsuarioController extends Controller
{
    public function usuarios(){
    	$usuarios = \App\User::all();
    	$notificaciones = \App\ActividadModel::all();
    	$entidades = \App\EntidadModel::all();
    	return view('admin.usuarios.lista_usuarios', compact('usuarios','notificaciones','entidades'));
    }
}
