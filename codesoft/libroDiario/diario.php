<?php
include_once '../Core/Conexion.php';
include_once '../Core/ControladorSet.php';
include_once '../Core/InterfazDatos.php';
include_once '../Admin/entidades/libroDiario.php';
//include_once './libroDiario.php';
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of diario
 *
 * @author Suco
 */
class diario extends ControladorSet{
    
    public function buscarValores() {
     
     $consulta=  $this->conexion->consultaLibre("SELECT *FROM LIBROITEMS WHERE ID_LIBRO='".$_REQUEST['codigo']."'");
     $fila=  mysql_fetch_array($consulta);
     $consultaL=  $this->conexion->consultaLibre("SELECT *FROM LIBRODIARIO WHERE ID_LIBRO='".$_REQUEST['codigo']."'");
     
     $filal=  mysql_fetch_array($consultaL);
     
     $codigoHtml="";
     $tingresos=0;
     $tegresos=0;
     $tcaja=0;
     
     do{
        
         $tingresos=$filal[2];
         $tegresos=$filal[3];
         $tcaja=$filal[4];
         
        
    }while(mysql_fetch_array($consultaL));
     if(mysql_num_rows($consulta)>0)
     do
     {
      if(strcmp($fila[3],"Ingresos")==0){
          
        $codigoHtml=$codigoHtml."<tr style=\"background:#65e11a\" >";  
      }else{
          
           $codigoHtml=$codigoHtml."<tr style=\"background:#ffd086\" >";  
          
      }  
      
        
        $codigoHtml=$codigoHtml."<td>".$fila[0]."</td>";
        $codigoHtml=$codigoHtml."<td>".$fila[2]."</td>";
        $codigoHtml=$codigoHtml."<td>".$fila[3]."</td>";
        $codigoHtml=$codigoHtml."<td>".$fila[4]."</td>";
        $codigoHtml=$codigoHtml."<td>"."<input width='30%' onClick='eliminar(".$fila[0].");' class='boton2' name='' "
                . "		type='button' value='eliminar' /></td>";
        $codigoHtml=$codigoHtml."</tr>";
        
        
        
         
     }while($fila=  mysql_fetch_array($consulta));
    
     
     $this->diccionario["datosTotales"]=$codigoHtml;
     $this->diccionario["codigo"]=$_REQUEST['codigo'];
     $this->diccionario["totalI"]=$tingresos;
     $this->diccionario["totalE"]=$tegresos;
     $this->diccionario["totalC"]=$tcaja;
     $this->diccionario["ingreso"]=$tingresos;
     $this->diccionario["egreso"]=$tegresos;
     $this->diccionario["caja"]=$tcaja;
     
    }

    public function setDiccionario() {
        
        $this->diccionario= array(
           "datosTotales"=>"",
           "codigo"=>"",
           "totalI"=>"",
           "totalE"=>"",
           "totalC"=>"", 
           "ingreso"=>"",
           "egreso"=>"",
           "caja"=>"", 
       );
    }

//put your code here
}
$controlador=new diario('libroDiario.php');
$controlador->rederizarPagina();
?>