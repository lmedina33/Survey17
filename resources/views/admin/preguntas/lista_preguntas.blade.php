@extends('admin/base-admin')

@section('contenedor')
<div class="row-fluid">
	<div class="row-fluid">
		<div class="col-md-12 subtitle text-center">
			<b>Lista de Preguntas</b>
		</div>
	</div>

	
		<div class="col-md-12 text-right" style="margin-bottom: 15px">
			<a href="{{url('/admin/pregunta/crear')}}" class="btn btn-warning btn-sm"><span class="glyphicon glyphicon-plus"></span> Crear Nueva Pregunta</a>
		</div>
	

	<div class="col-md-12">
		
		<table id="lista-preguntas" class="table table-condensed table-preguntas">
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
					<td>
						<a href="{{url('admin/pregunta')}}/{{$pregunta->slug}}/{{$pregunta->id}}">{{$pregunta->titulo_pregunta}}</a>
					</td>
					<td class="text-center">
						@foreach($modulos as $modulo)
							@if($pregunta->modulo_id==$modulo->id)
								<a href="{{url('admin/modulo')}}/{{$modulo->slug}}/{{$modulo->id}}">{{$modulo->modulo}} {{$modulo->nombre_modulo}}</a>
							@endif
						@endforeach
						
					</td>
					<td class="text-center">
					@if($pregunta->tipo_pregunta==1)
						Pregunta Cerrada
					@elseif($pregunta->tipo_pregunta==2)
						Pregunta Abierta
					@elseif($pregunta->tipo_pregunta==3)
						Pregunta con Opciones y Múltiple Elección/Prioridad
					@elseif($pregunta->tipo_pregunta==4)
						Pregunta con Opciones
					@elseif($pregunta->tipo_pregunta==5)
						Pregunta con Opciones y Múltiple Elección
					@elseif($pregunta->tipo_pregunta==6)
						Pregunta con Opciones/Llenar
					@endif
					</td>
					<td class="text-center">
						<div class="btn-group btn-group-xs" role="group" aria-label="...">
						  <!-- <button type="button" class="btn btn-default">Left</button> -->
						  <button type="button" class="btn btn-default btn-modificar" data-id-pmodificar="{{$pregunta->id}}" data-toggle="modal" data-target="#myModalModificar">
						  	<span class="glyphicon glyphicon-edit" ></span>
						  </button>
						  <button type="button" class="btn btn-default btn-borrar" data-id-peliminar="{{$pregunta->id}}">
						  	<span class="glyphicon glyphicon-trash" ></span>
						  </button>
						</div>
					</td>
				</tr>
				@endforeach
			</tbody>
		</table>

	</div>

</div>

<input type="hidden" id="hidep" value="0">

@include('admin/otros/modal/modificar')

@endsection

@section('scripts')
	<script>
		$('#lista-preguntas').DataTable({
			"language": {
	            "info": "Mostrando _START_ de _END_ de un Total de _TOTAL_ Preguntas",
	            "lengthMenu": "Mostrar _MENU_ Preguntas",
	            "search": "Buscar:",
	            "paginate": {
			        "first": "Primera",
			        "last": "Ultima",
			        "next": "Siguiente",
			        "previous": "Anterior"
			    },
	        }
		});
	</script>
	<script src="{{asset('js/app/preguntas/modificar.js')}}"></script>
@endsection