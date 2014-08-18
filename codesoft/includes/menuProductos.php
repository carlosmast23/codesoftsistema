<?php
include_once 'Core/Conexion.php';
include_once 'Core/Controlador.php';
include_once 'Core/InterfazDatos.php';
include_once 'Admin/entidades/Categoria.php';

      
 class Grabar extends Controlador
{
   function __construct() {
        parent::__construct();
    }
    
    public function ejecutar() 
    {
        $entidad=new Categoria("","","","");
        $consulta=$this->conexion->consultaTabla($entidad);
        $fila=mysql_fetch_array($consulta);
        
       do
        {
           
            echo "<li><a href=\" productosVista.php?codigo=".$fila[0]."&nombre=".$fila[1]." \">".$fila[1]."</a></li>";
            //echo "\"hola\"";
            
        }while($fila=mysql_fetch_array($consulta));
    }    //put your code here
}

$controlador=new Grabar();
$controlador->ejecutar();
 
 
        
        
?>