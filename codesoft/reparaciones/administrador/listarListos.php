<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/principalAdministrador.dwt.php" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Codesoft</title>
<script>
window.addEventListener("load", iniciar, false);

function iniciar(){	
//alert([valor]);
if([valor]==1)	
	
	var select = document.getElementById("opcion");
	var option = document.createElement('option');
	
	option.text = option.value = "Crear Nuevo";
	
    select.add(option, 0);
	

}

function redireccionar() {
var valor = document.getElementById("opcion").value;
	
if(valor=="Listos"){
	
	window.location="./listaListos.php";

	
	}else if(valor=="Pendiente"){
		
		if([valor]==1){			
               
				window.location="./listaPendientes.php"; 

			}else{
				
					window.location=				"../Colaborador/listaPendientes.php";
				                 
			}
		//window.location="./listaPendientes.php";
	}else{
		
			window.location="./listaVista.php";
			
		}
	
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
 
 <h2>LISTA DE ARREGLO DE EQUIPOS</h2>
            <br/>
 <form action="../buscar.php" method="get">         
          <table class="contenedor" width="100%" border="1">
  <tr>
    <td> <select onchange="redireccionar();" style="background-color:#FF9" name="listaTrabajos" id="opcion">
      		
            <option>Listos</option>
      		<option>Pendiente</option>
      </select></td>
    <td>[empleado]</td>
    <td>Buscar<input type="text" name="buscar" ><input type="submit" value="B U S C A R"></td>
    
  </tr>
</table>
      <br/>
      <br/>    
 
  <table width="100%" border="1" class="contenedor">
  <tr>
    <td>EQUIPO</td>
    <td>CLIENTE</td>
    <td>COLABORADOR</td>
    <td>FECHA ASIGNACION</td>
    <td>MONTO</td>
    <td>ABONO</td>
    <td>SALDO</td>
  </tr>
  [datosTabla]
</table>
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
