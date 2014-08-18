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
class Cliente{
    //put your code here
    private $codigo;
    private $clave;
    private $primernombre;
    private $segundonombre;
    private $primerapellido;
    private $segundoapellido;
    private $direccion;
    private $genero;
    private $nacionalidad;
    private $fechanacimiento;
    private $telefono1;
    private $telefono2;
    private $celular;
    private $email;
    private $ocupacion;
    private $observaciones;    
    private $tipo;
    
    function __construct($codigo, $clave, $primernombre, $segundonombre, $primerapellido, $segundoapellido, $direccion, $genero, $nacionalidad, $fechanacimiento, $telefono1, $telefono2, $celular, $email, $ocupacion, $observaciones, $tipo) {
        $this->codigo = $codigo;
        $this->clave = $clave;
        $this->primernombre = $primernombre;
        $this->segundonombre = $segundonombre;
        $this->primerapellido = $primerapellido;
        $this->segundoapellido = $segundoapellido;
        $this->direccion = $direccion;
        $this->genero = $genero;
        $this->nacionalidad = $nacionalidad;
        $this->fechanacimiento = $fechanacimiento;
        $this->telefono1 = $telefono1;
        $this->telefono2 = $telefono2;
        $this->celular = $celular;
        $this->email = $email;
        $this->ocupacion = $ocupacion;
        $this->observaciones = $observaciones;
        $this->tipo = $tipo;
    }

    
        public function getDatos() {
        $datos[0][0]="RUC_CI";$datos[0][1]=$this->codigo;
        $datos[1][0]="clave";$datos[1][1]=$this->clave;
        $datos[2][0]="primerNombre";$datos[2][1]=$this->primernombre;
        $datos[3][0]="segundoNombre";$datos[3][1]=$this->segundonombre;
        $datos[4][0]="primerApellido";$datos[4][1]=$this->primerapellido;
        $datos[5][0]="segundoApellido";$datos[5][1]=$this->segundoapellido;
        $datos[6][0]="direccion";$datos[6][1]=$this->direccion;
        $datos[7][0]="sexo";$datos[7][1]=$this->genero;
        $datos[8][0]="nacionalidad";$datos[8][1]=$this->nacionalidad;
        $datos[9][0]="fechaNacimiento";$datos[9][1]=$this->fechanacimiento;
        $datos[10][0]="telefonoPrincipal";$datos[10][1]=$this->telefono1;
        $datos[11][0]="telefonoAuxiliar";$datos[11][1]=$this->telefono2;
        $datos[12][0]="celular";$datos[12][1]=$this->celular;
        $datos[13][0]="email";$datos[13][1]=$this->email;
        $datos[14][0]="ocupacion";$datos[14][1]=$this->ocupacion;
        $datos[15][0]="observaciones";$datos[15][1]=$this->observaciones;
        $datos[16][0]="tipo";$datos[16][1]=$this->tipo;
    
        return $datos;
    }
    
    public function getTabla() {
         return "CLIENTE";
    } 
}
?>
