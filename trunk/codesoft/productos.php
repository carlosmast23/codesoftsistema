<?php
include_once 'Core/Conexion.php';
include_once 'Core/Controlador.php';
include_once 'Core/InterfazDatos.php';
include_once 'Admin/entidades/Categoria.php';
      
 class Productos extends Controlador
{
   function __construct() {
        parent::__construct();
    }
    
    public function ejecutar() 
    {
        $consulta=$this->conexion->consultaLibre("SELECT * FROM LISTAPRODUCTO WHERE CODIGOCATEGORIA='".$_REQUEST['codigo']."'");
        $fila=mysql_fetch_array($consulta);
        $cadena="<h2>Productos -> ".$_REQUEST['nombre']."</h2>";
        
        do
        {
            $cadena=$cadena."<tr>";
            $cadena=$cadena."<td><img  src='Admin/listaProductos/img/".$fila[6]."' width='200' height='200' /></td>";
            $cadena=$cadena."<td valign='top'>";
            $cadena=$cadena."<table width='100%' border=0>";
            $cadena=$cadena."<tr><td><h3>".$fila[3]."  ".$fila[5]."</h3></td></tr>";
            $cadena=$cadena."<tr><td> Marca: ".$fila[4]."</td></tr>";
            $cadena=$cadena."<tr><td> Modelo: ".$fila[5]."</td></tr>";
            $cadena=$cadena."<tr><td> Precio: ".$fila[8]."</td></tr>";
            $cadena=$cadena."<tr><td> Caracteristicas: ".$fila[12]."</td></tr>";
            $cadena=$cadena."<tr><td> Descripcion: ".$fila[19]."</td></tr>";
            $cadena=$cadena."</table>";
            $cadena=$cadena."</td>";            
            
            $cadena = $cadena . "</tr>";
            
        }while($fila=mysql_fetch_array($consulta));
        echo $cadena;
    }

   

//put your code here
}

$controlador=new Productos();
$controlador->ejecutar();
 ?>
        