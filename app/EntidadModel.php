<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EntidadModel extends Model
{
    protected $table = "entidades";

    protected $fillable = [
    	'nombre_entidad',
    	'slug',
    	'departamento',
    	'provincia',
    	'distrito'
    ];
}
