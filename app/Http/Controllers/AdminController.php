<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;



class AdminController extends Controller
{
    public function index(){
    	
    	if (Auth::check()) {
    		$notificaciones = \App\ActividadModel::orderBy('created_at','desc')->get();
    		$entidades = \App\EntidadModel::all();
		    return view('admin.admin', compact('notificaciones','entidades'));
		}
		else{
			return redirect('login');
		}
    }

}
