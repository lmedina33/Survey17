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

					@include('encuesta.otros.encuesta_preguntas')

		  		@endif
		  		@if($modulo->id==2)

					@include('encuesta.otros.encuesta_preguntas')

		  		@endif
		  		@if($modulo->id==3)

					@include('encuesta.otros.encuesta_preguntas')

		  		@endif
		  		@if($modulo->id==4)
					
					@include('encuesta.otros.encuesta_preguntas')

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

			var validate = "";

			if(entidad==""||titular==""||presidente==""||encuestado==""||departamento==""||provincia==""||distrito==""){
				validate = "false";

				$('.mensaje-enviado>b').html('<span class="glyphicon glyphicon-alert"></span> ¡Por Favor, Llena todos los datos del Formulario!');
				$('.mensaje-enviado>b').css({'color':'red'});
				setTimeout(function(){
					$('.mensaje-enviado>b').html('');
				}, 2000);

			}
			if(entidad!=""&&titular!=""&&presidente!=""&&encuestado!=""&&departamento!=""&&provincia!=""&&distrito!=""){
				validate = "true";

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
						$('.mensaje-enviado>b').css({'color':'#34495e'});

						setTimeout(function(){
							$('.mensaje-enviado>b').html('');
						}, 3000);
						
						next = data;

						
					}
				});

			}

		});

		$('#next').click(function(){
			if(next=="1"){
				$('#myTabs a[href="#modulo1"]').tab('show');
			}
			if(next=="0"){
				$('.mensaje-enviado>b').html('<span class="glyphicon glyphicon-alert"></span> ¡Por Favor, antes de pasar a la Encuesta, debes llenar y guardar correctamente los Datos del Formulario!');
				$('.mensaje-enviado>b').css({'color':'red'});
				setTimeout(function(){
					$('.mensaje-enviado>b').html('');
				}, 4000);
			}
		});

		
		
		var guardado=1;

		

		$('.guardar_rpta').click(function(){
			var ide = $(this).attr('data-id');
			var button = $(this).attr('data-id',ide);
			var evaluador = [];
			var j=0;
			var sumaEvaluadora=0;
			

			
			$('.checkbox.q'+ide).each( function(){
				if($(this).children().children().first().is(':checked')){
					console.log($(this).children().children().last().text());
					evaluador[j]=1;
				}
				else{
					evaluador[j]=0;
				}
				j=j+1;
			});

			for(var k=0; k<evaluador.length; k++){
				sumaEvaluadora=sumaEvaluadora+evaluador[k];
			}

			if(sumaEvaluadora==0){
				$('.msg>b').html('<span class="glyphicon glyphicon-alert"></span> ¡Por Favor, Debes Responder la Pregunta!');
				$('.msg>b').css({'color':'red'});
				setTimeout(function(){
					$('.msg>b').html('');
				},2000);
			}
			else{
				guardado=1;
			}


			if(guardado==1){
				button.hide(800);

				$('.msg>b').html('<span class="glyphicon glyphicon-thumbs-up"></span> ¡Su Respuesta ha sido Guardada Correctamente!');
				$('.msg>b').css({'color':'#34495e'});
				
				setTimeout(function(){
					$('.msg>b').html('');
				},3000);
			}

		});

		$('.preg0').css({'display':'block'});

		$('.next_pgta').click(function(){
			if(guardado==1){
				var id = $(this).attr('data-ide');
				var ubi = $(this).attr('data-ubicacion');

				if(ubi=="ultima"){
					console.log(ubi);
					$('.preg'+id).css({'opacity':'0.3'});
					$('.preg'+id).hide(700);
					
					
					$('.preg'+ubi).show(700);
					guardado=0;
				}
				else{
					$('.preg'+id).css({'opacity':'0.3'});
					$('.preg'+id).hide(700);
					
					
					$('.preg'+String(parseInt(id)+1)).show(700);
					guardado=0;
				}
				
			}
			else{
				$('.msg>b').html('<span class="glyphicon glyphicon-alert"></span> ¡Por Favor, Debes Responder y Guardar Correctamente para poder Seguir!');
				$('.msg>b').css({'color':'red'});
				
				setTimeout(function(){
					$('.msg>b').html('');
				},3000);
			}
			
		});


	</script>

	<script>
		$('.next_mod').click(function(){
			var id = $(this).attr('data-mod');
			$('#myTabs a[href="#modulo'+String(parseInt(id)+1)+'"]').tab('show');
		});
	</script>
@endsection