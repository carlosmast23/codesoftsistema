<?php
include_once '../Core/Conexion.php';
include_once '../Core/Controlador.php';
include_once '../Core/ControladorSet.php';
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of buscar
 *
 * @author Suco
 */
class buscar extends ControladorSet {
    
    
    public function buscarValores() {
        session_start();    
       $consulta=$this->conexion->consultaLibre("SELECT *FROM REPARACIONES WHERE CODIGOEQUIPO='".$_GET['buscar']."'");
       $fila= mysql_fetch_array($consulta);
       
       $codigoHtml="";
       
       if(strcmp($fila[0],$_GET['buscar'])==0){
          
           do{
            
            $codigoHtml=$codigoHtml."<tr>";
            $codigoHtml=$codigoHtml."<td>".$fila[0]."</td>";
            $codigoHtml=$codigoHtml."<td>".$fila[1]."</td>";
            $codigoHtml=$codigoHtml."<td>".$fila[4]."</td>";
            $codigoHtml=$codigoHtml."<td>".$fila[2]."</td>";
            $codigoHtml=$codigoHtml."<td>".$fila[3]."</td>";
            $codigoHtml=$codigoHtml."<td>".$fila[5]."</td>";
            $codigoHtml=$codigoHtml."<td>".$fila[6]."</td>";
           
            $codigoHtml=$codigoHtml."<td> <a href='./administrador/listaLcompleto.php?codigo=".$fila[0]."'>Ver Detalles<a/> </td>";
            $codigoHtml=$codigoHtml."</tr>";
            
            }while ($fila=mysql_fetch_array($consulta));
        
                 $this->diccionario["datosTabla"]=$codigoHtml;
           
       }else{
           
           echo('<script> alert("Equipo no encontrado"); </script>');
       }
       
       if(isset($_SESSION['administrador'])){
           
             $this->diccionario["codigo"]=1;
             $this->diccionario["empleado"]=$_SESSION['administrador'];
       }else{
           $this->diccionario["codigo"]=0;
            $this->diccionario["empleado"]=$_SESSION['colaborador'];
       }
       
      
  
            
           
        
            
        
            
           
           
        
       
    }

    public function setDiccionario() {
        $this->diccionario= array(
           "datosTabla"=>"",
            "empleado"=>"",
          
           
       );
    }

//put your code here
}
//include_once './administrador/listaLcompleto.php';
$controlador= new buscar("./buscarVista.php");
$controlador->rederizarPagina();
?>
