<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Distribuidor
 *
 * @author home
 */
class Distribuidor implements InterfazDatos
{
    private $rucDistribuidor;
    private $nombre;
    private $direccion;
    private $sucursal;
    private $telefonoPrincipal;
    private $telefonoAuxiliar;
    private $celular;
    private $paginaWeb;
    private $correoElectronico;
    private $personaResponsable;
    private $observaciones;
   
    function __construct($rucDistribuidor, $nombre, $direccion, $sucursal, $telefonoPrincipal, $telefonoAuxiliar, $celular, $paginaWeb, $correoElectronico, $personaResponsable, $observaciones) {
        $this->rucDistribuidor = $rucDistribuidor;
        $this->nombre = $nombre;
        $this->direccion = $direccion;
        $this->sucursal = $sucursal;
        $this->telefonoPrincipal = $telefonoPrincipal;
        $this->telefonoAuxiliar = $telefonoAuxiliar;
        $this->celular = $celular;
        $this->paginaWeb = $paginaWeb;
        $this->correoElectronico = $correoElectronico;
        $this->personaResponsable = $personaResponsable;
        $this->observaciones = $observaciones;
    }


    
    public function getDatos() {
        $datos[0][0]="rucDistribuidor";$datos[0][1]=$this->rucDistribuidor;
        $datos[1][0]="nombre";$datos[1][1]=$this->nombre;
        $datos[2][0]="direccion";$datos[2][1]=$this->direccion;
        $datos[3][0]="sucursal";$datos[3][1]=$this->sucursal;
        $datos[4][0]="telefonoPrincipal";$datos[4][1]=$this->telefonoPrincipal;
        $datos[5][0]="telefonoAuxiliar";$datos[5][1]=$this->telefonoAuxiliar;
        $datos[6][0]="celular";$datos[6][1]=$this->celular;
        $datos[7][0]="paginaWeb";$datos[7][1]=$this->paginaWeb;
        $datos[8][0]="correoElectronico";$datos[8][1]=$this->correoElectronico;
        $datos[9][0]="personaResponsable";$datos[9][1]=$this->personaResponsable;
        $datos[10][0]="observaciones";$datos[10][1]=$this->observaciones;
      
        return $datos;
    }

    public function getTabla() {
         return "DISTRIBUIDOR";
    }    //put your code here
}

?>
