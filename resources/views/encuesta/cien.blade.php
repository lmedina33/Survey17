@extends('../base')

@section('contenedor')
	<div class="row">
		<div class="col-md-6 col-md-offset-3 text-center" style="margin-top: 10em">
			
			<img src="{{asset('images/logotipo_2.png')}}" alt="">
			<div style="margin-top: 2em; font-size: 2em">
				<b>{{$pdte_filtrado->apellidos_nombres}}</b> <br> ¡Ud. Ya ha Completado satisfactoriamente su Encuesta!
			</div>
			<div style="padding-top: 1em; font-size: 1.2em">
				<div style="margin-bottom: 1em">
					<span>Si tuviera algún problema, enviénos un mensaje al correo:</span>
				</div>
				
				<small style="color: red;"><span class="glyphicon glyphicon-envelope"></span>&nbsp;administrador@encuesta-cgr-sci-comunicaciones.com</small>
			</div>
		</div>
	</div>
@endsection