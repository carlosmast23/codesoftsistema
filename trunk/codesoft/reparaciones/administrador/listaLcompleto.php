<?php
include_once '../../Core/Conexion.php';
include_once '../../Core/Controlador.php';
include_once '../../Core/ControladorSet.php';
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of listaPcompleto
 *
 * @author Suco
 */
class listaLcompleto extends ControladorSet {
    
    
    public function buscarValores() {
        
        $consulta=$this->conexion->consultaLibre("SELECT *FROM REPARACIONES WHERE CODIGOEQUIPO='".$_GET['codigo']."'");
        $fila= mysql_fetch_array($consulta);
        
       
            $equipo=$fila[0];
            $cliente=$fila[1];
            $empleado=$fila[2];
            $problema=$fila[3];
            $estado=$fila[4];
            $fechaasignar=$fila[5];
            $fechaentrega=$fila[6];
            $fechatermino=$fila[7];
            $informe=$fila[8];
            $notas=$fila[9];
            $tipo=$fila[10];
            $monto=$fila[11];
            $abono=$fila[12];
            $saldo=$fila[13];
            $descripcion=$fila[14];
            
            
            
        
        $this->diccionario["datos1"]=$equipo;
        $this->diccionario["datos2"]=$tipo;
        $this->diccionario["datos3"]=$descripcion;
        $this->diccionario["datos4"]=$cliente;
        $this->diccionario["datos5"]=$empleado;
        $this->diccionario["datos6"]=$fechaasignar;
        $this->diccionario["datos7"]=$problema;
        $this->diccionario["datos8"]=$estado;
        $this->diccionario["datos9"]=$fechaentrega;
        $this->diccionario["datos10"]=$fechatermino;
        $this->diccionario["datos11"]=$informe;
        $this->diccionario["datos12"]=$notas;
        $this->diccionario["datos13"]=$monto;
        $this->diccionario["datos14"]=$abono;
        $this->diccionario["datos15"]=$saldo;
        
        
        
    }

    public function setDiccionario() {
        
         $this->diccionario= array(
           "datos1"=>"",
           "datos2"=>"",
           "datos3"=>"",
           "datos4"=>"",
           "datos5"=>"",
           "datos6"=>"",
           "datos7"=>"",
           "datos8"=>"",
           "datos9"=>"",
           "datos10"=>"",
           "datos11"=>"",  
           "datos12"=>"",
           "datos13"=>"",
           "datos14"=>"",
           "datos15"=>"",  
             
       );
    }
//
//put your code here
}
$controlador=new listaLcompleto("listarLcompleto.php");
$controlador->rederizarPagina();
?>