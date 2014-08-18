<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of ListaProducto
 *
 * @author home
 */
class ListaProducto implements InterfazDatos
{
    private $codigoPrimario;
    private $codigoCategoria;
    private $codigoSecundario;
    private $nombre;
    private $marca;
    private $modelo;
    private $imagen;
    private $garantia;
    private $precio;
    private $precioDistribuidor;
    private $precioEspecial;
    private $stock;
    private $caracteristica;
    private $fechaLanzamiento;
    private $tiempoUtil;
    private $calificacion;
    private $mostrarPublicidad;
    private $tituloPublicidad;
    private $subtituloPublicidad;
    private $descripcion;
    private $vinculo;
    private $incluyeIVA;
    
    function __construct($codigoPrimario, $codigoCategoria, $codigoSecundario, $nombre, $marca, $modelo, $imagen, $garantia, $precio, $precioDistribuidor, $precioEspecial, $stock, $caracteristica, $fechaLanzamiento, $tiempoUtil, $calificacion, $mostrarPublicidad, $tituloPublicidad, $subtituloPublicidad, $descripcion, $vinculo, $incluyeIVA) {
        $this->codigoPrimario = $codigoPrimario;
        $this->codigoCategoria = $codigoCategoria;
        $this->codigoSecundario = $codigoSecundario;
        $this->nombre = $nombre;
        $this->marca = $marca;
        $this->modelo = $modelo;
        $this->imagen = $imagen;
        $this->garantia = $garantia;
        $this->precio = $precio;
        $this->precioDistribuidor = $precioDistribuidor;
        $this->precioEspecial = $precioEspecial;
        $this->stock = $stock;
        $this->caracteristica = $caracteristica;
        $this->fechaLanzamiento = $fechaLanzamiento;
        $this->tiempoUtil = $tiempoUtil;
        $this->calificacion = $calificacion;
        $this->mostrarPublicidad = $mostrarPublicidad;
        $this->tituloPublicidad = $tituloPublicidad;
        $this->subtituloPublicidad = $subtituloPublicidad;
        $this->descripcion = $descripcion;
        $this->vinculo = $vinculo;
        $this->incluyeIVA = $incluyeIVA;
    }

           
    
    public function getDatos() {
        $datos[0][0]="codigoPrimario";$datos[0][1]=$this->codigoPrimario;
        $datos[1][0]="codigoCategoria";$datos[1][1]=$this->codigoCategoria;
        $datos[2][0]="codigoSecundario";$datos[2][1]=$this->codigoSecundario;
        $datos[3][0]="nombre";$datos[3][1]=$this->nombre;
        $datos[4][0]="marca";$datos[4][1]=$this->marca;
        $datos[5][0]="modelo";$datos[5][1]=$this->modelo;
        $datos[6][0]="imagen";$datos[6][1]=$this->imagen;
        $datos[7][0]="garantia";$datos[7][1]=$this->garantia;
        $datos[8][0]="precio";$datos[8][1]=$this->precio;
        $datos[9][0]="precioDistribuidor";$datos[9][1]=$this->precioDistribuidor;
        $datos[10][0]="precioEspecial";$datos[10][1]=$this->precioEspecial;
        $datos[11][0]="stock";$datos[11][1]=$this->stock;
        $datos[12][0]="caracteristica";$datos[12][1]=$this->caracteristica;
        $datos[13][0]="fechaLanzamiento";$datos[13][1]=$this->fechaLanzamiento;
        $datos[14][0]="tiempoUtil";$datos[14][1]=$this->tiempoUtil;
        $datos[15][0]="calificacion";$datos[15][1]=$this->calificacion;
        $datos[16][0]="mostrarPublicidad";$datos[16][1]=$this->mostrarPublicidad;
        $datos[17][0]="tituloPublicidad";$datos[17][1]=$this->tituloPublicidad;
        $datos[18][0]="subtituloPublicidad";$datos[18][1]=$this->subtituloPublicidad;
        $datos[19][0]="descripcion";$datos[19][1]=$this->descripcion;
        $datos[20][0]="vinculo";$datos[20][1]=$this->vinculo;
        $datos[21][0]="incluyeIVA";$datos[21][1]=$this->incluyeIVA;
        return $datos;
    }
    
   
    public function getTabla() {
         return "LISTAPRODUCTO";
    }    //put your code here
}

?>
