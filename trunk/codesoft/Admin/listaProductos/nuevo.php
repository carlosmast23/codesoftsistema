<?php
include_once '../../Core/Conexion.php';
include_once '../../Core/ControladorSet.php';
include_once '../../Core/InterfazDatos.php';
include_once '../entidades/Categoria.php';
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of lista
 *
 * @author home
 */
class nuevo extends ControladorSet
{
    function __construct($pagina) 
    {
        parent::__construct($pagina);
        
    }

    
    public function buscarValores() {
        
        //$tabla="";
         $entidad=new Categoria("","","","");
       // $alumno=new Alumno("","","","","","","","","","","","","");
       // $listaProducto=new ListaProducto("","","","","","","","","","","","","","","","","","","");
       // $consulta=$this->conexion->consultaLibre('SELECT A.CEDULAREPRESENTANTE,A.CODIGOALUMNO,A.PRIMERNOMBREALUMNO,A.PRIMERAPELLIDOALUMNO,A.DIRECCIONALUMNO,A.GENEROALUMNO,A.TELEFONOALUMNO,C.NOMBRECURSO,C.PARALELOCURSO FROM ALUMNO A,CURSO C WHERE A.CODIGOCURSO=C.CODIGOCURSO ORDER BY C.CODIGOCURSO,PRIMERAPELLIDOALUMNO,SEGUNDOAPELLIDOALUMNO,PRIMERNOMBREALUMNO,SEGUNDONOMBREALUMNO');
        $consulta=$this->conexion->consultaTabla($entidad);
        $fila=mysql_fetch_array($consulta);
        $lista="";
        do
        {
           $lista=$lista."<option value='".$fila[0]."'>".$fila[1]."</option>";    
        }while($fila=mysql_fetch_array($consulta));
        
        $this->diccionario['categoria']=$lista;
         
         
    }

    public function setDiccionario() 
    {
         $this->diccionario= array(
           "categoria"=>"vacio",
           
           
       );
    }    
}

$controlador=new nuevo('nuevo.html');
$controlador->rederizarPagina();

?>