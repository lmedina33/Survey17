@extends('../base')

@section('contenedor')
	<div class="identificacion">
		<div class="row">
			<div class="col-md-6 col-md-offset-3 text-center text-id">
				Para realizar la Encuesta, primero necesitamos validar tu Identificación.
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
							<label class="label-form">Documento de Identidad *</label>
							<label class="label-ayuda"><span class="glyphicon glyphicon-question-sign"></span></label>
							<input type="text" class="form-control" id="identidad" placeholder="Ingresar DNI">
						</div>
					
						<div class="form-group">
							<button class="btn btn-default" style="width: 100%" id="validar"><b>Validar</b></button>
						</div>
					</div>
				</div>
				

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
					location.href = "{{url('/encuesta')}}";
				}
				else{
					$('.msg-validate>b').html('<span class="glyphicon glyphicon-alert"></span> ¡La cantidad de Dígitos no es Correcta!');
						$('.msg-validate').css({'color':'red'});

					setTimeout(function(){
						$('.msg-validate>b').html('');
					}, 2000)
					
				}
				//var valorValidado = validarNumero($('#identificacion').val());
				//location.href = "{{url('/encuesta')}}";
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