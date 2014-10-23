<?php
//include_once '../../Core/Conexion.php';
include_once '../../Core/Conexion.php';
include_once '../../Core/Controlador.php';
include_once '../../Core/ControladorSet.php';

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of listaPendientes
 *
 * @author Suco
 */
class listaPendientes extends ControladorSet{
    
    
    
    public function buscarValores() {
        session_start();
        
        
        
        
        $consulta=$this->conexion->consultaLibre("SELECT *FROM REPARACIONES WHERE ESTADO='listo'");
        $fila=  mysql_fetch_array($consulta);
        
         $codigoHtml="";
    
        do{
            
            $codigoHtml=$codigoHtml."<tr>";
            $codigoHtml=$codigoHtml."<td>".$fila[0]."</td>";
            $codigoHtml=$codigoHtml."<td>".$fila[1]."</td>";
            $codigoHtml=$codigoHtml."<td>".$fila[2]."</td>";
            $codigoHtml=$codigoHtml."<td>".$fila[5]."</td>";
            $codigoHtml=$codigoHtml."<td>".$fila[11]."</td>";
            $codigoHtml=$codigoHtml."<td>".$fila[12]."</td>";
            $codigoHtml=$codigoHtml."<td>".$fila[13]."</td>";
            $codigoHtml=$codigoHtml."<td> <a href='listaLcompleto.php?codigo=".$fila[0]."'>Ver Detalles<a/> </td>";
            $codigoHtml=$codigoHtml."</tr>";
            
        }while ($fila=mysql_fetch_array($consulta));
        
        $this->diccionario["datosTabla"]=$codigoHtml;
        
        if(isset($_SESSION['administrador'])){
//            
            $this->diccionario["valor"]=1;
            $this->diccionario["empleado"]=$_SESSION['administrador'];
        
            
        }else{
            
            $this->diccionario["valor"]=0;
            $this->diccionario["empleado"]=$_SESSION['colaborador'];
        }
        
    }

    public function setDiccionario() {
        
        $this->diccionario= array(
           "datosTabla"=>"",
           "valor"=>"",
            "empleado"=>"",
           
       );
    }

//put your code here
}
$controlador= new listaPendientes("listarListos.php");
$controlador->rederizarPagina();
?>