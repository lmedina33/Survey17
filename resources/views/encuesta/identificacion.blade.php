@extends('../base')

@section('contenedor')
	<div class="identificacion">
		<div class="row">
			<div class="col-md-6 col-md-offset-3 text-center text-id">
				Para realizar la Encuesta, Necesitamos validar la Identificación del Presidente del Comite de Control Interno de su Institución.
			</div>
		</div>
		<br><br>
		<div class="col-md-6 col-md-offset-3 text-center img-logo">
			<img src="{{asset('images/logotipo_2.png')}}" alt="">
		</div>
		
		<div class="row">
			
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading text-center">
						<b>Identifícate</b>
					</div>
					<div class="panel-body">
						<div class="msg-validate text-center" style="margin-bottom: 1em">
							<b></b>
						</div>
						<div class="form-group">
							<label class="label-form">DNI del Presidente deL CCI *</label>
							<label class="label-ayuda"><span class="glyphicon glyphicon-question-sign"></span></label>
							<input type="text" class="form-control" id="identidad" placeholder="Ingresar DNI">
						</div>
					
						<div class="text-center" style="margin-bottom: 1em; display: none" id="msg-load">
							<img src="{{asset('images/loading.gif')}}" alt="" width="40px">
						</div>
						<div class="form-group">
							<button class="btn btn-default" style="width: 100%" id="validar"><b>Validar</b></button>
						</div>
					</div>
				</div>
				

			</div>
		</div>
	</div>
	<div class="identificado" style="display: none">
		<div class="row">
			<div class="col-md-6 col-md-offset-3 text-center img-logo" style="margin-top: 5em">
					<img src="{{asset('images/logotipo_2.png')}}" alt="">
				</div>
			<div class="col-md-6 col-md-offset-3 text-center" >

				<h1 style="margin-bottom: 1em"><span id="nombre_validado"></span></h1>
				<h2 style="margin-bottom: 3em">¡Tu DNI <span id="dni_validado"></span> ha sido validado!</h2>

				<input type="hidden" name="_token"  id="token_validar" value="{{ csrf_token() }}">

			</div>
			<div class="col-md-4 col-md-offset-4">
				<button class="btn btn-default" style="width: 100%" id="continuar"><b>Continuar</b></button>
			</div>
		</div>
	</div>
@endsection

@section('scripts')
	<script>
		$('#validar').click(function(){
			if($('#identidad').val()!=""){
				
				
				valorCantDigit = validarCantidadDigitos($('#identidad').val());

				if(valorCantDigit==true){
					var dni = $('#identidad').val();
					$.ajax({
						url: '{{url("ajax/buscar/pdte")}}/'+dni,
						type: 'GET',
						beforeSend: function(){
							$('#msg-load').show();
						},
						success: function(data){

							$('#msg-load').hide();

							if(data.length>0){

								$.ajax({
									url:'{{url("ajax/buscar/validar")}}',
									data:{dni:data[0]['nro_documento']},
									type:'GET',
									success:function(data1){
										if(data1.length!=0){
											location.href="{{url('/encuesta')}}/"+data1['presidente_dni'];
										}
										else{
											$('.identificacion').hide();
											$('.identificado').show();
											$('#nombre_validado').text(data[0]['apellidos_nombres']);
											$('#dni_validado').text(data[0]['nro_documento']);

											$('#continuar').click(function(){

												$.ajax({
													url: '{{url("ajax/guardar/validar")}}',
													headers: {'X_CSRF_TOKEN': $('#token_validar').val()},
													data:{dni:data[0]['nro_documento'],estado:'validado'},
													type: 'POST',
													success: function(data2){
														
														location.href = "{{url('/encuesta')}}/"+data2;
													}
												});
												
											});
										}
									}
								});

								
								


								
							}
							else{
								console.log('nada');
							}
						}
					});

					
				}
				else{
					$('.msg-validate>b').html('<span class="glyphicon glyphicon-alert"></span> ¡Sólo se permiten 8 Dígitos!');
					$('.msg-validate').css({'color':'red'});

					setTimeout(function(){
						$('.msg-validate>b').html('');
					}, 2000)
				}
					
				
				
			}
			else{

			}
		});

		function validarCantidadDigitos(valor){
			if(valor.length == 8){
				return true;
			}
			else{
				return false;
			}
		}
	</script>
@endsection