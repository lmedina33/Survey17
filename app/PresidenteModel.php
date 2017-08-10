<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PresidenteModel extends Model
{
    protected $table = "presidentes";
    
    protected $fillable = [
    	'entidad_id',
    	'nombre_presidente',
    	'dni'
    ];
}
