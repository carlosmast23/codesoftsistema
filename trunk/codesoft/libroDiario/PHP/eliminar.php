<?php
include_once '../../Core/Conexion.php';
include_once '../../Core/Controlador.php';
include_once '../../Core/InterfazDatos.php';
include_once '../../Admin/entidades/libroDiario.php';

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of eliminar
 *
 * @author Suco
 */
class eliminar extends Controlador {
    
    function __construct() {
        parent::__construct();
    }
    public function ejecutar() {
    
       $this->conexion->consultaLibre("delete from LIBROITEMS where id_Items='". $_REQUEST['codigo'] . "'"); 
       
        if(strcmp($_POST['tipo'],"Ingresos")==0)
                {
                
                 $consulta=  $this->conexion->consultaLibre("UPDATE LIBRODIARIO"
                                    ." SET TOTALINGRESOS = TOTALINGRESOS +'".$_POST['cantidad']."'
                                        , TOTALCAJA= TOTALCAJA+'".$_POST['cantidad']."'
                                        WHERE ID_LIBRO='".$_REQUEST['id_libro']."'");
                
            }else{
            
            $consulta=  $this->conexion->consultaLibre("UPDATE LIBRODIARIO"
                                    ." SET TOTALEGRESOS = TOTALEGRESOS +'".$_POST['cantidad']."'
                                        , TOTALCAJA= TOTALCAJA-'".$_POST['cantidad']."'
                                        WHERE ID_LIBRO='".$_REQUEST['id_libro']."'");
            }
                
    }

    

//put your code here
}
$controlador = new Eliminar();
$controlador->ejecutar();

