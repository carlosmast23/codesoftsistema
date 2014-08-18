<?php
include_once '../../../Core/Controlador.php';
include_once '../../../Core/Conexion.php';
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class ConsultaProducto extends Controlador
{
    public function __construct() {
        parent::__construct();
    }
    
    public function ejecutar() {
       $lista=$this->conexion->consultaLibre("SELECT L.NOMBRE,L.MODELO,C.NOMBRE,L.PRECIO,COUNT(P.CODIGOPRIMARIO) AS STOCK FROM PRODUCTO P,LISTAPRODUCTO L,CATEGORIA C WHERE L.CODIGOPRIMARIO=P.CODIGOPRIMARIO AND L.CODIGOCATEGORIA=C.CODIGOCATEGORIA AND P.STOCK IS NULL AND P.CODIGOPRODUCTO='".$_REQUEST['codigo']."' GROUP BY P.CODIGOPRIMARIO ORDER BY C.NOMBRE,L.NOMBRE,L.MODELO");
       $fila=  mysql_fetch_array($lista);
       $total=  mysql_num_rows($lista);
       //echo $total;
       if($total==0)
       {
           $lista2=$this->conexion->consultaLibre("SELECT L.NOMBRE,L.MODELO,C.NOMBRE ,L.PRECIO,P.STOCK FROM PRODUCTO P,LISTAPRODUCTO L,CATEGORIA C WHERE L.CODIGOPRIMARIO=P.CODIGOPRIMARIO AND L.CODIGOCATEGORIA=C.CODIGOCATEGORIA AND L.STOCK=0 AND P.CODIGOPRIMARIO='".$_REQUEST['codigo']."' ORDER BY C.NOMBRE,L.NOMBRE,L.MODELO");
           $fila2=  mysql_fetch_array($lista2);
           $total2=  mysql_num_rows($lista2);
           if($total2==0)
           {
               echo "no se encontro el producto";
           }
           else
           {
            echo $fila2[0]." ".$fila2[1]."]".$fila2[2]."]".$fila2[3]."]".$fila2[4]."]1]";               
           }
           
       }
       else
       {
          echo $fila[0]." ".$fila[1]."]".$fila[2]."]".$fila[3]."]".$fila[4]."]0]";                       
       }
     
        
    }    
}
$controlador=new ConsultaProducto();
$controlador->ejecutar();
?>
