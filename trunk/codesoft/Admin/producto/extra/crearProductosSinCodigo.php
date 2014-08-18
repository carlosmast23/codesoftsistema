<?php
include_once '../../../Core/Conexion.php';
include_once '../../../Core/Controlador.php';
include_once '../../../Core/InterfazDatos.php';
include_once '../../entidades/Producto.php';
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
class crearProductosSinCodigo extends Controlador
{
    public function ejecutar() 
    {
        $consulta=$this->conexion->consultaLibre("SELECT * FROM LISTAPRODUCTO");
        $fila=mysql_fetch_array($consulta);
        do
        {
            if($fila[11]==0)
            {
                    $consulta2=$this->conexion->consultaLibre("SELECT * FROM SUCURSAL");
                    $fila2=mysql_fetch_array($consulta2);
                    do
                    {
                        //INSERT INTO `codesoft`.`producto` (`CODIGOPRODUCTO`, `CODIGOPRIMARIO`, `RUCDISTRIBUIDOR`, `RUCSUCURSAL`, `FECHAINGRESO`, `COSTO`, `ESTADO`, `ESTADOVENTA`, `OBSERVACIONES`, `FECHAVENTA`, `ESTADOGARANTIA`, `STOCK`) VALUES ('23123', '2123123', '123123', '21123123', '123123', '123123', '123123', '123123', '123', '123123', '12', '12');
                        $consultaAux=$this->conexion->consultaLibre("SELECT * FROM PRODUCTO WHERE CODIGOPRIMARIO='".$fila[0]."'");
                        $tamAux=  mysql_num_rows($consultaAux);
                        echo $tamAux."<br>";
                        if($tamAux==0)
                            $this->conexion->consultaLibre("INSERT INTO PRODUCTO (`CODIGOPRODUCTO`, `CODIGOPRIMARIO`, `RUCSUCURSAL`, `STOCK`) VALUES ('".$fila[0]."".$fila2[0]."', '".$fila[0]."', '".$fila2[0]."', '0');");
                    }while($fila2=mysql_fetch_array($consulta2));          
            }
        }while($fila=mysql_fetch_array($consulta));
    }        
}

$controlador=new crearProductosSinCodigo();
$controlador->ejecutar();
?>
