<?php
include_once '../../../Core/Conexion.php';
include_once '../../../Core/Controlador.php';
include_once '../../../Core/ControladorSet.php';

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of actualizar
 *
 * @author Suco
 */
class actualizar extends Controlador {
    
    public function ejecutar() {
        
       
        session_start();
        $this->conexion->consultaLibre("UPDATE REPARACIONES SET ESTADO='".$_POST['estado']."', FECHATERMINO ='".$_POST['fechaTermino']."', INFORMETECNICO ='".$_POST['informe']."', NOTAS ='".$_POST['notas']."', MONTO ='".$_POST['monto']."', ABONO ='".$_POST['abono']."', SALDO ='".$_POST['saldo']."', IDEMPLEADO = '".$_POST['opcionEmpleado']."' where CODIGOEQUIPO='".$_POST['codigo']."'");
       echo('<script> alert("Cambio Guardado Exitosamente"); </script>');
       //include_once '../../Colaborador/listaPendientes.php';
       if($_SESSION['administrador']){
           
           //include_once '../../administrador/listaPendientes.php';
            header("Location:../../administrador/listaPendientes.php");
       }else{
            header("Location:../../Colaborador/listaPendientes.php");
    
       }
       }
   

//put your code here
}
$controlador=new actualizar();
$controlador->ejecutar();
?>