<?php

include_once '../../../Core/Conexion.php';
include_once '../../../Core/Controlador.php';
include_once '../../../Core/InterfazDatos.php';
//include_once '../../../../Core/Conexion.php';
include_once '../../entidades/ListaProducto.php';
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
                  
            $entidad=new ListaProducto($_POST['CodigoPrincipal'],$_POST['codCategoria'],$_POST['CodigoSecundario'],$_POST['Nombre'],$_POST['Marca'],$_POST['Modelo'],$_POST['Imagen'],$_POST['Garantia'], $_POST['PrecioNormal'], $_POST['PrecioDistribuidor'], $_POST['PrecioEspecial'], $_POST['Stock'], $_POST['Caracteristica'],$_POST['fechaLanzamiento'],$_POST['tiempoUtil'],$_POST['Calificacion'], $_POST['MostrarPublicidad'], $_POST['TituloPublicidad'], $_POST['SubtituloPublicidad'], $_POST['Descripcion'], $_POST['Vinculo'],$_POST['IVA']);
            $this->conexion->grabar($entidad);
            header("Location: ../lista.php");
    }    //put your code here
}

$controlador=new Grabar();
$controlador->ejecutar();
 
 