<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of libroGeneral
 *
 * @author Suco
 */
class libroGeneral implements InterfazDatos{
    //put your code here
    private $id;
    private $fecha;
    private $tingresos;
    private $tegresos;
    private $tcaja;
    
    function __construct($id,$fecha,$tingresos, $tegresos, $tcaja) {
        $this->id = $id;
        $this->fecha = $fecha;
        $this->tingresos = $tingresos;
        $this->tegresos = $tegresos;
        $this->tcaja = $tcaja;
    }

    public function getDatos() {
        $datos[0][0]="id_libro";$datos[0][1]=$this->id;
        $datos[1][0]="fecha";$datos[1][1]=$this->fecha;
        $datos[2][0]="totalIngresos";$datos[2][1]=$this->tingresos;
        $datos[3][0]="totalEgresos";$datos[3][1]=$this->tegresos;
        $datos[4][0]="totalCaja";$datos[4][1]=$this->tcaja;
       
       
       
      
        return $datos;
    }

    public function getTabla() {
        return "LIBRODIARIO";
    }

    
}
