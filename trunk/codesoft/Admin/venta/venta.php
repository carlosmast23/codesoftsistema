<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/principalAdministrador.dwt.php" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Codesoft</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script type="text/javascript" src="../../../js/jquery-1.10.1.min.js"></script>
<script>
	
	var tot=0;
	function buscarCliente()
	{
		//alert("asdasd");
		 var datos="cedula="+document.getElementById('cedula').value;
		 //alert(datos);
		 $.ajax({
                                                data:  datos,
                                                url:   'php/ConsultaCliente.php',
                                                type:  'post',
                                                beforeSend: function () {
                                                                $("#aux").val("Procesando, espere por favor...");
															   //alert('todo bien');
                                                },
                                                success:  function (response) 
                                                {
                                                                //$("#nomDeuda").val(response);
																//alert('todo bien');
							//								alert(responce);
																var resultado=response.split(']');
																$("#nombre").val(resultado[0]);
																$("#direccion").val(resultado[1]);
																$("#telefono").val(resultado[2]);
																
																
																
                                                                
                                                }
                                });
	}	
	
	function buscarProducto()
	{
		//alert("asdasd");
		 var datos="codigo="+document.getElementById('codigo2').value;
		 //alert(datos);
		 $.ajax({
                                                data:  datos,
                                                url:   'php/ConsultaProducto.php',
                                                type:  'post',
                                                beforeSend: function () {
                                                                $("#aux").val("Procesando, espere por favor...");
															   //alert('todo bien');
                                                },
                                                success:  function (response) 
                                                {
                                                                //$("#nomDeuda").val(response);
																//alert('todo bien');
							//								alert(responce);
																var resultado=response.split(']');
																$("#nombre2").val(resultado[0]);
																$("#precio").val(resultado[2]);
																$("#stock").val(resultado[3]);
																if(resultado[4]=="0")
																{
																	$("#cantidad").val("1");	
																	document.getElementById('cantidad').readOnly=true;
																}
																else
																{
																	$("#cantidad").val("1");	
																	document.getElementById('cantidad').readOnly=false;
																}
																
																//$("#direccion").val(resultado[1]);
															//	$("#telefono").val(resultado[2]);
																
																
																
                                                                
                                                }
                                });
								
	//document.getElementById('codigo2').focus();
	document.getElementById('codigo2').select();
	}	
	
	function agregarProducto()
	{
		
		var codigo=document.getElementById('codigo2').value;	
		var nombre=document.getElementById('nombre2').value;	
		var precio=document.getElementById('precio').value;	
		var cantidad=document.getElementById('cantidad').value;	
		var subTotal=Number(precio)*Number(cantidad);
		
		var tabla=document.getElementById('detalle');
		var tam=tabla.rows.length;
		var fila=tabla.insertRow(tam);
		 fila.insertCell(0).innerHTML=codigo;
		 fila.insertCell(1).innerHTML=nombre;
		 fila.insertCell(2).innerHTML=precio;
		 fila.insertCell(3).innerHTML=cantidad;
		 fila.insertCell(4).innerHTML=subTotal;
		 
		 //aumenta los valores de los precios
		 tot+=Number(subTotal);
		 document.getElementById('iva').value=Math.round(tot*0.12*100)/100;
		 document.getElementById('total').value=Math.round(tot*1.12*100)/100;
		 document.getElementById('sub').value=tot;		 
		 //alert('ok');
		 document.getElementById('codigo2').select();
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
		<li><a href="../cliente/lista.php">Clientes</a></li>
        <li><a href="../distribuidor/lista.php">Distribuidor</a></li>
		
	</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
  </li>
  <li class="nivel1"><a href="#" class="nivel1">P R O D U C T O S</a>
<!--[if lte IE 6]><a href="#" class="nivel1ie">Opción 2<table class="falsa"><tr><td><![endif]-->
	<ul>
		<li><a href="../categoria/lista.php">Categoria</a></li>
		<li><a href="../distribuidor/lista.php">Distribuidor</a></li>
		<li><a href="../listaProductos/lista.php">Lista Productos</a></li>
		<li><a href="../producto/lista.php?hoja=0">Productos</a></li>
		<li><a href="../producto/pdf/ListaExistencias.php">Reporte Productos</a></li>
	</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
</li>
  <li class="nivel1"><a href="#" class="nivel1">V E N T A S</a>
<!--[if lte IE 6]><a href="#" class="nivel1ie">Opción 3<table class="falsa"><tr><td><![endif]-->
	<ul>
		<li><a href="venta.php">Vender</a></li>
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
      		  <div style="background:#CCC" align="center">
              <form action="php/GrabarProductosSinCodigo.php" method="post">
                 
                    
                    <table width="600" border="1">
                      <tr>
                        <td>
                            Cedula:
                        </td>
                        <td>
                            <input name="cedula" id="cedula" type="text" onblur="buscarCliente();" />
                        </td>
                      </tr>
                      <tr>
                        <td>Nombre:</td>
                        <td>
                           <input name="nombre" id="nombre" type="text" />
                        </td>
                      </tr>
                      
                       <tr>
                        <td>Direccion:</td>
                        <td>
                           <input name="direccion" id="direccion" type="text"/>
                        </td>
                      </tr>
                      
                      <tr>
                        <td>Telefono:</td>
                        <td>
                           <input name="telefono" id="telefono" type="text"/>
                        </td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                    </table>
                    
                   <table width="600" border="0" style="background:#69F">
                      <tr>
                        <td>Codigo:</td>
                        <td>Nombre:</td>
                        <td>Precio:</td>
                        <td>Stock</td>
                        <td>Cantidad:</td>
                      </tr>
                      <tr>
                        <td>
                         <input name="codigo2" id="codigo2" type="text" size="12" onblur=" buscarProducto();" />
                        </td>
                        <td>
                        <input name="nombre2" id="nombre2" type="text" size="30" readonly="readonly" />
                        </td>
                        <td>
                        <input name="precio" id="precio" type="text" size="5" readonly="readonly" />
                        </td>
                        <td>
                         <input name="stock" id="stock" type="text" size="5" readonly="readonly" />
                        </td>
                        
                        <td>
                         <input name="cantidad" id="cantidad" type="text" size="5" />
                        </td>
                        
                        <td>
                         <input value="Add" name="Agregar" type="button" onclick="agregarProducto();" />
                        </td>
                      </tr>
                    </table>
                  
                  
                    <table id="detalle" width="600" border="1" style="background: palegoldenrod">
                      <tr>
                        <td width="150">Codigo</td>
                        <td>Nombre</td>
                        <td width="50">Precio</td>
                        <td width="50">Cantidad</td>
                        <td width="50">Subtotal</td>
                      </tr>
                     
                    </table>
                    
                     <table id="subtotal" width="600" border="0" style="background:#69F">
                      <tr>
                        <td width="350"></td>
                        <td width="100">Subtotal:</td>
                        <td width="50">
                        	 <input name="sub" id="sub" type="text" size="5" readonly="readonly" />
                        </td>
                      </tr>
                      
                      <tr>
                        <td width="350"></td>
                        <td width="100">Iva:</td>
                        <td width="50">

                        	 <input name="iva" id="iva" type="text" size="5" readonly="readonly" />
                        </td>
                      </tr>
                      
                       <tr>
                        <td width="350"></td>
                        <td width="100">Total:</td>
                        <td width="50">
                        	 <input name="total" id="total" type="text" size="5" readonly="readonly" />
                        </td>
                      </tr>
                     
                    </table>

                  
              </form>
              </div>
              
              <script>
			  	//encerar todas las variables
				document.getElementById('iva').value=0;
				document.getElementById('total').value=0;
				document.getElementById('sub').value=0;		
			  </script>
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
