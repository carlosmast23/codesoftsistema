<?php
include_once '../../Core/Conexion.php';
include_once '../../Core/Controlador.php';
include_once '../../Core/InterfazDatos.php';

include_once '../../Admin/entidades/libroGeneral.php';; 
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Grabar
 *
 * @author home
 */
class crearLibroDiario extends Controlador
{
   function __construct() {
        parent::__construct();
    }
    
    public function ejecutar() 
    {
           
            $fecha= date("y-m-d");
           
            $entidad=new libroGeneral(0,$fecha,0,0,0);
            $this->conexion->grabar($entidad);
            
           
            header("Location:../lista.php");
           
            
    }

   
//put your code here
}

$controlador=new crearLibroDiario();
$controlador->ejecutar();
 