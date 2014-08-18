<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Categoria'
 *
 * @author home
 */
class Categoria{
    //put your code here
    private $codigo;
    private $nombre;
    private $descripcion;
    private $prioridad;
    
        function __construct($codigo, $nombre, $descripcion, $prioridad) {
        $this->codigo = $codigo;
        $this->nombre = $nombre;
        $this->descripcion = $descripcion;
        $this->prioridad = $prioridad;
    }
    
        public function getDatos() {
        $datos[0][0]="codigoCategoria";$datos[0][1]=$this->codigo;
        $datos[1][0]="nombre";$datos[1][1]=$this->nombre;
        $datos[2][0]="descripcion";$datos[2][1]=$this->descripcion;
        $datos[3][0]="prioridad";$datos[3][1]=$this->prioridad;
      
        return $datos;
    }
    
    public function getTabla() {
         return "CATEGORIA";
    } 
}
?>
