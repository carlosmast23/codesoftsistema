<?php
include_once '../../Core/Conexion.php';
include_once '../../Core/ControladorSet.php';
include_once '../../Core/InterfazDatos.php';
include_once '../entidades/Producto.php';
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of lista
 *
 * @author home
 */
class lista extends ControladorSet
{
    function __construct($pagina) 
    {
        parent::__construct($pagina);
        
    }

    
    public function buscarValores() {
        
        $tabla="";
       // $alumno=new Alumno("","","","","","","","","","","","","");
        //$entidad=new Producto("","","","","","","","","","","","");
        $consulta=$this->conexion->consultaLibre('SELECT * FROM PRODUCTO LIMIT '.($_REQUEST['hoja']*25).',25');
        $consulta2=$this->conexion->consultaLibre('SELECT * FROM PRODUCTO');
        //$consulta=$this->conexion->consultaTabla($entidad);
        $fila=mysql_fetch_array($consulta);
        $tam=mysql_num_rows($consulta2);
        
        do
        {
          $tabla=$tabla."<tr>";
          $tabla=$tabla."<td>".$fila[0]."</td>";
          $tabla=$tabla."<td>".$fila[1]."</td>";
          $tabla=$tabla."<td>".$fila[3]."</td>";
          $tabla=$tabla."<td>".$fila[5]."</td>";
          $tabla=$tabla."<td>".$fila[6]."</td>";
          $tabla=$tabla."<td>".$fila[7]."</td>";
        
          
          $tabla=$tabla."<td>"."<a href=editar.php?codigo=".$fila[0]." >edit<a>"."</td>";
          $tabla=$tabla."<td>"."<a onclick='return confirm(\"Seguro que desea eliminar estos datos?\");' href=php/Eliminar.php?codigo=".$fila[0]." >elimr<a>"."</td>";
          $tabla=$tabla."</tr>";  
        }while($fila=mysql_fetch_array($consulta));
        
         $this->diccionario['tabla']=$tabla;
         
         //para actualizar el cambio de pagina
         $vinculo="";
         for ($i = 0; $i <=$tam/25; $i++) 
         {
              $vinculo=$vinculo."<a href='lista.php?hoja=".$i."' >".($i+1)."</a>  ";
         }
          $this->diccionario['vinculos']=$vinculo;
         
    }

    public function setDiccionario() 
    {
         $this->diccionario= array(
           "tabla"=>"vacio",
           "vinculos"=>"vacio",
           
           
       );
    }    
}

$controlador=new lista('lista.html');
$controlador->rederizarPagina();

?>
