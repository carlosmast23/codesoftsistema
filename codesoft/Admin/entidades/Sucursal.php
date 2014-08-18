<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Sucursal
 *
 * @author home
 */
class Sucursal implements InterfazDatos
{
    private $rucSucursal;
    private $nombre;
    private $direccion;
    private $telefonoPrincipal;
    private $telefonoAuxiliar;
    private $paginaWeb;
    private $correoElectronico;
    private $personaResponsable;
    private $observaciones;
    
 
    function __construct($rucSucursal, $nombre, $direccion, $telefonoPrincipal, $telefonoAuxiliar, $paginaWeb, $correoElectronico, $personaResponsable, $observaciones) {
        $this->rucSucursal = $rucSucursal;
        $this->nombre = $nombre;
        $this->direccion = $direccion;
        $this->telefonoPrincipal = $telefonoPrincipal;
        $this->telefonoAuxiliar = $telefonoAuxiliar;
        $this->paginaWeb = $paginaWeb;
        $this->correoElectronico = $correoElectronico;
        $this->personaResponsable = $personaResponsable;
        $this->observaciones = $observaciones;
    }

     private $rucSucursal;
    private $nombre;
    private $direccion;
    private $telefonoPrincipal;
    private $telefonoAuxiliar;
    private $paginaWeb;
    private $correoElectronico;
    private $personaResponsable;
    private $observaciones;
    
        public function getDatos() {
        $datos[0][0]="rucSucursal";$datos[0][1]=$this->rucSucursal;
        $datos[1][0]="nombre";$datos[1][1]=$this->nombre;
        $datos[2][0]="direccion";$datos[2][1]=$this->direccion;
        $datos[3][0]="telefonoPrincipal";$datos[3][1]=$this->telefonoPrincipal;
        $datos[4][0]="telefonoAuxiliar";$datos[4][1]=$this->telefonoAuxiliar;
        $datos[5][0]="paginaWeb";$datos[5][1]=$this->paginaWeb;
        $datos[6][0]="correoElectronico";$datos[6][1]=$this->correoElectronico;
        $datos[7][0]="personaResponsable";$datos[7][1]=$this->personaResponsable;
        $datos[8][0]="observaciones";$datos[8][1]=$this->observaciones;
     
      
        return $datos;
    }

    public function getTabla() {
         return "SUCURSAL";
    }    //put your code here
}

?>
