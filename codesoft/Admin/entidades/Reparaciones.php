<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Reparaciones
 *
 * @author Suco
 */
class Reparaciones implements InterfazDatos{
    
    private $codigoequipo;
    private $idcliente;
    private $idempleado;
    private $descripcionProblema;
    private $estado;
    private $fechaAsignacion;
    private $fechaEntrega;
    private $fechaTermino;
    private $informeTecnico;
    private $notas;
    private $tipo;
    private $monto;
    private $abono;
    private $saldo;
    private $descripcion;
   
    function __construct($codigoequipo, $idcliente, $idempleado, $descripcionProblema, $estado, $fechaAsignacion, $fechaEntrega, $fechaTermino, $informeTecnico, $notas, $tipo, $monto, $abono, $saldo,$descripcion) {
        $this->codigoequipo = $codigoequipo;
        $this->idcliente = $idcliente;
        $this->idempleado = $idempleado;
        $this->descripcionProblema = $descripcionProblema;
        $this->estado = $estado;
        $this->fechaAsignacion = $fechaAsignacion;
        $this->fechaEntrega = $fechaEntrega;
        $this->fechaTermino = $fechaTermino;
        $this->informeTecnico = $informeTecnico;
        $this->notas = $notas;
        $this->tipo = $tipo;
        $this->monto = $monto;
        $this->abono = $abono;
        $this->saldo = $saldo;
        $this->descripcion = $descripcion;
        
    }

    public function getDatos() {
       
        $datos[0][0]="CODIGOEQUIPO";$datos[0][1]=$this->codigoequipo;
        $datos[1][0]="IDCLIENTE";$datos[1][1]=$this->idcliente;
        $datos[2][0]="IDEMPLEADO";$datos[2][1]=$this->idempleado;
        $datos[3][0]="DESCRIPCIONPROBLEMA";$datos[3][1]=$this->descripcionProblema;
        $datos[4][0]="ESTADO";$datos[4][1]=$this->estado;
        $datos[5][0]="FECHAASIGNACION";$datos[5][1]=$this->fechaAsignacion;
        $datos[6][0]="FECHAENTREGA";$datos[6][1]=$this->fechaEntrega;
        $datos[7][0]="FECHATERMINO";$datos[7][1]=$this->fechaTermino;
        $datos[8][0]="INFORMETECNICO";$datos[8][1]=$this->informeTecnico;
        $datos[9][0]="NOTAS";$datos[9][1]=$this->notas;
        $datos[10][0]="TIPO";$datos[10][1]=$this->tipo;
        $datos[11][0]="MONTO";$datos[11][1]=$this->monto;
        $datos[12][0]="ABONO";$datos[12][1]=$this->abono;
        $datos[13][0]="SALDO";$datos[13][1]=$this->saldo;
        $datos[14][0]="DESCRIPCIONEQUIPO";$datos[14][1]=$this->descripcion;
            return $datos;
       
    }

    public function getTabla() {
        
        return "REPARACIONES";
        
        
    }

//put your code here
}
