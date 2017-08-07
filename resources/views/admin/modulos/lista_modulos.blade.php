@extends('admin/base-admin')

@section('contenedor')
<div class="row-fluid">
	<div class="row-fluid">
		<div class="col-md-12 subtitle text-center">
			<b>Lista de Módulos</b>
		</div>
	</div>

	<div class="col-md-12 text-right" style="margin-bottom: 15px">
			<a href="{{url('/admin/modulo/crear')}}" class="btn btn-warning btn-sm"><span class="glyphicon glyphicon-plus"></span> Crear Nuevo Módulo</a>
		</div>
	<div class="col-md-12">
		
		<table class="table table-condensed table-preguntas" id="lista-modulos">
			<thead>
				<tr>
					<th class="text-center">Nº</th>
					<th class="text-center">Módulo</th>
					<th class="text-center">Nombre del Módulo</th>
					<th class="text-center">Cantidad Preguntas</th>
					<th class="text-center">Opciones</th>
				</tr>
			</thead>
			<tbody>
				<?php
					$i=0;
				?>

				@foreach($modulos as $modulo)
				<tr>
					<td class="text-center">{{$i=$i+1}}</td>
					<td class="text-center">
						<a href="{{url('admin/modulo')}}/{{$modulo->slug}}/{{$modulo->id}}">		{{$modulo->modulo}}
						</a>
					</td>
					<td class="text-center">
						<a href="{{url('admin/modulo')}}/{{$modulo->slug}}/{{$modulo->id}}">		{{$modulo->nombre_modulo}}
						</a>
						
						
					</td>
					<td class="text-center">
						@foreach($preguntasPorModulo as $preguntaPorModulo)
							@if($preguntaPorModulo['id_modulo']==$modulo->id)
								{{$preguntaPorModulo['cantidad_preguntas']}}
							@endif
						@endforeach
					</td>
					
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

@section('scripts')
	<script>
		$('#lista-modulos').DataTable({
			"language": {
	            "info": "Mostrando _START_ de _END_ de un Total de _TOTAL_ Módulos",
	            "lengthMenu": "Mostrar _MENU_ Módulos",
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
@endsection