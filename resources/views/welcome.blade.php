<!DOCTYPE html>
<html>
<head>
<title>Encuestas - 2017</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="{{ asset('layout/styles/layout.css')}}" rel="stylesheet" type="text/css" media="all">

</head>
<body id="top">
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->

<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row1">
  <header id="header" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left">
      <h1><a class="navbar-brand" href="index.html"><img src="{{ asset('images/logotipo_2.png')}}" /></a></h1>
      <BR>
    </div>
    <!-- ################################################################################################ -->
    <nav id="mainav" class="fl_right">
      <ul class="clear">
        <li class="active"><a href="index.html">Inicio</a></li>
        <li><a class="drop" href="#">GUÍA DE ENCUESTA</a>
          <ul>
            <li><a href="manual.blade.php">Manual Práctico</a></li>
          </ul>
        </li>
      </ul>
    </nav>
    <!-- ################################################################################################ -->
  </header>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper bgded overlay" style="background-image:url('images/demo/backgrounds/01.png');">
  <div id="pageintro" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <article>
      <p style="color: #000; font-size: 25px; font-style: Roboto" class="heading">ENCUESTA CGR - SCI</p>
      <h2  style="color: #FF5733; font-size: 52px" class="heading"><span class="block">COMUNICACIONES</span></h2>
      <a style="color: #fff; background-size: 25px;font-size: 12px; background-color: #313030;  padding: 15px;text-shadow: -0.5px -0.5px 0.5px #aaa; " href={{ asset('encuesta')}}   onmouseover="this.style.backgroundColor='#000';this.style.color='#fff'"
   onmouseout="this.style.backgroundColor='#313030';this.style.color='inherit'" >Encuesta para instituciones con acceso al aplicativo SISECI Sistema de Seguimiento y Evaluación del Control Interno  >></a><br><br><br>
      <a style="color: #fff; font-size: 12px; background-color: #683209;  padding: 15px;text-shadow: -0.5px -0.5px 0.5px #aaa;"  href={{ asset('encuesta')}} onmouseover="this.style.backgroundColor='#620707';this.style.color='#fff'"
   onmouseout="this.style.backgroundColor='#683209';this.style.color='inherit'" >Encuesta para instituciones sin acceso al aplicativo SISECI Sistema de Seguimiento y Evaluación del Control Interno  >></a>     
    </article>
    <!-- ################################################################################################ -->
  </div>
</div>
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="center btmspace-20">
      <h3 class="heading" style-color="#8A0808;">Encuesta sobre la implementación del Sistema de Control Interno en las entidades del Estado- 2017 / Componente de comunicación</h3>
      <p class="nospace" style="font-weight:bold; font-size:20px;">14, 15, 16 y 17 de Agosto</p><br>
       <p class="nospace" style="font-weight:bold;">Su participación es importante. ¡Gracias!.</p>
    </div>

 

  </main>

</div>
<div class="wrapper row4">
  <footer id="footer" class="hoc clear"> 
    <div id="copyright">
      <p>Copyright &copy; 2017 - All Rights Reserved - <a href="#">Encuesta-CGR-SCI-Comunicaciones</a></p>
      <p class="font-xs">Template by <a target="_blank" href="#" title="Free Website Templates">Galex Media</a></p>
    </div>
    <!-- ################################################################################################ -->
  </footer>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="{{ asset('layout/scripts/jquery.min.js')}}"></script>
<script src="{{ asset('layout/scripts/jquery.backtotop.js')}}"></script>
<script src="{{ asset('layout/scripts/jquery.mobilemenu.js')}}"></script>
</body>
</html>