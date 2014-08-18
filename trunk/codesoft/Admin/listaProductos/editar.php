<?php
include_once '../../Core/Conexion.php';
include_once '../../Core/ControladorSet.php';
include_once '../../Core/InterfazDatos.php';
include_once '../entidades/Categoria.php';
include_once '../entidades/ListaProducto.php';
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of lista
 *
 * @author home
 */
class editar extends ControladorSet
{
    function __construct($pagina) 
    {
        parent::__construct($pagina);
        
    }

    
    public function buscarValores() {
        
        
        
         
        
        //generar los valores devueltos
        $entidad=new ListaProducto($_REQUEST['codigo'],"","","","","","","","","","","","","","","","","","","","","");
        $consultaEntidad=$this->conexion->consulta($entidad); 
        
               
        $this->diccionario['CodigoPrincipal']=$consultaEntidad[0];
        $this->diccionario['CodigoSecundario']=$consultaEntidad[1];
        
        //Aqui va la otra
        $entidad2=new Categoria("","","","");
        $consulta=$this->conexion->consultaTabla($entidad2);
        $fila=mysql_fetch_array($consulta);
        $lista="";
        do
        {
           if($consultaEntidad[1]==$fila[0])
                $lista=$lista."<option selected='selected' value='".$fila[0]."'>".$fila[1]."</option>";    
           else
               $lista=$lista."<option value='".$fila[0]."'>".$fila[1]."</option>";    
           
        }while($fila=mysql_fetch_array($consulta));
        
        $this->diccionario['categoria']=$lista;
        
        
        
        $this->diccionario['Nombre']=$consultaEntidad[3];
        $this->diccionario['Marca']=$consultaEntidad[4];
        $this->diccionario['Modelo']=$consultaEntidad[5];
        $this->diccionario['Imagen']=$consultaEntidad[6];
        $this->diccionario['Garantia']=$consultaEntidad[7];
        $this->diccionario['PrecioNormal']=$consultaEntidad[8];
        $this->diccionario['PrecioDistribuidor']=$consultaEntidad[9];
        $this->diccionario['PrecioEspecial']=$consultaEntidad[10];
        
        //aqui viene la parte del codigo unitario
        $stock=$consultaEntidad[11];
        $cadena="<select name='Stock'>";
        if(intval($stock)==-1)
        {
             $cadena=$cadena." <option selected='selected' value='-1'>Si</option><option value='0'>No</option></select>";         
        }
        else
        {
            $cadena=$cadena."<option value='-1'>Si</option><option selected='selected' value='0'>No</option></select>";         
        }
         $this->diccionario['stock']=$cadena;
         
        
        $this->diccionario['Caracteristica']=$consultaEntidad[12];
        $this->diccionario['fechaLanzamiento']=$consultaEntidad[13];
        $this->diccionario['tiempoUtil']=$consultaEntidad[14];
        
        //mostrar calificacion
        $calificacion=$consultaEntidad[15];
        $cadena="<select name='Calificacion'>";
        for($i=1;$i<=10;$i++)
        {
                if($i==$calificacion)
                {
                    $cadena=$cadena."<option selected='selected' >".$i."</option>";        
                }
                else
                {
                    $cadena=$cadena."<option>".$i."</option>";        
                }
        }
        $cadena=$cadena."</select>";        
         $this->diccionario['calificacion']=$cadena;
        
        //mostrar publicidad///////////////
        $publicidad=$consultaEntidad[16];
        $cadena="<select name='MostrarPublicidad'>";
        if(intval($publicidad)==1)
        {
             $cadena=$cadena."<option selected='selected' value='1'>Si</option><option value='2'>No</option></select>";         
        }
        else
        {
            $cadena=$cadena."<option value='1'>Si</option><option selected='selected' value='2'>No</option></select>";         
        }
         $this->diccionario['publicidad']=$cadena;
        ///////////////////////////////////
        
        $this->diccionario['TituloPublicidad']=$consultaEntidad[17];
        $this->diccionario['SubtituloPublicidad']=$consultaEntidad[18];
        $this->diccionario['Descripcion']=$consultaEntidad[19];
        $this->diccionario['Vinculo']=$consultaEntidad[20];
        //aqui va el iva
        $iva=$this->diccionario['Vinculo']=$consultaEntidad[21];
        $cadena="<select name='IVA'>";
        if($iva=="1")
        {
             $cadena=$cadena."<option value='1' selected='selected'>Si</option><option value='2'>No</option></select>";         
        }
        else
        {
            $cadena=$cadena."<option value='1' >Si</option><option selected='selected' value='2'>No</option></select>";         
        }
         $iva=$this->diccionario['iva']=$cadena;
         
       
         
    }

    public function setDiccionario() 
    {
         $this->diccionario= array(
           "categoria"=>"vacio",
           "CodigoPrincipal"=>"",
           "CodigoSecundario"=>"",
           "Nombre"=>"",
           "Marca"=>"",
           "Modelo"=>"",
           "Imagen"=>"",
           "Garantia"=>"",
           "PrecioNormal"=>"",
           "PrecioDistribuidor"=>"",
           "PrecioEspecial"=>"",
           "Caracteristica"=>"",
           "fechaLanzamiento"=>"",
           "tiempoUtil"=>"",
           "TituloPublicidad"=>"",
           "SubtituloPublicidad"=>"",
           "Descripcion"=>"",
           "Vinculo"=>"",
           "iva"=>"",
           "stock"=>"",
           "publicidad"=>"",
           "calificacion"=>"",
           
       );
    }    
}

$controlador=new editar('editar.html');
$controlador->rederizarPagina();

?>