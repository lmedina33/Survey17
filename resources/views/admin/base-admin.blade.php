<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="{{asset('css/bootstrap.css')}}">
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
			      <a class="navbar-brand" href="#">Admin</a>
			    </div>

			    
			  </div><!-- /.container-fluid -->
			</nav>


			<!-- contenido del menu izquierdo -->

			<ul class="nav nav-pills nav-stacked nav-custo">
			  <li role="presentation"><a href="/admin/pregunta/crear">Crear Pregunta</a></li>
			  <li role="presentation"><a href="/admin/preguntas">Lista Preguntas</a></li>
			  <li role="presentation"><a href="/admin/modulos">Lista Modulos</a></li>
			  <li role="presentation"><a href="/admin/entidades">Entidades</a></li>
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
			        <li><a href="#">Link</a></li>
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
	<script>
		var altura = $(window).height();
		$('#menu').css({'height':altura+'px'})
	</script>

	@yield('scripts')
	
	<script></script>
	
	

</body>
</html>