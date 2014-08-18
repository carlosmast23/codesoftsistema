<?php
include_once '../../../Core/Controlador.php';
include_once '../../../Core/Conexion.php';
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of consultaDeudas
 *
 * @author home
 */
class ConsultaListaProducto extends Controlador
{
    public function __construct() {
        parent::__construct();
    }
    
    public function ejecutar() {
        $lista=$this->conexion->consultaLibre("SELECT * FROM LISTAPRODUCTO WHERE CODIGOPRIMARIO='".$_REQUEST['codigo']."'");
        $fila=  mysql_fetch_array($lista);
       $total=  mysql_num_rows($lista);
       //echo $total;
       if($total==0)
       {
           echo "nada";
       }
       else
       {
           if($fila[11]==0)
           {
               $lista2=$this->conexion->consultaLibre("SELECT * FROM PRODUCTO WHERE CODIGOPRIMARIO='".$fila[0]."'");
               $fila2=  mysql_fetch_array($lista2);
               echo $fila[11]."]".$fila2[11]."]";
            
           }
            
       }
      //  do
       // {
        //    echo $fila[0]."]".$fila[1]." ".$fila[2].",";            
      //  }while($fila=  mysql_fetch_array($lista));
        
    }    
}
$controlador=new ConsultaListaProducto();
$controlador->ejecutar();
?>
