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
           // $entidad=new Alumno('0', $_POST['cedula'], $_POST['cCurso'], $_POST['pNombre'], $_POST['sNombre'], $_POST['pApellido'], $_POST['sApellido'],$_POST['fNacimiento'],$_POST['direccion'],$_POST['genero'],$_POST['telefono'],$_POST['email'],$_POST['nacionalidad']);
            
        
           // $entidad=new Producto($_REQUEST['codigo'],$_REQUEST['codigo2'],$_REQUEST['ingreso'],$_REQUEST['distribuidor'],$_REQUEST['sucursal'],$_REQUEST['fechaIngreso'],$_REQUEST['costo'],$_REQUEST['estado'],$_REQUEST['estadoVenta'],$_REQUEST['observaciones'],$_REQUEST['fechaVenta'],$_REQUEST['estadoGarantia']);
            $this->conexion->consultaLibre("INSERT INTO PRODUCTO (CODIGOPRODUCTO, CODIGOPRIMARIO, RUCDISTRIBUIDOR, RUCSUCURSAL, FECHAINGRESO, COSTO, ESTADO, ESTADOVENTA, OBSERVACIONES, ESTADOGARANTIA) VALUES ('".$_REQUEST['codigo']."','".$_REQUEST['codigo2']."','".$_REQUEST['distribuidor']."', '".$_REQUEST['sucursal']."', '".$_REQUEST['fechaIngreso']."', '".$_REQUEST['costo']."', '".$_REQUEST['estado']."', '".$_REQUEST['estadoVenta']."', '".$_REQUEST['observaciones']."', '".$_REQUEST['estadoGarantia']."')");
          //  echo "INSERT INTO PRODUCTO (CODIGOPRODUCTO, CODLISTAPRODUCTO, RUCDISTRIBUIDOR, RUCSUCURSAL, FECHAINGRESO, COSTO, ESTADO, ESTADOVENTA, OBSERVACIONES, ESTADOGARANTIA) VALUES ('".$_REQUEST['codigo']."','".$_REQUEST['codigo2']."','".$_REQUEST['distribuidor']."', '".$_REQUEST['sucursal']."', '".$_REQUEST['fechaIngreso']."', '".$_REQUEST['costo']."', '".$_REQUEST['estado']."', '".$_REQUEST['estadoVenta']."', '".$_REQUEST['observaciones']."', '".$_REQUEST['estadoGarantia']."')";
          //  $this->conexion->grabar($entidad);
            header("Location: ../lista.php");
    }    //put your code here
}

$controlador=new Grabar();
$controlador->ejecutar();
 
 