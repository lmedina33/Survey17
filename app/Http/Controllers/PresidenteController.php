<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PresidenteController extends Controller
{
    public function buscarPresidente($dni){
    	$presidente = \App\PresidenteModel::where('dni','=',$dni)->first();
    	return $presidente;
    }
}
