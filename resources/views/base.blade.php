<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<meta name="csrf-token" content="{{ csrf_token() }}">
	<link rel="stylesheet" href="{{asset('css/bootstrap.css')}}">
	<link rel="stylesheet" href="{{asset('css/estilos-publicos.css')}}">
	{{-- <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet"> --}}
	<link href="https://fonts.googleapis.com/css?family=Merriweather+Sans" rel="stylesheet">
	<style>
		body{
			/*font-family: 'Open Sans', sans-serif;*/
			font-family: 'Merriweather Sans', sans-serif;
		}
	</style>



	@yield('head')
</head>
<body>
	<div class="container">
		

		@yield('contenedor')
	</div>

	<script src="{{asset('js/jquery-3.2.1.min.js')}}"></script>
	<script src="{{asset('js/bootstrap.js')}}"></script>
	<script src="{{asset('js/progressbar.js')}}"></script>
	<script>
		$.ajaxSetup({
			   headers: {
			       'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			   }
			});
	</script>

	@yield('scripts')



</body>
</html>