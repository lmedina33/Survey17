<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TitularModel extends Model
{
    protected $table = "titulares";

    protected $fillable = [
    	'entidad_id',
    	'nombre_titular'
    ];
}
