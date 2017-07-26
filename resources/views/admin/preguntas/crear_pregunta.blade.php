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
		<div class="col-md-2 color-background-wet-asphalt color-white col-md-sin-relleno">
			<nav class="navbar navbar-default">
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

			<ul class="nav nav-pills nav-stacked">
			  <li role="presentation"><a href="/admin/pregunta/crear">Crear Pregunta</a></li>
			  <li role="presentation"><a href="#">Profile</a></li>
			  <li role="presentation"><a href="#">Messages</a></li>
			</ul>
		</div>
		<div class="col-md-10 col-md-sin-relleno">
			<nav class="navbar navbar-default">
			  <div class="container-fluid col-md-sin-relleno">
			    

			    <!-- Collect the nav links, forms, and other content for toggling -->
			    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1 ">
			      <ul class="nav navbar-nav">
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
			      </ul>
			      
			      <ul class="nav navbar-nav navbar-right">
			        <li><a href="#">Link</a></li>
			        <li class="dropdown">
			          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
			          <ul class="dropdown-menu">
			            <li><a href="#">Action</a></li>
			            <li><a href="#">Another action</a></li>
			            <li><a href="#">Something else here</a></li>
			            <li role="separator" class="divider"></li>
			            <li><a href="#">Separated link</a></li>
			          </ul>
			        </li>
			      </ul>
			    </div><!-- /.navbar-collapse -->
			  </div><!-- /.container-fluid -->
			</nav>

			<div class="row-fluid">
				<div class="col-md-12">
					<form>
					  <div class="form-group">
					    <label for="exampleInputEmail1">Titulo de la  pregunta</label>
					    <input type="text" class="form-control"  placeholder="Título de la Pregunta">
					  </div>
					  <div class="form-group">
					    <label for="exampleInputPassword1">Tipo de Pregunta</label>
					    <select name="" class="form-control" id="tipo-pregunta">
					    	<option value="1">Pregunta Cerrada</option>
					    	<option value="2">Pregunta Abierta</option>
					    	<option value="3">Pregunta Abierta con Opciones</option>
					    	<option value="4">Pregunta con Opciones</option>
					    </select>
					  </div>
					  
					  <button type="submit" class="btn btn-default">Guardar Pregunta</button>
					</form>
				</div>
			</div>

		</div>
	</div>
	
	<script src="{{asset('js/jquery-3.2.1.min.js')}}"></script>
	<script>
		$('#tipo-pregunta').change(function(){
			var valor = $(this).val();

			if(valor==1){
				console.log("solo si o no");
			}
			if(valor==2){
				console.log("sin opciones");
			}
			if(valor==3){
				console.log("abierta con opciones");
			}
			if(valor==4){
				console.log("pregunta con opciones");
			}
		});
	</script>
	

</body>
</html>