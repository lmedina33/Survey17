<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PdtesFiltradosModel extends Model
{
    protected $table = "pdtes_filtrados";

    protected $fillable = [
    	'nro_documento',
    	'apellidos_nombres',
    	'correo',
    	'rol',
    	'codigo',
    	'nombre_entidad',
    	'proceso',
    	'cnig_nombre',
    	'cdpt_dpto',
    	'cprv_prov',
    	'cdst_distrit'
    ];
}

