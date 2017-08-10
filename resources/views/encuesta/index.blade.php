@extends('../base')

@section('head')
	
@endsection

@section('contenedor')

<div class="opa-content text-center">
	<img src="{{asset('images/loading.gif')}}" alt="" width="50px">
	<div style="margin-top: 2em">
		Cargando...
	</div>
</div>
	<br>
		<div id="container"></div>

		<!-- Nav tabs -->
		  <ul class="nav nav-tabs" role="tablist" id="myTabs">
		  	<li role="presentation" ><a href="#datos" aria-controls="datos" ><b>Datos Generales</b></a></li>
		  	@foreach($modulos as $modulo)
		  		@if($modulo->id==1)
		    		<li role="presentation" class=""><a href="#{{$modulo->tab}}" aria-controls="{{$modulo->tab}}" ><b>{{$modulo->modulo}}: {{$modulo->nombre_modulo}}</b></a></li>
				@else
					<li role="presentation"><a href="#{{$modulo->tab}}" aria-controls="{{$modulo->tab}}" ><b>{{$modulo->modulo}}: {{$modulo->nombre_modulo}}</b></a></li>
		    	@endif
		    @endforeach
		    
		  </ul>

		<!-- Tab panes -->
		  <div class="tab-content">
		  	<div role="tabpanel" class="tab-pane active" id="datos">
		  		<br>
		  		<div class="row">
		  			<div class="col-md-12">
		  				<div class="form-group">
						    <label class="label-form">Nombre de la Entidad *</label>
						    <label class="label-ayuda"><span class="glyphicon glyphicon-question-sign"></span></label>
						    <input type="text" class="form-control uppercase" id="entidad" value="{{$pdte_filtrado->nombre_entidad}}">
						</div>
		  			</div>
		  			
		  		</div>
		  		


				 <div class="row">
				 	<div class="col-md-4">
				 		<div class="form-group">
						    <label class="label-form">Departamento *</label>
							<input type="text" class="form-control uppercase" id="departamento" value='{{$pdte_filtrado->cdpt_dpto}}'>
						    <!--<select name="" id="departamento" class="form-control"></select>-->
						  </div>
				 	</div>
				 	<div class="col-md-4">
				 		<div class="form-group">
						    <label class="label-form">Provincia *</label>
						    <input type="text" class="form-control uppercase"  id="provincia" value='{{$pdte_filtrado->cprv_prov}}'>
						    <!--<select name="" id="provincia" class="form-control"></select>-->
						  </div>
				 	</div>
				 	<div class="col-md-4">
				 		<div class="form-group">
						    <label class="label-form">Distrito *</label>
						    <input type="text" class="form-control uppercase" id="distrito" value='{{$pdte_filtrado->cdst_distrit}}'>
						    <!--<select name="" id="distrito" class="form-control"></select>-->
						  </div>
				 	</div>
				 	
				 </div>
				  
				 <div class="row">
				 	<div class="col-md-12">
				 		<div class="form-group">
				    
						    <label class="label-form">Nombre del Titular de la Entidad *</label>
						    <label class="label-ayuda"><span class="glyphicon glyphicon-question-sign"></span></label>
						    <input type="text" class="form-control uppercase" id="titular" placeholder="Ingresar Nombre del Titular de la Entidad">
						  </div>
				 	</div>
				</div>
				<div class="row">
				 	<div class="col-md-12">
				 		<div class="form-group">
				   
						    <label class="label-form">Nombre del Presidente del Comité de Control Interno *</label>
						    <label class="label-ayuda"><span class="glyphicon glyphicon-question-sign"></span></label>
						    <input type="text" class="form-control uppercase" id="presidente" value="{{$pdte_filtrado->apellidos_nombres}}">
						  </div>
				 	</div>
				 </div>
				  
				  <div class="row">
				  	<div class="col-md-8">
				  		<div class="form-group">
				    
						    <label class="label-form">Nombre de la Persona que llena la Encuesta *</label>
						    <label class="label-ayuda"><span class="glyphicon glyphicon-question-sign"></span></label>
						    <input type="text" class="form-control uppercase" id="encuestado" placeholder="Nombre de la Persona que llena la Encuesta">
						  </div>
				  	</div>
				  	<div class="col-md-4">
				  		<div class="form-group">
				    
						    <label class="label-form">DNI *</label>
						    <label class="label-ayuda"><span class="glyphicon glyphicon-question-sign"></span></label>
						    <input type="text" class="form-control uppercase" id="dni" placeholder="Ingresar DNI">
						  </div>
				  	</div>
				  </div>

				  <input type="hidden" class="form-control uppercase" id="cnig" value="{{$pdte_filtrado->cnig_nombre}}">
				  

				  <input type="hidden" name="_token"  id="token_entidad" value="{{ csrf_token() }}">

				  <input type="hidden" name="_token"  id="token_avance" value="{{ csrf_token() }}">

				  
				  
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

		  		@elseif($modulo->id==2)

					@include('encuesta.otros.encuesta_preguntas')

		  		@elseif($modulo->id==3)

					@include('encuesta.otros.encuesta_preguntas')

		  		@elseif($modulo->id==4)
					
					@include('encuesta.otros.encuesta_preguntas')
				@else

		  		@endif
		  	@endforeach
		    
		    
		    
		</div>

@endsection

@section('scripts')
	
	
	<script src="{{asset('js/app/encuesta/avance.js')}}"></script>
	<script src="{{asset('js/app/encuesta/opciones.js')}}"></script>

	
	<script>
		// $('.opa-content').hide();
		$('#myTabs a[href="#datos"]').tab('show');
		//$('.tab-pane#modulo2').show();


		$.ajax({
			url:'{{url("ajax/mostrar/avance")}}/'+'{{$pdte_filtrado->nro_documento}}',
			type: 'GET',
			success: function(data){
				$('.opa-content').hide();
					var avanceMod = data['modulo_avance'];
					//console.log(avanceMod);
					$('#myTabs a[href="#'+avanceMod+'"]').tab('show');
					$('.tab-pane#'+avanceMod).show();
					
					//$('.tab-content > .tab-pane#'+avanceMod).css({'display':'block !important'});
				
			}

		});
	</script>

	<script>
		// progressbar.js@1.0.0 version is used
		// Docs: http://progressbarjs.readthedocs.org/en/1.0.0/

		var bar = new ProgressBar.Line(container, {
		  strokeWidth: 4,
		  easing: 'easeInOut',
		  duration: 1400,
		  color: '#f1c40f',
		  trailColor: '#eee',
		  trailWidth: 1,
		  svgStyle: {width: '100%', height: '100%'},
		  text: {
		    style: {
		      // Text color.
		      // Default: same as stroke color (options.color)
		      color: '#999',
		      position: 'absolute',
		      right: '0',
		      top: '20px',
		      padding: 0,
		      margin: 0,
		      transform: null
		    },
		    autoStyleContainer: false
		  },
		  from: {color: '#FFEA82'},
		  to: {color: '#ED6A5A'},
		  step: (state, bar) => {
		    bar.setText('Progreso de Encuesta&nbsp;&nbsp; <b>' + Math.round(bar.value() * 100) + ' %</b>');
		  }
		});

		//bar.animate(0.0);
	</script>

	<script>
		/*=> Ajax que carga el progreso de la encuesta */
		var valorDNI = '{{$pdte_filtrado->nro_documento}}';

		$.ajax({
			url:'{{url("ajax/buscar/presidente")}}/'+valorDNI,
			type:'GET',
			success: function(data){
				if(data.length!=0){
					$.ajax({
						url:'{{url("ajax/buscar/progreso/entidad")}}/'+data['entidad_id'],
						type:'GET',
						success: function(data1){
							console.log(data1['progreso']);

							if(data1['progreso']<1.0){
								bar.animate(parseFloat(data1['progreso']));
							}
							
						}
					});
				}
				else{
					console.log('no paso nada');
				}
			}
		})

		
	</script>



	<script>
		/* Ajax que carga automaticamente los departamentos, provincias y distritos */
		/*$.ajax({
			url:'{{asset("js/json/departamentos.json")}}',
			type: 'GET',
			dataType: 'JSON',
			success: function(data){
				
				for(var i=0; i<data.length; i++){
					$('#departamento').append('<option value="'+data[i]['id_ubigeo']+'">'+data[i]['nombre_ubigeo']+'</option>');
				}

				$('#departamento').change(function(){
					var id_ubigeo = $(this).val();

					$('#provincia').html('');
					$.ajax({
						url:'{{asset("js/json/provincias.json")}}',
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
		}); */
	</script>

	<script>
		var cantidad_modulos;
		var arrayPreguntasModulo;

		$.ajax({
			url: '{{url('ajax/obtener/modulos_preguntas')}}',
			type:'GET',
			success: function(data){
				cantidad_modulos = data.length;  //variables para usar en otro ajax
				arrayPreguntasModulo = data; //variables para usar en otro ajax
			}
		})
	</script>



	<script>
		function siEsFinal(valorDOCUMENTO){
			$.ajax({
				url:'{{url("ajax/buscar/presidente")}}/'+valorDOCUMENTO,
				type:'GET',
				success: function(data){
					if(data.length!=0){
						$.ajax({
							url:'{{url("ajax/buscar/progreso/entidad")}}/'+data['entidad_id'],
							type:'GET',
							success: function(data1){
								console.log(data1['progreso']);

								if(data1['progreso']==1.0){
									$('.opa-content').show();
									setTimeout(function(){
										
										
										location.href="{{url('encuesta')}}/"+valorDOCUMENTO;

									}, 1000);


									
								}

								
							}
						});
					}
					else{
						console.log('no paso nada');
					}
				}
			})
		}
		

		var next = "0";
		var ent;

		

		$('#guardar_datos').click(function(){

			

			var entidad = $('#entidad').val();
			
			//var departamento= $('#departamento').children('option:selected').text();
			//var provincia = $('#provincia').children('option:selected').text();
			var departamento = $('#departamento').val();
			var provincia = $('#provincia').val();
			var distrito = $('#distrito').val();
			var titular = $('#titular').val();
			var presidente = $('#presidente').val();
			var encuestado = $('#encuestado').val();
			var dni = $('#dni').val();
			var cnig = $('#cnig').val();
			var presidenteDNI = "{{$pdte_filtrado->nro_documento}}";

			var validate = "";

			if(entidad==""||titular==""||presidente==""||encuestado==""||departamento==""||provincia==""||distrito==""||dni==""||cnig==""){
				validate = "false";

				$('.mensaje-enviado>b').html('<span class="glyphicon glyphicon-alert"></span> ¡Por Favor, Llena todos los datos del Formulario!');
				$('.mensaje-enviado>b').css({'color':'red'});
				setTimeout(function(){
					$('.mensaje-enviado>b').html('');
				}, 2000);

			}
			if(entidad!=""&&titular!=""&&presidente!=""&&encuestado!=""&&departamento!=""&&provincia!=""&&distrito!=""&&dni!=""&&cnig!=""){
				validate = "true";

				$.ajax({
					url:'{{url("ajax/guardar/datos_generales")}}',
					data:{
						entidad: entidad,
						departamento: departamento,
						provincia: provincia,
						distrito: distrito,
						titular: titular.toUpperCase(),
						presidente: presidente,
						encuestado: encuestado.toUpperCase(),
						dni:dni,
						cnig:cnig,
						progreso:0.1,
						presidenteDNI: presidenteDNI
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

						guardarAvance('{{$pdte_filtrado->nro_documento}}', 'modulo1');

						$('.loading').css({'display':'none'});
						$('.mensaje-enviado>b').html('<span class="glyphicon glyphicon-thumbs-up"></span> ¡Los Datos han sido Guardados Correctamente!');
						$('.mensaje-enviado>b').css({'color':'#34495e'});

						setTimeout(function(){
							$('.mensaje-enviado>b').html('');
						}, 3000);
						
						next = "1";

						ent=data;



						bar.animate(0.1);
						
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
		var percentShow = 0;

	

		$('.guardar_rpta').click(function(){
			var ide = $(this).attr('data-id');
			var button = $(this).attr('data-id',ide);
			var evaluador = [];
			var j=0;
			var sumaEvaluadora=0;
			var modulo = $(this).attr('data-id-mod');
			var pid= $(this).attr('data-pid');
			var rpta=[];
			var i=0;
			
			if($(this).attr('data-tipe')=="checkbox"){
				console.log('checkbox');
				$('.checkbox.q'+modulo+ide).each( function(){
					if($(this).children().children().first().is(':checked')){
						rpta[i] = $(this).children().children().last().text();
						evaluador[j]=1;
						i=i+1;
					}
					else{
						evaluador[j]=0;
					}
					j=j+1;
				});
			}

			if($(this).attr('data-tipe')=="input"){
				console.log('input');
				$('.input'+modulo+ide).each( function(){
					if($(this).val()!=""){
						rpta[i] = $(this).val();
						evaluador[j]=1;
						i=i+1;
					}
					else{
						evaluador[j]=0;
					}
					j=j+1;
				});
			}

			if($(this).attr('data-tipe')=="checkboxinput"){
				console.log('checkboxinput');
				$('.checkboxinput'+modulo+ide).each( function(){
					var sumita = stringPrioridad.length;
					console.log(sumita);
					if($(this).val().length==sumita){
						console.log($(this).val());
						rpta[i] = $(this).val();
						evaluador[j]=1;
						i=i+1;
					}
					else{
						evaluador[j]=0;
					}
					j=j+1;
				});
			}

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
				/* ajax que guarda la rpta */
				console.log(rpta);

				for(var k=0; k<rpta.length; k++){
					$.ajax({
						url:'{{url("ajax/guardar/rpta")}}/'+pid,
						data:{respuesta:rpta[k],entidad:ent},
						type: 'POST',
						headers: {'X_CSRF_TOKEN': $('#token_opc').val()},
						success: function(data){
							console.log(data);
						}

					});
				}
				
				guardado=1;

				/* porcentaje por modulo */
				var percent = 0.9/cantidad_modulos;
				
				for(var i=0; i<arrayPreguntasModulo.length; i++){
					
					if(arrayPreguntasModulo[i]['id_modulo']==modulo){
						var percentTotal = parseFloat(percent)/parseFloat(arrayPreguntasModulo[i]['cantidad_preguntas']);
						
						
					}
				}

				percentShow = percentShow + percentTotal;

				/* busca en ajax y guarda el progreso */
				$.ajax({
					url:'{{url("ajax/guardar/progreso")}}',
					type:'POST',
					data:{progreso:0.1+percentShow,id:ent},
					headers: {'X_CSRF_TOKEN': $('#token_entidad').val()},
					success: function(data){
						console.log(data);
					}
				});

				bar.animate(0.1+percentShow);
				
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

		$('.pregmodulo10').css({'display':'block'});

		$('.next_pgta').click(function(){
			/* -------------------------- */
			$('.ordenprioridad').val('');
			stringPrioridadShow="";
			stringPrioridad="";
			/*---------------------------*/

			$('.msg>b').html('');
			if(guardado==1){
				var id = $(this).attr('data-ide');
				var tab = $(this).attr('data-tab');
				var ubi = $(this).attr('data-ubicacion');

				

				if(ubi=="ultima"){
					
					$('.preg'+tab+id).slideUp(700);
					
					
					$('.preg'+tab+ubi).slideDown(700);
					guardado=0;

					$('.next_mod').click(function(){
						siEsFinal("{{$pdte_filtrado->nro_documento}}");
						
						var id = $(this).attr('data-mod');
						
						guardarAvance('{{$pdte_filtrado->nro_documento}}', 'modulo'+String(parseInt(id)+1));
						$('.preg'+tab+ubi).hide();
						$('.preg'+"modulo"+String(parseInt(id)+1)+"0").show();
						$('#myTabs a[href="#modulo'+String(parseInt(id)+1)+'"]').tab('show');
						guardado=1;

					});
				}
				else{
					
					$('.preg'+tab+id).slideUp(700);
					
					
					$('.preg'+tab+String(parseInt(id)+1)).slideDown(700);
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
		
	</script>
@endsection