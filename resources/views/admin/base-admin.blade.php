<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<meta name="csrf-token" content="{{ csrf_token() }}">
	<link rel="stylesheet" href="{{asset('css/bootstrap.css')}}">
	<link rel="stylesheet" href="{{asset('css/dataTables.bootstrap.min.css')}}">
	<link rel="stylesheet" href="{{asset('css/estilos.css')}}">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	<style>
		body{
			font-family: 'Open Sans', sans-serif;
		}
	</style>
</head>
<body>

	<div class="row-fluid">
		<div class="col-md-2 color-background-wet-asphalt color-white col-md-sin-relleno"  id="menu">
			<nav class="navbar navbar-default" style="background-color: #2c3e50; margin-bottom: 0">
			  <div class="container-fluid">
			    <!-- Brand and toggle get grouped for better mobile display -->
			    <div class="navbar-header">
			      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			      </button>
			      <a class="navbar-brand" href="#">Sistema de Encuesta</a>
			    </div>

			    
			  </div><!-- /.container-fluid -->
			</nav>


			<!-- contenido del menu izquierdo -->

			<ul class="nav nav-pills nav-stacked nav-custo">
				<li role="presentation"><a href="#" id="menu-secciones"> <span ><b>1</b></span> &nbsp;&nbsp;<b>Secciones</b></a>
					<ul class="nav nav-pills nav-stacked nav-custo nav-sub-custo" id="sub-secciones">
						<li role="presentation"><a href="{{url('admin/seccion/crear')}}">Crear Sección</a></li>
						<li role="presentation"><a href="{{url('admin/secciones')}}">	Lista de Secciones</a></li>
					</ul>
				</li>
				<li role="presentation"><a href="#" id="menu-modulos"> <span><b>2</b></span> &nbsp;&nbsp;<b>Módulos</b></a>
					<ul class="nav nav-pills nav-stacked nav-custo nav-sub-custo" id="sub-modulos">
						<li role="presentation"><a href="{{url('admin/modulo/crear')}}">Crear Módulo</a></li>
						<li role="presentation"><a href="{{url('admin/modulos')}}">	Lista de Módulos</a></li>
					</ul>
				</li>
				<li role="presentation"><a href="#" id="menu-preguntas"> <span><b>3</b></span> &nbsp;&nbsp;<b>Preguntas</b></a>
					<ul class="nav nav-pills nav-stacked nav-custo nav-sub-custo" id="sub-preguntas">
						<li role="presentation"><a href="{{url('admin/pregunta/crear')}}">Crear Pregunta</a></li>
						<li role="presentation"><a href="{{url('admin/preguntas')}}">	Lista de Preguntas</a></li>
					</ul>
				</li>
				<li role="presentation"><a href="#" id="menu-encuesta"><span class="glyphicon glyphicon-list-alt"></span> &nbsp;<b>Encuesta</b></a>
					<ul class="nav nav-pills nav-stacked nav-custo nav-sub-custo" id="sub-encuesta">
						<li role="presentation"><a href="{{url('admin/encuesta_por_entidad')}}">Progreso Encuesta/Entidad</a></li>
						<li role="presentation"><a href="{{url('admin/tipo_encuesta/crear')}}">Crear Tipo Encuesta</a></li>
						
						
					</ul>
				</li>
				<li role="presentation"><a href="#" id="menu-entidades"><span class="glyphicon glyphicon-home"></span> &nbsp;<b>Entidades</b></a>
					<ul class="nav nav-pills nav-stacked nav-custo nav-sub-custo" id="sub-entidades">
						<li role="presentation"><a href="{{url('admin/entidades')}}">Lista de Entidades</a></li>
						<li role="presentation"><a href="{{url('admin/titulares')}}">Titulares</a></li>
						<li role="presentation"><a href="{{url('admin/presidentes')}}">Presidentes</a></li>
						<li role="presentation"><a href="{{url('admin/encuestados')}}">Encuestados</a></li>
						
					</ul>
				</li>
				
				<li role="presentation"><a href="/admin/estadisticas" id="menu-estadistica"><span class="glyphicon glyphicon-stats"></span> &nbsp;<b>Estadísticas</b></a>
					{{-- <ul class="nav nav-pills nav-stacked nav-custo nav-sub-custo" id="sub-usuarios">
						<li role="presentation"><a href="{{url('admin/usuarios')}}">Lista de Usuarios</a></li>
						
						
					</ul> --}}
				</li>
				<li role="presentation"><a href="#" id="menu-repo"><span class="glyphicon glyphicon-folder-close"></span> &nbsp;<b>Repositorio de Archivos</b></a>
					{{-- <ul class="nav nav-pills nav-stacked nav-custo nav-sub-custo" id="sub-usuarios">
						<li role="presentation"><a href="{{url('admin/usuarios')}}">Lista de Usuarios</a></li>
						
						
					</ul> --}}
				</li>

				<li role="presentation"><a href="#" id="menu-usuarios"><span class="glyphicon glyphicon-user"></span> &nbsp;<b>Usuarios del Sistema</b></a>
					<ul class="nav nav-pills nav-stacked nav-custo nav-sub-custo" id="sub-usuarios">
						<li role="presentation"><a href="{{url('admin/usuarios')}}">Lista de Usuarios</a></li>
						
						
					</ul>
				</li>

				<li role="presentation"><a href="#" id="menu-configuracion"><span class="glyphicon glyphicon-cog"></span> &nbsp;<b>Configuración</b></a>
					<ul class="nav nav-pills nav-stacked nav-custo nav-sub-custo" id="sub-configuracion">
						<li role="presentation"><a href="{{url('admin/temporizador')}}">Temporizador de Encuesta</a></li>
						
						
					</ul>
				</li>

			  <!-- <li role="presentation"><a href="/admin/pregunta/crear">Crear Pregunta</a></li>
			  <li role="presentation"><a href="/admin/preguntas">Lista Preguntas</a></li>
			  <li role="presentation"><a href="/admin/modulos">Lista Modulos</a></li>
			  <li role="presentation"><a href="/admin/modulo/crear">Crear Módulo</a></li>
			  <li role="presentation"><a href="/admin/entidades">Entidades</a></li> -->
			  <!-- <li role="presentation"><a href="#">Profile</a></li>
			  <li role="presentation"><a href="#">Messages</a></li> -->
			</ul>
		</div>
		<div class="col-md-10 col-md-sin-relleno" id="main">
			<nav class="navbar navbar-default" style="margin-bottom: 0">
			  <div class="container-fluid col-md-sin-relleno">
			    

			    <!-- Collect the nav links, forms, and other content for toggling -->
			    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1 ">
			      <ul class="nav navbar-nav">
			        <li><a href="/admin"> <span class="glyphicon glyphicon-th"></span> Panel Principal</a></li>
			        
			      </ul> 
			      
			      <ul class="nav navbar-nav navbar-right">
			      	<li class="dropdown">
			      		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" id="not">Notificaciones
			      			<?php $i=0; ?>
							@if(count($notificaciones)>0)
								
								@foreach($notificaciones as $notificacion)
									@if($notificacion->estado=="false")
			      						<?php $i=$i+1 ?>
			      					@endif
			      				@endforeach
			      				
			      					@if($i>0)
										<span class="badge" id="badge">{{$i}}</span>
			      					@endif
			      					
			      				
							@else

							@endif
			      		</a>
			      		<ul class="dropdown-menu dm" role="menu">
			      			
			      			@if(count($notificaciones)>0)
								
								@foreach($notificaciones as $notificacion)
									@if($notificacion->tipo_actividad=="Entidad")
										@foreach($entidades as $entidad)
											@if($entidad->id==$notificacion->id_actividad)
											<li style="border-bottom: 1px solid #eee">
							      				<a href="{{url('admin/entidad')}}/{{$entidad->slug}}/{{$entidad->id}}">
							      					<div class="row">
							      						<div class="col-md-12" style="color:#34495e">	
															<div style="font-size: 0.9em">	
																La Entidad: <b>{{$entidad->nombre_entidad}}</b> ha llenado sus datos.
									      					</div>
									      					<div>
									      						<small style="color:#95a5a6"><span class="glyphicon glyphicon-time"></span> {{$notificacion->created_at}}</small>
									      					</div>
							      						</div>
							      					</div>
							      					
							      					 	
							      					
							      				</a>
							      			</li>
							      			@endif
					      				@endforeach
					      			@endif
			      				@endforeach
			      				
							@else

							@endif
			      		</ul>
			      	</li>
			        
			        @if (Auth::guest())
                            
                    @else
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                    <img src="{{asset('images/user.png')}}" alt="" width="18px"> &nbsp;{{ Auth::user()->name }} <span class="caret"></span>
                            </a>

                            <ul class="dropdown-menu" role="menu">
                                <li>
                                    <a href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                        <span class="glyphicon glyphicon-off"></span> &nbsp;Cerrar Sesión
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        {{ csrf_field() }}
                                    </form>
                                </li>
                            </ul>
                        </li>
                    @endif
			        <!-- <li class="dropdown">
			          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
			          <ul class="dropdown-menu">
			            <li><a href="#">Action</a></li>
			            <li><a href="#">Another action</a></li>
			            <li><a href="#">Something else here</a></li>
			            <li role="separator" class="divider"></li>
			            <li><a href="#">Separated link</a></li>
			          </ul>
			        </li> -->
			      </ul>
			    </div><!-- /.navbar-collapse -->
			  </div><!-- /.container-fluid -->
			</nav>
			@yield('contenedor')
		</div>

		

	</div>

	<script src="{{asset('js/jquery-3.2.1.min.js')}}"></script>
	<script src="{{asset('js/bootstrap.min.js')}}"></script>
	<script src="{{asset('js/progressbar.js')}}"></script>
	<script src="{{asset('js/jquery.dataTables.min.js')}}"></script>
	<script src="{{asset('js/dataTables.bootstrap.min.js')}}"></script>
	<script>
		var altura = $(window).height();
		$('#menu').css({'height':altura+'px'});

		$('#menu-modulos').click(function(){
			$('#sub-modulos').toggle(200);
		});
		$('#menu-preguntas').click(function(){
			$('#sub-preguntas').toggle(200);
		});
		$('#menu-entidades').click(function(){
			$('#sub-entidades').toggle(200);
		});
		$('#menu-configuracion').click(function(){
			$('#sub-configuracion').toggle(200);
		});
		$('#menu-encuesta').click(function(){
			$('#sub-encuesta').toggle(200);
		});
		$('#menu-usuarios').click(function(){
			$('#sub-usuarios').toggle(200);
		});
		$('#menu-secciones').click(function(){
			$('#sub-secciones').toggle(200);
		});
	</script>

	@yield('scripts')
	
	<script>
			$.ajaxSetup({
			   headers: {
			       'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			   }
			});

			bucle();
			function bucle(){
				setTimeout(function(){
					$.ajax({
						url:'{{url("ajax/obtener/notificaciones/nuevas")}}',
						type:'GET',
						success: function(data){
							//$('#badge').show();
							if(data.length>0){
								$('#badge').show();
								$('#badge').html(data.length);
							}
							else{
								//$('#badge').hide();
							}
							
						}
					});
					bucle();
				}, 5000)
			}

			$('#not').click(function(){
				$('#badge').hide();
				$.ajax({
					url:'{{url("ajax/cambiar/estado/notificaciones")}}',
					type:'GET',
					success: function(data){
						$('#badge').html('');
					}
				})
			});
		

	</script>
	
	

</body>
</html>