<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="{{asset('css/bootstrap.css')}}">
	<link rel="stylesheet" href="{{asset('css/estilos-publicos.css')}}">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	<style>
		body{
			font-family: 'Open Sans', sans-serif;
		}
	</style>
</head>
<body>
	<div class="container">
		

		@yield('contenedor')
	</div>

	<script src="{{asset('js/jquery-3.2.1.min.js')}}"></script>
	<script src="{{asset('js/bootstrap.js')}}"></script>
	<script src="{{asset('js/progressbar.js')}}"></script>

	@yield('scripts')

</body>
</html>