<?php
include_once '../../Core/Conexion.php';
include_once '../../Core/Controlador.php';
include_once '../../Core/ControladorSet.php';
//include_once '../../reparaciones/administrador/listaVista.php';

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of verificarLogin
 *
 * @author Suco
 */
class verificarLogin extends Controlador{
    
    
  

    public function ejecutar() {
        
        $consulta= $this->conexion->consultaLibre("SELECT *FROM USUARIO WHERE USUARIO='".$_POST['usuario']."'AND CLAVE='".$_POST['clave']."' ");
        $fila=  mysql_fetch_array($consulta);
        
        if(mysql_num_rows($consulta)==0){
        
            header("Location:../login.php?error=1");
            
            
       }elseif (strcmp ($fila[6],"administrador")==0) {
           session_start();
           $_SESSION['administrador']=$_POST['usuario'];
           header("Location:../../reparaciones/administrador/listaListos.php");
           
        }elseif (strcmp ($fila[6],"colaborador")==0) {
           session_start();
           $_SESSION['colaborador']=$_POST['usuario'];
            header("Location:../../reparaciones/Colaborador/listaPendientes.php");
        }

//put your code here
}
}
$controlador=new verificarLogin();
$controlador->ejecutar();
