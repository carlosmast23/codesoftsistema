<?php
include_once '../../Core/Conexion.php';
include_once '../../Core/Controlador.php';
include_once '../../Core/InterfazDatos.php';

include_once '../../Admin/entidades/Reparaciones.php';
/*
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of nuevo
 *
 * @author Suco
 */
class nuevo extends Controlador {
    
    function __construct() {
        parent::__construct();
    }
    
    
    public function ejecutar() {
    
        $entidad=new Reparaciones($_POST['codEquipo'], $_POST['cliente'], $_POST['opcionEmpleado'], $_POST['problema'],
                $_POST['opcionEstado'], $_POST['fechaA'], $_POST['fechaE'], $_POST['fechaT'], 
                $_POST['informe'], $_POST['notas'], $_POST['opcionTipo'], $_POST['monto'], $_POST['abono'], $_POST['saldo'],$_POST['descripcion']);
        $this->conexion->grabar($entidad);
         echo('<script>alert("Guardado Exitosamente"); </script>');
        // include_once '../administrador/listaListos.php';
         header("Location:../administrador/listaListos.php");
    }

//put your code here
}

$controlador=new nuevo();
$controlador->ejecutar();
 