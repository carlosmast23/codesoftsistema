<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/principalAdministrador.dwt.php" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Codesoft</title>


<script>
//window.addEventListener("load", iniciar, false);
//function iniciar(){
//var f = new Date();
//var fecha=f.getDate() + "-" + (f.getMonth() +1) + "-" + f.getFullYear();
//document.getElementById("fechaA").value=fecha;
//}

function regresar(){
	      
		window.location="./listaListos.php";
	
		
	
	
}


</script>   

<?php

session_start();
if(!(isset($_SESSION['administrador']))){
	
    //include_once '../../login/login.php'; 
    header("Location:../../login/login.php");
}


?>
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
<link href="../../css/principal.css" rel="stylesheet" type="text/css" />
<link href="../../css/menu-1.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div class="contenedor">
  <div class="cabezera">
        	<div class="logo"><!--fin logo -->
       	        
  </div><!--fin cabezera -->
      
      <div class="menuPrincipal">
      		<div id="menu">           
            
      
<ul>
  <li class="nivel1"><a href="" class="nivel1">P E R S O N A S</a>
<!--[if lte IE 6]><a href="#" class="nivel1ie">Opción 1<table class="falsa"><tr><td><![endif]-->
	<ul>
		<li><a href="../../Admin/cliente/lista.php">Clientes</a></li>
        <li><a href="../../Admin/distribuidor/lista.php">Distribuidor</a></li>
		
	</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
  </li>
  <li class="nivel1"><a href="#" class="nivel1">P R O D U C T O S</a>
<!--[if lte IE 6]><a href="#" class="nivel1ie">Opción 2<table class="falsa"><tr><td><![endif]-->
	<ul>
		<li><a href="../../Admin/categoria/lista.php">Categoria</a></li>
		<li><a href="../../Admin/distribuidor/lista.php">Distribuidor</a></li>
		<li><a href="../../Admin/listaProductos/lista.php">Lista Productos</a></li>
		<li><a href="../../Admin/producto/lista.php?hoja=0">Productos</a></li>
		<li><a href="../../Admin/producto/pdf/ListaExistencias.php">Reporte Productos</a></li>
	</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
</li>
  <li class="nivel1"><a href="#" class="nivel1">V E N T A S</a>
<!--[if lte IE 6]><a href="#" class="nivel1ie">Opción 3<table class="falsa"><tr><td><![endif]-->
	<ul>
		<li><a href="../../Admin/venta/venta.php">Vender</a></li>
		<li><a href="#">Opci&oacute;n 3.2</a></li>
		<li><a href="http://www.idplus.org">idplus.org</a></li>
	</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
</li>
  <li class="nivel1"><a href="#" class="nivel1">R E P O R T E S</a>
<!--[if lte IE 6]><a href="#" class="nivel1ie">Opción 4<table class="falsa"><tr><td><![endif]-->
	<ul>
		<li><a href="#">Opci&oacute;n 4.1</a></li>
		<li><a href="#">Opci&oacute;n 4.2</a></li>
		<li><a href="#">Opci&oacute;n 4.3</a></li>
		<li><a href="http://www.idplus.org">idplus.org</a></li>
	</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
</li>
  <li class="nivel1"><a href="../../index.php" class="nivel1">S A L I R </a>
<!--[if lte IE 6]><a href="#" class="nivel1ie">Opción 5<table class="falsa"><tr><td><![endif]-->
	<ul>
		<li><a href="../../contactos.php">Contactos</a></li>
		<li><a href="#">Opci&oacute;n 5.2</a></li>
		<li><a href="http://www.idplus.org">idplus.org</a></li>
	</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
</li>
</ul>
</div><!--fin menu -->
        
      </div><!--fin menuPrincipal -->
      <div style="background-color:#666;color:#FFF" align="center"><h3>A D M I N I S T R A D O R</h3></div>
      <!-- InstanceBeginEditable name="Slider" -->Slider<!-- InstanceEndEditable -->
      
      <div class="hojaTrabajo">
      		<div class="contenido"><!-- InstanceBeginEditable name="Contenido" -->
<form action="../PHP/nuevo.php" method="post">           
   <table width="100%" border="1" class="contenedor">
  <tr>
    <td>CODIGO EQUIPO</td>
    <td><input type="text" name="codEquipo"></td>
  </tr>
  <tr>
    <td>TIPO</td>
    <td><select name="opcionTipo" >
            <option>PC-CPU</option>
            <option>Laptop</option>
            <option>MINI LAPTOP</option>
            <option>Electronico</option>
            <option>Celulares</option>
            <option>Tablet</option>
            <option>Impresoras</option>
            <option>Software</option>
            <option>Otros</option>
        </select></td>
  </tr>
  <tr>
  <td>DESCRIPCION EQUIPO</td>
  <td><textarea name="descripcion" cols="40" rows="5" id="descripcion"></textarea></td>
  </tr>
  <tr>
    <td>CLIENTE</td>
    <td><input type="text" name="cliente" id="cliente"></td>
  </tr>
  <tr>
    <td>EMPLEADO</td>
    <td><select  name="opcionEmpleado">
            <option>Ing</option>
            <option>Suco</option>
            <option>Gonza</option>
            <option>Carlos</option>
            <option>Angita</option>
            
        </select></td>
  </tr>
  <tr>
    <td>FECHA ASIGNACION</td>
    <td><input type="date" name="fechaA" id="fechaA" ></td>
  </tr>
  <tr>
    <td>PROBLEMA</td>
    <td><textarea name="problema" cols="40" rows="8" id="problema"></textarea></td>
  </tr>
  <tr>
    <td>ESTADO</td>
    <td><select name="opcionEstado" id="opcionEstado" >
            <option>Pendiente</option>
            <option>Listo</option>
            <option>Revisado</option>
            <option>No revisado</option>
            
        </select></td>
  </tr>
  <tr>
    <td>FECHA ENTREGA</td>
    <td><input type="date" name="fechaE"></td>
  </tr>
  <tr>
    <td>FECHA TERMINO</td>
    <td><input type="date" name="fechaT"></td>
  </tr>
  <tr>
    <td>INFORME TECNICO</td>
    <td><textarea  cols="40" rows="8" name="informe"></textarea></td>
  </tr>
  <tr>
    <td>NOTAS</td>
    <td><textarea name="notas" cols="40" rows="8" id="notas"></textarea></td>
  </tr>
 </table>
 <br>

 <table width="100%" border="1" class="contenedor">
  <tr>
  <td>MONTO</td>
  <td><input type="text" name="monto"></td>
  </tr>
  
  <tr>
  <td>ABONO</td>
  <td><input type="text"  name="abono"></td>
  </tr>
  
  <tr>
  <td>SALDO</td>
  <td><input type="text" name="saldo"></td>
  </tr>
  
</table>
</br>
 <div style="width:14%" align="right"> <input type="submit"  value="G U A R D A R " class="boton"></div>


</form>
<div style="width:98%" align="right"><input onclick="regresar();" type="submit"  value="R E G R E S A R" class="boton"></div>


      		<!-- InstanceEndEditable -->
          
            </div><!--fin contenido -->
            
        <div class="otroContenido" >
          
          <div class="noticia">
          <div class="tituloNoticia">Noticia</div>
            Aqui 
            van 
            a
            ir
            las
            noticias
            de codesoft            
          </div>
          
          <div class="noticia">
          <div class="tituloNoticia">Avizo</div>
            Aqui puede
            ir algun avizo a 
            nuestros clientes
          </div>
          
        <!-- InstanceBeginEditable name="otroContenido" --> otro contenido
		<!-- InstanceEndEditable -->
        </div><!--fin otroCOntenido -->
                       
      </div> <!--fin hojaTrabajo -->
  <div class="piePagina">
  			<div class="textoPiePagina" align="center"> 
            Codesoft 2014 - todos los derechos reservados
            </div>       <!--fin texto pie de pagina -->   	
    </div><!--fin pie de pagina -->
    </div> <!--fin contenedor -->
	
</body>
<!-- InstanceEnd --></html>
