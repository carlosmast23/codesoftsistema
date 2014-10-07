<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of libroDiario
 *
 * @author Suco
 */
class libroDiario implements InterfazDatos {
    //put your code here
    private $id;
    private $cantidad;
    private $tipo;
    private $comentario;
    private $fecha;
    private $id_libro;
    
    function __construct($id,$cantidad, $tipo, $comentario, $fecha,$id_libro) {
        $this->cantidad = $cantidad;
        $this->tipo = $tipo;
        $this->comentario = $comentario;
        $this->fecha = $fecha;
        $this->id=$id;
        $this->id_libro=$id_libro;
    }

    public function getDatos() {
        
        $datos[0][0]="id_Items";$datos[0][1]=$this->id;
        $datos[1][0]="fecha";$datos[1][1]=$this->fecha;
        $datos[2][0]="cantidad";$datos[2][1]=$this->cantidad;
        $datos[3][0]="tipo";$datos[3][1]=$this->tipo;
        $datos[4][0]="comentario";$datos[4][1]=$this->comentario;
        $datos[5][0]="id_libro";$datos[5][1]=$this->id_libro;
       
      
        return $datos;
        
    }

    public function getTabla() {
        return "LIBROITEMS";
    }

}
