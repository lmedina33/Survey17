<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OpcionModel extends Model
{
    protected $table = "opciones";

    protected $fillable = [
    	'pregunta_id',
    	'opcion1',
    	'opcion2',
    	'opcion3',
    	'opcion4',
    	'opcion5',
    	'opcion6'
    ];
}


