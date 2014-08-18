<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of ControladorGrabar
 *
 * @author home
 */
abstract class Controlador
{
        var $conexion;
        
        function __construct() 
        {
            $this->conectar();
        }

        public function conectar()
        {
       
        $this->conexion=new Conexion("mysql.hostinger.es","u836668480_code","u836668480_admin","Q2iuUy534l");
        $this->conexion->conexion();
               
        }
        
        abstract public function ejecutar();
               
                    
        
}

?>
