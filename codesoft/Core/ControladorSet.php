<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of ControladorSet
 *
 * @author home
 */
abstract class ControladorSet {
    protected $conexion;
    protected $diccionario;
    protected $pagina;
        
    
    function __construct($pagina)
    {
       $this->conectar();
        $this->pagina=$pagina;
         $this->setDiccionario();
        $this->buscarValores();
        
        
    }
    
    //funcion para remplazar los valor que estan en el diccionario
    abstract function buscarValores();
    
    public function conectar()
    {
       
        $this->conexion=new Conexion("localhost","codesoft","root","1234");
        $this->conexion->conexion();
       
        
    }
    
    //cuando se desea hacer algun remplazo en la pagina
    public function rederizarPagina()
    {
        $pagina=  file_get_contents($this->pagina);
        
        foreach ($this->diccionario as $key => $value) {
           $pagina=  str_replace("[".$key."]",$value, $pagina); 
        }
        
           
        print $pagina;
       
        
    }
    
    abstract public function setDiccionario();
    
    public function getConexion() {
        return $this->conexion;
    }
    
    public function getDiccionario() {
        return $this->diccionario;
    }
    
   
}

?>
