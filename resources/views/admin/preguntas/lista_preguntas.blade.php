@extends('admin/base-admin')

@section('contenedor')
<div class="row-fluid">
	<div class="row-fluid">
		<div class="col-md-12 subtitle text-center">
			<b>Lista de Preguntas</b>
		</div>
	</div>

	<div class="col-md-12">
		
		<table class="table table-condensed table-preguntas">
			<thead>
				<tr>
					<th class="text-center">Nº</th>
					<th class="text-center">Título de la Pregunta</th>
					<th class="text-center">Módulo</th>
					<th class="text-center">Tipo de Pregunta</th>
					<th class="text-center">Opciones</th>
				</tr>
			</thead>
			<tbody>
				<?php
					$i=0;
				?>

				@foreach($preguntas as $pregunta)
				<tr>
					<td class="text-center">{{$i=$i+1}}</td>
					<td><a href="{{url('admin/pregunta')}}/{{$pregunta->slug}}/{{$pregunta->id}}">{{$pregunta->titulo_pregunta}}</a></td>
					<td class="text-center">
						@foreach($modulos as $modulo)
							@if($pregunta->modulo_id==$modulo->id)
								{{$modulo->modulo}} {{$modulo->nombre_modulo}}
							@endif
						@endforeach
						
					</td>
					<td class="text-center">{{$pregunta->tipo_pregunta}}</td>
					<td class="text-center">
						<div class="btn-group btn-group-xs" role="group" aria-label="...">
						  <!-- <button type="button" class="btn btn-default">Left</button> -->
						  <button type="button" class="btn btn-default">
						  	<span class="glyphicon glyphicon-edit"></span>
						  </button>
						  <button type="button" class="btn btn-default">
						  	<span class="glyphicon glyphicon-trash"></span>
						  </button>
						</div>
					</td>
				</tr>
				@endforeach
			</tbody>
		</table>

	</div>

</div>
@endsection