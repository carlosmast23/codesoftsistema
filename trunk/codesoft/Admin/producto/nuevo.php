<?php
include_once '../../Core/Conexion.php';
include_once '../../Core/ControladorSet.php';
include_once '../../Core/InterfazDatos.php';
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of nuevo
 *
 * @author home
 */
class nuevo extends ControladorSet
{
    function __construct($pagina) 
    {
        parent::__construct($pagina);
        
    }

    
    public function buscarValores() 
    {
        

      $this->diccionario['fechaActual']=date("Y-m-d H:i:s");              
      $consulta=$this->conexion->consultaLibre('SELECT * FROM SUCURSAL');
      $fila=mysql_fetch_array($consulta);
      $this->diccionario['sucursal']=$fila[0]; 
      
      
      $consulta2=$this->conexion->consultaLibre('SELECT * FROM DISTRIBUIDOR');
      $fila2=mysql_fetch_array($consulta2);
      $cadena="";
      do
      {
          $cadena=$cadena."<option value=".$fila2[0].">".$fila2[1]."</option>";
          
      }while($fila2=mysql_fetch_array($consulta2));
      $this->diccionario['listaDistribuidor']=$cadena; 
      
      

    }

    public function setDiccionario() 
    {
         $this->diccionario= array(
           "fechaActual"=>"vacio",
           "sucursal"=>"vacio",
           "listaDistribuidor"=>"vacio",
           
       );
    }    
}

$controlador=new nuevo('nuevo.html');
$controlador->rederizarPagina();

?>
