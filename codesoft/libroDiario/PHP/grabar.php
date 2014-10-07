<?php
include_once '../../Core/Conexion.php';
include_once '../../Core/Controlador.php';
include_once '../../Core/InterfazDatos.php';

include_once '../../Admin/entidades/libroDiario.php';;
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
             
        
            $fecha=date("o-m-y h:i:s");
             
            $entidad=new libroDiario(0,$_POST['cantidad'],$_POST['tipo'],$_POST['comentario'],$fecha,$_POST['id_libro']);
            $this->conexion->grabar($entidad);
            $id=mysql_insert_id();
            echo $id;
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
 //           
           
    }
}

$controlador=new Grabar();
$controlador->ejecutar();
 