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
class lista extends ControladorSet{
    public function buscarValores() {
         $tabla="";
       // $alumno=new Alumno("","","","","","","","","","","","","");
        $entidad=new Categoria("","","","");
       // $consulta=$this->conexion->consultaLibre('SELECT A.CEDULAREPRESENTANTE,A.CODIGOALUMNO,A.PRIMERNOMBREALUMNO,A.PRIMERAPELLIDOALUMNO,A.DIRECCIONALUMNO,A.GENEROALUMNO,A.TELEFONOALUMNO,C.NOMBRECURSO,C.PARALELOCURSO FROM ALUMNO A,CURSO C WHERE A.CODIGOCURSO=C.CODIGOCURSO ORDER BY C.CODIGOCURSO,PRIMERAPELLIDOALUMNO,SEGUNDOAPELLIDOALUMNO,PRIMERNOMBREALUMNO,SEGUNDONOMBREALUMNO');
        $consulta=$this->conexion->consultaTabla($entidad);
        $fila=mysql_fetch_array($consulta);
        
        do
        {
          $tabla=$tabla."<tr>";
          $tabla=$tabla."<td>".$fila[0]."</td>";
          $tabla=$tabla."<td>".$fila[1]."</td>";
          $tabla=$tabla."<td>".$fila[2]."</td>";
          $tabla=$tabla."<td>".$fila[3]."</td>";
        
          $tabla=$tabla."<td>"."<a href=editar.php?codigo=".$fila[0]." >edit<a>"."</td>";
          $tabla=$tabla."<td>"."<a onclick='return confirm(\"Seguro que desea eliminar estos datos?\");' href=php/Eliminar.php?codigo=".$fila[0]." >elimr<a>"."</td>";
          $tabla=$tabla."</tr>";  
        }while($fila=mysql_fetch_array($consulta));
        
         $this->diccionario['tabla']=$tabla;
         
    }

    public function setDiccionario() {
        $this->diccionario= array(
           "tabla"=>"vacio",
           
           
       );
    }    //put your code here
}

$controlador=new lista('lista.html');
$controlador->rederizarPagina();
?>
