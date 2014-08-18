<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Producto
 *
 * @author home
 */
class Producto implements InterfazDatos
{
    private $codigoProducto;
    private $codListaProducto;
    private $rucDistribuidor;
    private $rucSucursal;
    private $fechaIngreso;
    private $costo;
    private $estado;
    private $estadoVenta;
    private $observaciones;
    private $fechaVenta;
    private $estadoGarantia;
  
   
 
    function __construct($codigoProducto, $codListaProducto, $rucDistribuidor, $rucSucursal, $fechaIngreso, $costo, $estado, $estadoVenta, $observaciones, $fechaVenta, $estadoGarantia) {
        $this->codigoProducto = $codigoProducto;
        $this->codListaProducto = $codListaProducto;
        $this->rucDistribuidor = $rucDistribuidor;
        $this->rucSucursal = $rucSucursal;
        $this->fechaIngreso = $fechaIngreso;
        $this->costo = $costo;
        $this->estado = $estado;
        $this->estadoVenta = $estadoVenta;
        $this->observaciones = $observaciones;
        $this->fechaVenta = $fechaVenta;
        $this->estadoGarantia = $estadoGarantia;
    }

        public function getDatos() {
        $datos[0][0]="codigoProducto";$datos[0][1]=$this->codigoProducto;
        $datos[1][0]="codListaProducto";$datos[1][1]=$this->codListaProducto;
        $datos[2][0]="rucDistribuidor";$datos[2][1]=$this->rucDistribuidor;
        $datos[3][0]="rucSucursal";$datos[3][1]=$this->rucSucursal;
        $datos[4][0]="fechaIngreso";$datos[4][1]=$this->fechaIngreso;
        $datos[5][0]="costo";$datos[5][1]=$this->costo;
        $datos[6][0]="estado";$datos[6][1]=$this->estado;
        $datos[7][0]="estadoVenta ";$datos[7][1]=$this->estadoVenta;
        $datos[8][0]="observaciones";$datos[8][1]=$this->observaciones;
        $datos[9][0]="fechaVenta";$datos[9][1]=$this->fechaVenta;
        $datos[10][0]="estadoGarantia";$datos[10][1]=$this->estadoGarantia;
      
        return $datos;
    }

    public function getTabla() {
         return "PRODUCTO";
    }    //put your code here
}

?>
