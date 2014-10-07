<?php
include_once '../Core/Conexion.php';
include_once '../Core/ControladorSet.php';
include_once '../Core/InterfazDatos.php';
include_once '../Admin/entidades/libroDiario.php';

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of lista
 *
 * @author Suco
 */
class lista extends ControladorSet {
    
    
 public function buscarValores() {
     
     $consulta=  $this->conexion->consultaLibre("SELECT *FROM LIBRODIARIO");
     $fila=  mysql_fetch_array($consulta);
    
     $codigoHtml="";
    
     
     $fecha=date("o-m-d");
     do
     {
       
        $codigoHtml=$codigoHtml."<tr>";
        $codigoHtml=$codigoHtml."<td>".$fila[0]."</td>";
        $codigoHtml=$codigoHtml."<td>".$fila[1]."</td>";
        $codigoHtml=$codigoHtml."<td>".$fila[2]."</td>";
        $codigoHtml=$codigoHtml."<td>".$fila[3]."</td>";
        
        if(strcmp($fecha,$fila[1])==0){
          //echo("<script> alert('->".$fecha."<-'+'->".$fila[1]."<-'); </script>");  
          $codigoHtml=$codigoHtml."<td> <a href='diario.php?codigo=".$fila[0]."' >Agregar<a/></td>";
         } 
        $codigoHtml=$codigoHtml."</tr>";
         
     }while($fila=  mysql_fetch_array($consulta));
    
     
     $this->diccionario["datosTabla"]=$codigoHtml;
         
    }

    public function setDiccionario() {
        $this->diccionario= array(
           "datosTabla"=>"",
           
           
       );
    }    //put your code here
}

$controlador=new lista('listaVista.php');
$controlador->rederizarPagina();
?>

