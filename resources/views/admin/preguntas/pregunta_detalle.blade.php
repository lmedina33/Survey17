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
					<th style="width: 150px;vertical-align: middle;">Título de Pregunta/</th>
					<th>
						<div class="row">
							<div class="col-md-8" style="padding-top: 0.4em">
								{{$pregunta->titulo_pregunta}}
							</div>
							<div class="col-md-4 text-right">
								<a href="{{url('/admin/preguntas')}}" class="btn btn-warning btn-sm"><span class="glyphicon glyphicon-list"></span> Lista Preguntas</a>
								<a href="{{url('/admin/pregunta/crear')}}" class="btn btn-warning btn-sm"><span class="glyphicon glyphicon-plus"></span> Crear Nueva Pregunta</a>
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
									<b>Tipo de Pregunta:</b> {{$pregunta->tipo_pregunta}}
								</div>
								<div>
									<b>Slug:</b>  <a href="{{url('admin/pregunta')}}/{{$pregunta->slug}}/{{$pregunta->id}}">{{$pregunta->slug}}</a>
								</div>
								<div>
									<b>Módulo:</b>
									@foreach($modulos as $modulo)
										@if($modulo->id==$pregunta->modulo_id)
											<a href="{{url('admin/modulo')}}/{{$modulo->slug}}/{{$modulo->id}}">{{$modulo->modulo}} {{$modulo->nombre_modulo}}</a>
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
								<button class="btn btn-default btn-modificar" data-id-pmodificar="{{$pregunta->id}}" data-toggle="modal" data-target="#myModalModificar"> 
									<span class="glyphicon glyphicon-edit"></span> Editar Pregunta
								</button>
								
						  	
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

										@if(is_null($opcion->opcion1))

										@else
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
										@endif

										@if(is_null($opcion->opcion2))

										@else
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
										@endif

										@if(is_null($opcion->opcion3))

										@else
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

										@if(is_null($opcion->opcion4))

										@else
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

										@if(is_null($opcion->opcion5))

										@else
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

											<input type="hidden" id="hidep" value="1">

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

@include('admin/otros/modal/modificar')

@endsection

@section('scripts')
	<script src="{{asset('js/app/preguntas/modificar.js')}}"></script>
@endsection