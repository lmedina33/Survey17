@extends('../base')

@section('contenedor')
	<br>
		<!-- Nav tabs -->
		  <ul class="nav nav-tabs" role="tablist" id="myTabs">
		  	<li role="presentation" class="active"><a href="#datos" aria-controls="datos" >Datos Generales</a></li>
		  	@foreach($modulos as $modulo)
		  		@if($modulo->id==1)
		    		<li role="presentation" class=""><a href="#{{$modulo->tab}}" aria-controls="{{$modulo->tab}}" >{{$modulo->modulo}}: {{$modulo->nombre_modulo}}</a></li>
				@else
					<li role="presentation"><a href="#{{$modulo->tab}}" aria-controls="{{$modulo->tab}}" >{{$modulo->modulo}}: {{$modulo->nombre_modulo}}</a></li>
		    	@endif
		    @endforeach
		    
		  </ul>

		<!-- Tab panes -->
		  <div class="tab-content">
		  	<div role="tabpanel" class="tab-pane active" id="datos">
		  		<br>
		  		<div class="form-group">
				    <label class="label-form">Nombre de la Entidad *</label>
				    <label class="label-ayuda"><span class="glyphicon glyphicon-question-sign"></span></label>
				    <input type="text" class="form-control" id="entidad" placeholder="Ingresar Nombre de la Entidad">
				  </div>


				 <div class="row">
				 	<div class="col-md-4">
				 		<div class="form-group">
						    <label for="exampleInputPassword1">Departamento *</label>

						    <select name="" id="departamento" class="form-control"></select>
						  </div>
				 	</div>
				 	<div class="col-md-4">
				 		<div class="form-group">
						    <label for="exampleInputPassword1">Provincia *</label>
						    <select name="" id="provincia" class="form-control"></select>
						  </div>
				 	</div>
				 	<div class="col-md-4">
				 		<div class="form-group">
						    <label for="exampleInputPassword1">Distrito *</label>
						    <select name="" id="distrito" class="form-control"></select>
						  </div>
				 	</div>
				 	
				 </div>
				  
				  <div class="form-group">
				    
				    <label class="label-form">Nombre del Titular de la Entidad *</label>
				    <label class="label-ayuda"><span class="glyphicon glyphicon-question-sign"></span></label>
				    <input type="text" class="form-control" id="titular" placeholder="Ingresar Nombre del Titular de la Entidad">
				  </div>
				  <div class="form-group">
				   
				    <label class="label-form">Nombre del Presidente del Comité de Control Interno *</label>
				    <label class="label-ayuda"><span class="glyphicon glyphicon-question-sign"></span></label>
				    <input type="text" class="form-control" id="presidente" placeholder="Ingresar Nombre del Presidente del Comité de Control Interno">
				  </div>
				  <div class="form-group">
				    
				    <label class="label-form">Nombre del responsable de comunicación o líder de equipo (encargado de la función de comunicación u difusión) *</label>
				    <label class="label-ayuda"><span class="glyphicon glyphicon-question-sign"></span></label>
				    <input type="text" class="form-control" id="encuestado" placeholder="Ingresar Nombre del responsable de comunicación o líder de equipo (encargado de la función de comunicación u difusión)">
				  </div>

				  <input type="hidden" name="_token"  id="token_entidad" value="{{ csrf_token() }}">
				  
				  <div class="col-md-12 text-center">
				  	<div class="loading">
				  		<img src="{{asset('images/loading.gif')}}" alt="">
				  	</div>
				  	<div class="mensaje-enviado">
				  		<b></b>
				  	</div>
				  	<button type="submit" class="btn btn-default" id="guardar_datos">Guardar Datos Generales</button>
				  	<button type="submit" class="btn btn-warning" id="next">Siguiente</button>

				  </div>
				  
		  	</div>
		  	@foreach($modulos as $modulo)
		  		@if($modulo->id==1)
					<div role="tabpanel" class="tab-pane" id="{{$modulo->tab}}">
						<div class="preg">
							@foreach($preguntas as $pregunta)
								@if($pregunta->modulo_id==$modulo->id)
									@if($pregunta->id==1)
										<div class="pregunta-activa text-center">{{$pregunta->titulo_pregunta}}</div>
										
										<div class="row">
											<div class="col-md-8 col-md-offset-2">
												<table class="table table-condensed">
													<thead>
														<tr class="thead-q">
															@foreach($opciones as $opcion)
																@if($opcion->pregunta_id==$pregunta->id)
																	@if($opcion->opcion1!="false")
																		<th class="text-center">
																			a)
																		</th>
																	@else

																	@endif

																	@if($opcion->opcion2!="false")
																		<th class="text-center">
																			b)
																		</th>
																	@else

																	@endif

																	@if($opcion->opcion3!="false")
																		<th class="text-center">
																			c)
																		</th>
																	@else

																	@endif

																	@if($opcion->opcion4!="false")
																		<th class="text-center">
																			d)
																		</th>
																	@else

																	@endif

																	@if($opcion->opcion5!="false")
																		<th class="text-center">
																			e)
																		</th>
																	@else

																	@endif
																	
																@endif
															@endforeach
															
														</tr>
													</thead>
													<tbody>
														<tr class="td-q">
															@foreach($opciones as $opcion)
																@if($opcion->pregunta_id==$pregunta->id)
																	@if($opcion->opcion1!="false")
																		<td class="text-center">
																			<div class="checkbox">
																			    <label>
																			      <input type="checkbox"> <b>{{$opcion->opcion1}}</b>
																			    </label>
																			</div>
																		</td>
																	@else

																	@endif

																	@if($opcion->opcion2!="false")
																		<td class="text-center">
																			<div class="checkbox">
																			    <label>
																			      <input type="checkbox"> <b>{{$opcion->opcion2}}</b>
																			    </label>
																			</div>
																		</td>
																	@else

																	@endif

																	@if($opcion->opcion3!="false")
																		<td class="text-center">
																			<div class="checkbox">
																			    <label>
																			      <input type="checkbox"> <b>{{$opcion->opcion3}}</b>
																			    </label>
																			</div>
																		</td>
																	@else

																	@endif

																	@if($opcion->opcion4!="false")
																		<td class="text-center">
																			<div class="checkbox">
																			    <label>
																			      <input type="checkbox"> <b>{{$opcion->opcion4}}</b>
																			    </label>
																			</div>
																		</td>
																	@else

																	@endif
																	
																	@if($opcion->opcion5!="false")
																		<td class="text-center">
																			<div class="checkbox">
																			    <label>
																			      <input type="checkbox"> <b>{{$opcion->opcion1}}</b>
																			    </label>
																			</div>
																		</td>
																	@else

																	@endif
																@endif
															@endforeach
															
															
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<br>

										<div class="text-center">
											<button class="btn btn-default" id="guardar_rpta">
												Guardar Respuesta
											</button>
											<button type="submit" class="btn btn-warning" id="next">Siguiente Pregunta</button>
										</div>
										<br>
										<br>
										
							    </div>
									@else
										<div class="text-center" style="font-size: .9em;color:#b6b6b6">			{{$pregunta->titulo_pregunta}}
										</div>
									@endif
								@endif
							@endforeach
						
					</div>

		  		@endif
		  		@if($modulo->id==2)
					<div role="tabpanel" class="tab-pane" id="{{$modulo->tab}}">
						
							@foreach($preguntas as $pregunta)
								@if($pregunta->modulo_id==$modulo->id)
									{{$pregunta->titulo_pregunta}}
								@endif
							@endforeach
						
					</div>
		  		@endif
		  		@if($modulo->id==3)
					<div role="tabpanel" class="tab-pane" id="{{$modulo->tab}}">
						
							@foreach($preguntas as $pregunta)
								@if($pregunta->modulo_id==$modulo->id)
									{{$pregunta->titulo_pregunta}}
								@endif
							@endforeach
						
					</div>
		  		@endif
		  		@if($modulo->id==4)
					<div role="tabpanel" class="tab-pane" id="{{$modulo->tab}}">
						
							@foreach($preguntas as $pregunta)
								@if($pregunta->modulo_id==$modulo->id)
									{{$pregunta->titulo_pregunta}}
								@endif
							@endforeach
						
					</div>
		  		@endif
		  	@endforeach
		    
		    
		    
		</div>
@endsection

@section('scripts')
	<script>
		$.ajax({
			url:'{{asset("js/json/departamentos.json")}}',
			type: 'GET',
			dataType: 'JSON',
			success: function(data){
				
				for(var i=0; i<data.length; i++){
					$('#departamento').append('<option value="'+data[i]['id_ubigeo']+'">'+data[i]['nombre_ubigeo']+'</option>')
				}

				$('#departamento').change(function(){
					var id_ubigeo = $(this).val();
					$('#provincia').html('');
					$.ajax({
						url:'{{url("js/json/provincias.json")}}',
						type:'GET',
						dataType: 'JSON',
						success: function(data){
							
							for(var i=0; i<data[id_ubigeo].length; i++){
								$('#provincia').append('<option value="'+data[id_ubigeo][i]['id_ubigeo']+'">'+data[id_ubigeo][i]['nombre_ubigeo']+'</option>');
							}

							$('#provincia').change(function(){
								var id_ubigeo_prov = $(this).val();
								$('#distrito').html('');
								$.ajax({
									url:'{{asset("js/json/distritos.json")}}',
									type:'GET',
									dataType:'JSON',
									success: function(data){
										for(var i=0; i<data[id_ubigeo_prov].length; i++){
											
											$('#distrito').append('<option value="'+data[id_ubigeo_prov][i]['nombre_ubigeo']+'">'+data[id_ubigeo_prov][i]['nombre_ubigeo']+'</option>');
										}
									}
								});
							});
						}
					});
				})

			}
		});
	</script>

	<script>
		var next = "0";

		$('#guardar_datos').click(function(){
			var entidad = $('#entidad').val();
			var departamento = $('#departamento').val();
			var provincia = $('#provincia').val();
			var distrito = $('#distrito').val();
			var titular = $('#titular').val();
			var presidente = $('#presidente').val();
			var encuestado = $('#encuestado').val();

			

			$.ajax({
				url:'{{url("ajax/guardar/datos_generales")}}',
				data:{
					entidad: entidad,
					departamento: departamento,
					provincia: provincia,
					distrito: distrito,
					titular: titular,
					presidente: presidente,
					encuestado: encuestado
				},
				headers: {'X_CSRF_TOKEN': $('#token_entidad').val()},
				type: 'POST',
				beforeSend: function(){
					$('.loading').css({'display':'block'});
				},
				success: function(data){
					$('#entidad').val('');
					$('#titular').val('');
					$('#presidente').val('');
					$('#encuestado').val('');

					$('#entidad').attr('disabled','disabled');
					$('#titular').attr('disabled','disabled');
					$('#presidente').attr('disabled','disabled');
					$('#encuestado').attr('disabled','disabled');
					$('#departamento').attr('disabled','disabled');
					$('#provincia').attr('disabled','disabled');
					$('#distrito').attr('disabled','disabled');


					$('.loading').css({'display':'none'});
					$('.mensaje-enviado>b').html('<span class="glyphicon glyphicon-thumbs-up"></span> ¡Los Datos han sido Guardados Correctamente!');
					
					next = data;

					
				}
			});

			


		});

		$('#next').click(function(){
			if(next=="1"){
				$('#myTabs a[href="#modulo1"]').tab('show');
			}
			if(next=="0"){
				$('.mensaje-enviado>b').html('<span class="glyphicon glyphicon-alert"></span> ¡Por Favor, antes de pasar a la Encuesta, debes llenar el Formulario!');
				setTimeout(function(){
					$('.mensaje-enviado>b').html('');
				}, 2000);
			}
		});

		$('#guardar_rpta').click(function(){
			$('.preg').fadeOut();
		});


	</script>
@endsection