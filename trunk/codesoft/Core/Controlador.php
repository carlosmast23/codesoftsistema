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
       
        $this->conexion=new Conexion("localhost","codesoft","root","1234");
        $this->conexion->conexion();
               
        }
        
        abstract public function ejecutar();
               
                    
        
}

?>
