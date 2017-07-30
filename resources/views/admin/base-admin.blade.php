<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="{{asset('css/bootstrap.css')}}">
	<link rel="stylesheet" href="{{asset('css/dataTables.bootstrap.min.css')}}">
	<link rel="stylesheet" href="{{asset('css/estilos.css')}}">
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
				<li role="presentation"><a href="#" id="menu-modulos"> <span class="glyphicon glyphicon-th-list"></span> &nbsp;<b>Módulos</b></a>
					<ul class="nav nav-pills nav-stacked nav-custo nav-sub-custo" id="sub-modulos">
						<li role="presentation"><a href="{{url('admin/modulo/crear')}}">Crear Módulo</a></li>
						<li role="presentation"><a href="{{url('admin/modulos')}}">	Lista de Módulos</a></li>
					</ul>
				</li>
				<li role="presentation"><a href="#" id="menu-preguntas"> <span class="glyphicon glyphicon-list"></span> &nbsp;<b>Preguntas</b></a>
					<ul class="nav nav-pills nav-stacked nav-custo nav-sub-custo" id="sub-preguntas">
						<li role="presentation"><a href="{{url('admin/pregunta/crear')}}">Crear Pregunta</a></li>
						<li role="presentation"><a href="{{url('admin/preguntas')}}">	Lista de Preguntas</a></li>
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
			      <!-- <ul class="nav navbar-nav">
			        <li><a href="#">Link</a></li>
			        <li><a href="#">Link</a></li>
			        <li class="dropdown">
			          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
			          <ul class="dropdown-menu">
			            <li><a href="#">Action</a></li>
			            <li><a href="#">Another action</a></li>
			            <li><a href="#">Something else here</a></li>
			            <li role="separator" class="divider"></li>
			            <li><a href="#">Separated link</a></li>
			            <li role="separator" class="divider"></li>
			            <li><a href="#">One more separated link</a></li>
			          </ul>
			        </li>
			      </ul> -->
			      
			      <ul class="nav navbar-nav navbar-right">
			        <li><a href="#">Administrador</a></li>
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
	</script>

	@yield('scripts')
	
	<script>
		

	</script>
	
	

</body>
</html>