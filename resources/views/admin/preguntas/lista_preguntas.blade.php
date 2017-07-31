@extends('admin/base-admin')

@section('contenedor')
<div class="row-fluid">
	<div class="row-fluid">
		<div class="col-md-12 subtitle text-center">
			<b>Lista de Preguntas</b>
		</div>
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
					<td class="text-center">{{$pregunta->tipo_pregunta}}</td>
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
	<script>

		$('.btn-modificar').click(function(){
			var id_pregunta = $(this).attr('data-id-pmodificar');

			/*Reseteando los datos en el Modal*/
			$('#titulo-self-modal').text('');
			$('#titulo-pregunta-modificar').val('');
			$('#orden-pregunta-modificar').val('');
			$('#ubicacion-pregunta-modificar').val('');

			$.ajax({
				url:'{{url("ajax/obtener/pregunta")}}/'+id_pregunta,
				type:'GET',
				success: function(data){
					/*Colocando los datos en el Modal*/

					$('#titulo-self-modal').text(data['titulo_pregunta']);
					$('#titulo-pregunta-modificar').val(data['titulo_pregunta']);
					$('#modulo-pregunta-modificar').val(data['modulo_id']);
					$('#orden-pregunta-modificar').val(data['orden']);
					$('#ubicacion-pregunta-modificar').val(data['ubicacion']);
				}

			})
			
		});
	</script>
@endsection