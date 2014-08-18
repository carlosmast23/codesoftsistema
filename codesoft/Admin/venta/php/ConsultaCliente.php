<?php
include_once '../../../Core/Controlador.php';
include_once '../../../Core/Conexion.php';
/*
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of ConsultaCliente
 *
 * @author home
 */
class ConsultaCliente extends Controlador
{
    public function __construct() {
        parent::__construct();
    }
    
    public function ejecutar() {
       $lista=$this->conexion->consultaLibre("SELECT * FROM CLIENTE WHERE RUC_CI='".$_REQUEST['cedula']."'");
       $fila=  mysql_fetch_array($lista);
       $total=  mysql_num_rows($lista);
       //echo $total;
       if($total==0)
       {
           echo "nada";
       }
       else
       {
           echo $fila[2]." ".$fila[4]."]".$fila[6]."]".$fila[10]."]".$fila[12]."]";
                       
       }
     
        
    }    
}
$controlador=new ConsultaCliente();
$controlador->ejecutar();
?>

