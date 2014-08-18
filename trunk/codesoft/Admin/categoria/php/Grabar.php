<?php
include_once '../../../Core/Conexion.php';
include_once '../../../Core/Controlador.php';
include_once '../../../Core/InterfazDatos.php';
//include_once '../../../../Core/Conexion.php';
include_once '../../entidades/Categoria.php';
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
                  
            $entidad=new Categoria($_POST['codigo'],$_POST['nombre'],$_POST['descripcion'],$_POST['prioridad']);
            $this->conexion->grabar($entidad);
            header("Location: ../lista.php");
    }    //put your code here
}

$controlador=new Grabar();
$controlador->ejecutar();
 
 