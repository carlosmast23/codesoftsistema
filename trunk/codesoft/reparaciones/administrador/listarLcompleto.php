<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/principalAdministrador.dwt.php" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Codesoft</title>
<script>
window.addEventListener("load", iniciar, false);
function iniciar(){
var f = new Date();
var fecha=f.getDate() + "-" + (f.getMonth() +1) + "-" + f.getFullYear();
document.getElementById("fecha").value=fecha;
}

</script>
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
      
<form action="../Colaborador/php/actualizar.php" method="post">      
     
      		  <table width="100%" border="1" class="contenedor">
  <tr>
    <td>CODIGO EQUIPO</td>
   	 <td><input type="text" name="codigo" value="[datos1]"></td>
  </tr>
  <tr>
    <td>TIPO</td>
    <td>[datos2]</td>
  </tr>
  <tr>
  <td>DESCRIPCION EQUIPO</td>
   <td>[datos3]</td>
  </tr>
  <tr>
    <td>CLIENTE</td>
    <td>[datos4]</td>
  </tr>
  <tr>
    <td>EMPLEADO</td>
     <td>[datos5]</td>
  </tr>
  <tr>
    <td>FECHA ASIGNACION</td>
     <td>[datos6]</td>
  </tr>
  <tr>
    <td>PROBLEMA</td>
    <td>[datos7]</td>
  </tr>
  <tr>
    <td>ESTADO</td>
    <td><select name="estado"> 
    	<option>[datos8]</option>
        <option>Entregado</option>
        </select></td>
            
       
  </tr>
  <tr>
    <td>FECHA ENTREGA</td>
     <td><input type="text" name="fechaEntrega" id="fecha" ></td>
  </tr>
  <tr>
    <td>FECHA TERMINO</td>
     <td>[datos10]</td>
  </tr>
  <tr>
    <td>INFORME TECNICO</td>
    <td>[datos11]</td>
  </tr>
  <tr>
    <td>NOTAS</td>
     <td>[datos12]</td>
  </tr>
 </table>
 
 <br>

 <table width="100%" border="1" class="contenedor">
  <tr>
  <td>MONTO</td>
   <td><input name="monto" type="number" value="[datos13]"></td>
  </tr>
  
  <tr>
  <td>ABONO</td>
   <td><input name="abono" type="number" value="[datos14]"></td>
   
  </tr>
  
  <tr>
  <td>SALDO</td>
   <td><input name="saldo" type="number" value="[datos15]"></td>
  </tr>
  
</table>
<div align="center" style="width:100%"><input type="submit" value="Aceptar" class="boton"></div>
</form>  
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
