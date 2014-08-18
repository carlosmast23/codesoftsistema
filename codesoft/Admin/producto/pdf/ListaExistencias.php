<?php
//librerias necesarias
require_once './fpdf.php';
require_once '../../../Core/Conexion.php';
require_once '../../../Core/Controlador.php';


class Drive extends Controlador
{
    function __construct() {
        parent::__construct();
    }
    
    public function ejecutar() 
    {
        $lista=$this->conexion->consultaLibre("SELECT L.NOMBRE,L.MODELO,C.NOMBRE ,L.PRECIO,P.STOCK FROM PRODUCTO P,LISTAPRODUCTO L,CATEGORIA C WHERE L.CODIGOPRIMARIO=P.CODIGOPRIMARIO AND L.CODIGOCATEGORIA=C.CODIGOCATEGORIA AND L.STOCK=0 ORDER BY C.NOMBRE,L.NOMBRE,L.MODELO");
        return $lista;
    }      
    
    public function consulta2()
    {
        $lista=$this->conexion->consultaLibre("SELECT L.NOMBRE,L.MODELO,C.NOMBRE,L.PRECIO,COUNT(P.CODIGOPRIMARIO) AS STOCK FROM PRODUCTO P,LISTAPRODUCTO L,CATEGORIA C WHERE L.CODIGOPRIMARIO=P.CODIGOPRIMARIO AND L.CODIGOCATEGORIA=C.CODIGOCATEGORIA AND P.STOCK IS NULL GROUP BY P.CODIGOPRIMARIO ORDER BY C.NOMBRE,L.NOMBRE,L.MODELO");
        return $lista;
        
    }
    
    public function datos()
    {
                
    }
}


class PDF extends FPDF
{
    public $control;
    
    function __construct() {
        $this->control=new Drive();
         parent::__construct();
    }

    
    public function cabezera()
    {
        $this->SetFont('Arial','B',16);
        $this->SetXY(90,10);
        $this->Cell(40,10,'CODESOFT');
        $this->SetFont('Arial','',12);
        $this->SetXY(85,15);
        $this->Cell(40,10,'Reporte de productos');
        //$pdf->AddPage();
    }
    
    public function encabezados()
    {
        $this->SetFont('Arial','B',11);
        $this->SetXY(20,25);
        $this->Cell(40,10,'Nombre');
      
        $this->SetXY(100,25);
        $this->Cell(40,10,'Categoria');
        
        $this->SetXY(155,25);
        $this->Cell(40,10,'Precio');
        
        $this->SetXY(185,25);
        $this->Cell(40,10,'Stock');
        
    }
    
    public function generarReporte()
    {
        $this->AddPage();
        $this->cabezera();
        $this->encabezados();
        $this->control=new Drive();
        $lista=$this->control->ejecutar();
        $fila=  mysql_fetch_array($lista);
        $x=20;
        $y=30;
        $this->SetFont('Arial','',9);
        $i=0;
        do
        {
                       
            $this->SetXY($x,$y+5*$i);
            $this->Cell(40,10,$fila[0]." ".$fila[1]);          
            
            $this->SetXY($x+80,$y+5*$i);
            $this->Cell(40,10,$fila[2]);
            
            $this->SetXY($x+140,$y+5*$i);
            $this->Cell(40,10,$fila[3]);
            
            $this->SetXY($x+170,$y+5*$i++);
            $this->Cell(40,10,$fila[4]);
            
              if($i%45==0)
            {
            //      echo "nueva pagina </br>";
                $this->AddPage();
                $this->cabezera();
                $this->encabezados();
                $x = 20;
                $y = 30;
                $this->SetFont('Arial', '', 9);
                $i=0;
            }
           
                                    
            
        }while($fila=  mysql_fetch_array($lista));
      
        
        //para imprimir los productos que si tiene codigo
        
        $lista=$this->control->consulta2();
        $fila=  mysql_fetch_array($lista);
        $this->SetXY($x,$y+5*$i++);
        $this->Cell(40,10,"------------------------------------------------------------------------------------------------------------------------------------------------------------------");          
           
        
        do
        {
            $this->SetXY($x,$y+5*$i);
            $this->Cell(40,10,$fila[0]." ".$fila[1]);          
            
            $this->SetXY($x+80,$y+5*$i);
            $this->Cell(40,10,$fila[2]);
            
            $this->SetXY($x+140,$y+5*$i);
            $this->Cell(40,10,$fila[3]);
            
            $this->SetXY($x+170,$y+5*$i++);
            $this->Cell(40,10,$fila[4]);
            
             if($i%45==0)
            {
                 // echo "nueva pagina </br>";
                $this->AddPage();
                $this->cabezera();
                $this->encabezados();
                $x = 20;
                $y = 30;
                $this->SetFont('Arial', '', 9);
                $i=0;
            }
            
            
        }while($fila=  mysql_fetch_array($lista));
        $this->Output();
       
    }
    
    
}
    //$pdf=new PDF('L','mm','Letter');
    $pdf=new PDF();
    $pdf->generarReporte();
    /*
    $pdf->SetFont('Arial','B',16);
    $pdf->Cell(40,10,'Hola Mundo!');
    $pdf->AddPage();
    $pdf->SetFont('Arial','B',16);
    $pdf->Cell(40,10,'Hola Mundo!');
    $pdf->AddPage();
    $pdf->SetFont('Arial','B',16);
    $pdf->Cell(40,10,'Hola Mundo!');
    */
    //$pdf->Output();

?>