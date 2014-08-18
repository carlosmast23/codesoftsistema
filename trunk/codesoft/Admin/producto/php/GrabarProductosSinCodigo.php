<?php
include_once '../../../Core/Conexion.php';
include_once '../../../Core/Controlador.php';
include_once '../../../Core/InterfazDatos.php';
include_once '../../entidades/Producto.php';
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Grabar
 *
 * @author home
 */
class Grabar extends Controlador
{
   function __construct() {
        parent::__construct();
    }
    
    public function ejecutar() 
    {
            $consulta=$this->conexion->consultaLibre("SELECT * FROM PRODUCTO WHERE CODIGOPRIMARIO='".$_REQUEST['codigo']."' AND RUCSUCURSAL= ".$_REQUEST['sucursal']."");
            $fila=  mysql_fetch_array($consulta);
            $this->conexion->consultaLibre("UPDATE PRODUCTO SET STOCK=STOCK+".$_REQUEST['cantidad']." WHERE CODIGOPRODUCTO='".$fila[0]."';");
            header("Location: ../lista.php");
    }    //put your code here
}

$controlador=new Grabar();
$controlador->ejecutar();
 
 