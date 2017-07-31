@extends('admin/base-admin')

@section('contenedor')

<div class="row-fluid">
	<div class="row-fluid">
		<div class="col-md-12 subtitle text-center">
			<b>Módulo: {{$modulo->modulo}} {{$modulo->nombre_modulo}}</b>
		</div>
	</div>

	<div class="col-md-12">
		<table class="table table-condensed" >
			<thead>
				<tr>
					<th style="width: 150px;vertical-align: middle;">Módulo/</th>
					<th>
						<div class="row">
							<div class="col-md-8" style="padding-top: 0.4em">
								{{$modulo->modulo}} {{$modulo->nombre_modulo}}
							</div>
							<div class="col-md-4 text-right">
								<a href="{{url('/admin/modulos')}}" class="btn btn-warning btn-sm"><span class="glyphicon glyphicon-list"></span> Lista de Módulos</a>
								<a href="{{url('/admin/modulo/crear')}}" class="btn btn-warning btn-sm"><span class="glyphicon glyphicon-plus"></span> Crear Nuevo Módulo</a>
							</div>
						</div>
						
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>Detalle/</th>
					<td>
						<div class="row">
							<div class="col-md-7">
								<div>
									<b>Módulo:</b> {{$modulo->modulo}} {{$modulo->nombre_modulo}}
								</div>
								<div>
									<b>Slug:</b>  <a href="{{url('admin/modulo')}}/{{$modulo->slug}}/{{$modulo->id}}">{{$modulo->slug}}</a>
								</div>
								
								<div>
									<b>Creada:</b> {{$modulo->created_at}}
								</div>
								<div>
									<b>Modificada:</b> {{$modulo->updated_at}}
								</div>
							</div>
							<div class="col-md-5 text-right" style="margin-top: 1em">
								<button class="btn btn-default"> <span class="glyphicon glyphicon-edit"></span> Editar Módulo</button>
								<button class="btn btn-default"> <span class="glyphicon glyphicon-trash"></span> Eliminar Módulo</button>
							</div>
						</div>
						
						<hr>
						
						<div class="row">
							<div class="col-md-12">
								<table class="table table-condensed table-preguntas" id="lista-modulo-preguntas">
									<thead>
										<tr>
											<th colspan="5" class="text-center">
												Lista de Preguntas del Módulo
											</th>
										</tr>
										<tr>
											<th class="text-center">Nº</th>
											<th class="text-center">Título de la Pregunta</th>
											<th class="text-center">Ordén en Módulo</th>
											<th class="text-center">Ubicación en Módulo</th>
											
										</tr>
									</thead>
									<tbody>
										<?php $i=0; ?>
										@foreach($preguntas as $pregunta)
											@if($pregunta->modulo_id==$modulo->id)
												<tr>
													<td class="text-center">{{$i=$i+1}}</td>
													<td>
														<a href="{{url('admin/pregunta')}}/{{$pregunta->slug}}/{{$pregunta->id}}">{{$pregunta->titulo_pregunta}}</a>
													</td>
													<td class="text-center">{{$pregunta->orden}}</td>
													<td class="text-center">{{$pregunta->ubicacion}}</td>
													
												</tr>

											@endif
										@endforeach
									</tbody>
								</table>
							</div>
						</div>

					</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>

@endsection

@section('scripts')
	<script>
		$('#lista-modulo-preguntas').DataTable({
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
@endsection