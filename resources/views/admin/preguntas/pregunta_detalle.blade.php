@extends('admin/base-admin')

@section('contenedor')

<div class="row-fluid">
	<div class="row-fluid">
		<div class="col-md-12 subtitle text-center">
			<b>Pregunta: {{$pregunta->titulo_pregunta}}</b>
		</div>
	</div>

	<div class="col-md-12">
		<table class="table table-condensed">
			<thead>
				<tr>
					<th style="width: 150px">Título de Pregunta/</th>
					<th>{{$pregunta->titulo_pregunta}}</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>Detalle/</th>
					<td>
						<div class="row">
							<div class="col-md-7">
								<div>
									<b>Tipo de Pregunta:</b> {{$pregunta->tipo_pregunta}}
								</div>
								<div>
									<b>Slug:</b>  <a href="{{url('admin/pregunta')}}/{{$pregunta->slug}}/{{$pregunta->id}}">{{$pregunta->slug}}</a>
								</div>
								<div>
									<b>Módulo:</b>
									@foreach($modulos as $modulo)
										@if($modulo->id==$pregunta->modulo_id)
											{{$modulo->modulo}} {{$modulo->nombre_modulo}}
										@endif
									@endforeach
								</div>
								<div>
									<b>Órden en Módulo:</b> {{$pregunta->orden}}
								</div>
								<div>
									<b>Ubicación en Módulo:</b> {{$pregunta->ubicacion}}
								</div>
								<div>
									<b>Creada:</b> {{$pregunta->created_at}}
								</div>
								<div>
									<b>Modificada:</b> {{$pregunta->updated_at}}
								</div>
							</div>
							<div class="col-md-5 text-right" style="margin-top: 1em">
								<button class="btn btn-default"> <span class="glyphicon glyphicon-edit"></span> Editar Pregunta</button>
								<button class="btn btn-default"> <span class="glyphicon glyphicon-trash"></span> Eliminar Pregunta</button>
							</div>
						</div>
						
						<div class="row">
							<div class="col-md-12">
								<br>
								<table class="table table-condensed table-preguntas">
									<thead>
										<tr>
											<th class="text-center" colspan="5">
												Opciones de la Pregunta
											</th>
										</tr>
									</thead>
									<tbody>
										
										@foreach($opciones as $opcion)
										<tr>
											<th class="text-center">
												a)
											</th>
											<td>
												{{$opcion->opcion1}}
											</td>
											<td class="text-center">
												<b>Creada:</b> {{$opcion->created_at}}
											</td>
											<td class="text-center">
												<b>Modificada:</b> {{$opcion->updated_at}}
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
										<tr>
											<th class="text-center">
												b)
											</th>
											<td>
												{{$opcion->opcion2}}
											</td>
											<td class="text-center">
												<b>Creada:</b> {{$opcion->created_at}}
											</td>
											<td class="text-center">
												<b>Modificada:</b> {{$opcion->updated_at}}
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

										@if($opcion->opcion3!="false")
										<tr>
											<th class="text-center">
												c)
											</th>
											<td>
												{{$opcion->opcion3}}
											</td>
											<td class="text-center">
												<b>Creada:</b> {{$opcion->created_at}}
											</td>
											<td class="text-center">
												<b>Modificada:</b> {{$opcion->updated_at}}
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
										@endif

										@if($opcion->opcion4!="false")
										<tr>
											<th class="text-center">
												d)
											</th>
											<td>
												{{$opcion->opcion4}}
											</td>
											<td class="text-center">
												<b>Creada:</b> {{$opcion->created_at}}
											</td>
											<td class="text-center">
												<b>Modificada:</b> {{$opcion->updated_at}}
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
										@endif

										@if($opcion->opcion5!="false")
										<tr>
											<th class="text-center">
												e)
											</th>
											<td>
												{{$opcion->opcion5}}
											</td>
											<td class="text-center">
												<b>Creada:</b> {{$opcion->created_at}}
											</td>
											<td class="text-center">
												<b>Modificada:</b> {{$opcion->updated_at}}
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