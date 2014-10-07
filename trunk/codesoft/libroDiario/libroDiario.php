<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/principalAdministrador.dwt.php" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Codesoft</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script>
ingresos=[ingreso];
caja=[caja];
egresos=[egreso];
function agregar(codigo){

var cantidad=document.getElementById("cantidad").value;	
var valor=document.getElementById("opcion").value;
var comentario=document.getElementById("comentarios").value;
			

		if(valor=="Ingresos"){
			
			ingresos=parseFloat(ingresos)+parseFloat(cantidad);
			caja=parseFloat(ingresos)-parseFloat(egresos);
			var tablaT=document.getElementById("tablaTotal");
			var tabla=document.getElementById('tablaBalance');
			
		
			//alert('ok');
			var ultimaFila=tabla.rows.length;
			var filaNueva=tabla.insertRow(ultimaFila);
			
			filaNueva.style.background="#65e11a";
			filaNueva.insertCell(0).innerHTML=codigo;
			filaNueva.insertCell(1).innerHTML=cantidad;
			filaNueva.insertCell(2).innerHTML=valor;
			filaNueva.insertCell(3).innerHTML=comentario;
			
			document.getElementById("tingresos").value=ingresos;
			document.getElementById("tegresos").value=egresos;
			document.getElementById("tcaja").value=caja;
			filaNueva.insertCell(4).innerHTML="<input width='30%' onClick=\"eliminar("+codigo+","+cantidad+",'"+valor+"');\" 				class='boton2' name='' 	type='button' value='eliminar' />";
			
		}else{
			
			egresos=parseFloat(egresos)+parseFloat(cantidad);
			caja=parseFloat(ingresos)-parseFloat(egresos);
			
			var tablaT=document.getElementById("tablaTotal");
			var tabla=document.getElementById('tablaBalance');
			
			
			
			//alert('ok');
			var ultimaFila=tabla.rows.length;
			var filaNueva=tabla.insertRow(ultimaFila);
			
			filaNueva.style.background="#ffd086";
			filaNueva.insertCell(0).innerHTML=codigo;
			filaNueva.insertCell(1).innerHTML=cantidad;
			filaNueva.insertCell(2).innerHTML=valor;
			filaNueva.insertCell(3).innerHTML=comentario;
			document.getElementById("tingresos").value=ingresos;
			document.getElementById("tegresos").value=egresos;
			document.getElementById("tcaja").value=caja;
			filaNueva.insertCell(4).innerHTML="<input width='30%' onClick=\"eliminar("+codigo+","+cantidad+",'"+valor+"');\" 				class='boton2' name='' 	type='button' value='eliminar' />";
		}
		
		
					
		

		
				
}
			//alert('ok todo bien');
function eliminar(codigo,cantidad,tipo){
//alert(ultimafila);	
//alert('ok');
var id_libro=document.getElementById("id_libro").value;
var url1="codigo="+codigo+"&cantidad="+cantidad+"&tipo="+tipo+"&id_libro="+id_libro;

$.ajax({
			data:url1,
			url:'PHP/eliminar.php',
			type:'post',
			beforeSend:function()
			{
				//$("#sigge").val("Procesando, espere por favor...");
				//$("#nombres").val("Procesando, espere por favor...");
			},
			success:function(respuesta)
			{
				//alert(respuesta);
				//agregar(respuesta);
				if(respuesta==""){
					
					quitar(codigo);
					
						
				}else{
					alert("Dato no eliminado"+"ERROR : "+respuesta);
				
				}
				
			},
				
			});
	
	
	}		
		
function quitar(codigo)
	{
		
		var tabla=document.getElementById('tablaBalance');
		
				for(var i=1;i<tabla.rows.length;i++)
		{
			if(codigo==tabla.rows[i].cells[0].innerHTML)
			{
				var acCantidad=tabla.rows[i].cells[1].innerHTML;
				var acTipo=tabla.rows[i].cells[2].innerHTML;
				//alert(acCantidad);
				tabla.deleteRow(i);
				alert('El registro con codigo : '+codigo+' fue quitado correctamente');
				actualizarTotales(acCantidad,acTipo);
				
					
					
					
			}
		}
				
				
				
	}		
function actualizarTotales(acCantidad, acTipo){
var tablaT=document.getElementById("tablaTotal");

	
	
					if(acTipo=="Ingresos"){
						
						ingresos=parseFloat(ingresos)-parseFloat(acCantidad);
						caja=parseFloat(ingresos)-parseFloat(egresos);
		
					}else{
		
						egresos=parseFloat(egresos)-parseFloat(acCantidad);
						caja=parseFloat(ingresos)-parseFloat(egresos);
					}
		
				document.getElementById("tingresos").value=ingresos;
			document.getElementById("tegresos").value=egresos;
			document.getElementById("tcaja").value=caja;
	

}	

function grabarbase(){

var cantidad=document.getElementById("cantidad").value;	
var tipo=document.getElementById("opcion").value;
var comentario=document.getElementById("comentarios").value;
var id_libro=document.getElementById("id_libro").value;
var fecha="";



var tingresos=document.getElementById("tingresos").value;

var tegresos=document.getElementById("tegresos").value;
var tcaja=document.getElementById("tcaja").value;

var url1="fecha="+fecha+"&tipo="+tipo+"&comentario="+comentario+"&cantidad="+cantidad+"&id_libro="+id_libro+
"&tingresos="+tingresos+"&tegresos="+tegresos+"&tcaja="+tcaja;
//alert(url1);
$.ajax({
			data:url1,
			url:'PHP/grabar.php',
			type:'post',
			beforeSend:function()
			{
				
			},
			success:function(respuesta)
			{
				
				agregar(respuesta);
				//alert(respuesta);
				
				
			},
				
			});
		
	
	
}	
</script>
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
<link href="../css/principal.css" rel="stylesheet" type="text/css" />
<link href="../css/menu-1.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div class="contenedor">
  <div class="cabezera">
        	<div class="logo"/><!--fin logo -->
       	        
  </div><!--fin cabezera -->
      
      <div class="menuPrincipal">
      		<div id="menu">           
            
      
<ul>
  <li class="nivel1"><a href="" class="nivel1">P E R S O N A S</a>
<!--[if lte IE 6]><a href="#" class="nivel1ie">Opción 1<table class="falsa"><tr><td><![endif]-->
	<ul>
		<li><a href="../Admin/cliente/lista.php">Clientes</a></li>
        <li><a href="../Admin/distribuidor/lista.php">Distribuidor</a></li>
		
	</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
  </li>
  <li class="nivel1"><a href="#" class="nivel1">P R O D U C T O S</a>
<!--[if lte IE 6]><a href="#" class="nivel1ie">Opción 2<table class="falsa"><tr><td><![endif]-->
	<ul>
		<li><a href="../Admin/categoria/lista.php">Categoria</a></li>
		<li><a href="../Admin/distribuidor/lista.php">Distribuidor</a></li>
		<li><a href="../Admin/listaProductos/lista.php">Lista Productos</a></li>
		<li><a href="../Admin/producto/lista.php?hoja=0">Productos</a></li>
		<li><a href="../Admin/producto/pdf/ListaExistencias.php">Reporte Productos</a></li>
	</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
</li>
  <li class="nivel1"><a href="#" class="nivel1">V E N T A S</a>
<!--[if lte IE 6]><a href="#" class="nivel1ie">Opción 3<table class="falsa"><tr><td><![endif]-->
	<ul>
		<li><a href="../Admin/venta/venta.php">Vender</a></li>
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
  <li class="nivel1"><a href="../index.php" class="nivel1">S A L I R </a>
<!--[if lte IE 6]><a href="#" class="nivel1ie">Opción 5<table class="falsa"><tr><td><![endif]-->
	<ul>
		<li><a href="../contactos.php">Contactos</a></li>
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
      		  <p><h2>LIBRO DIARIO</h2></p>
 
 <table width="50%" border="0" class="">
  <tr>
    <td>CANTIDAD </td>
    <td>SELECCIONE</td>
    <td>COMENTARIOS</td>
  </tr>
  <tr>
    <td><INPUT type=text name="cantidad" id="cantidad"></td>
    <td><select name="opcion" id="opcion">
<option>Ingresos</option>
<option>Egresos</option>
</select>
    <!--<INPUT type=text name="egresos" id="egresos"></td>-->
    <td><INPUT type=text name="comentarios" id="comentarios"></td>
    <td><INPUT onclick="grabarbase();" type="submit" value="agregar" id="agregar"></td>
  </tr>
</table>
</br>
</br>
<div align="right">
<table width="50%" border="0" id="tablaTotal">
  <tr>
    <td>TOTAL INGRESOS</td>
    <td>TOTAL EGRESOS</td>
    <td>TOTAL CAJA</td>
  </tr>
  <tr>
    <td><INPUT size="5" value="[totalI]" type="text" name="tingresos" id="tingresos"></td>
    <td><INPUT size="5"  value="[totalE]"type="text" name="tegresos" id="tegresos"></td>
  	<td><INPUT size="5"  value="[totalC]" type="text" name="caja" id="tcaja"></td>
    
  </tr>
</table>
<input type="hidden" value="[codigo]" id="id_libro">
</div>

<table width="100%" border="1" class="contenedor" id="tablaBalance">
  <tr>
  	<td width="10%">CODIGO</td>
    <td>CANTIDAD</td>
    <td>TIPO</td>
    <td>COMENTARIOS</td>
    
  </tr>
  [datosTotales]
</table>

<p align="right"><a href='lista.php'  >Regresar<a/></p>

              
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
