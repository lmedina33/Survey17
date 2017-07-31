<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ModuloModel extends Model
{
    protected $table = "modulos";

    protected $fillable = [
    	'modulo',
    	'nombre_modulo',
    	'tab',
    	'slug'
    ];
}
