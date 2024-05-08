<?php
    session_start();
    //Definir el tiempo límite en segundos
    $tiempo_limite = 0.3; //Por ejemplo, cada 5 segundos
    //Obtener el tiempo actual
    $tiempo_actual = time();
    //Obtener la última vez que se realizó una solicitud por parte del usuario (si existe)
    if(isset($_SESSION['ultima_solicitud'])){
        $ultima_solicitud = $_SESSION['ultima_solicitud'];
        //Calcular el tiempo transcurrido desde la última solicitud
        $tiempo_transcurrido = $tiempo_actual - $ultima_solicitud;
        //Verificar si el tiempo transcurrido es menor que el tiempo límite
        if($tiempo_transcurrido < $tiempo_limite){
            //Si se supera el límite de solicitudes, mostrar un mensaje de error y detener la ejecución
            exit();
        }
    }
    //Actualizar el tiempo de la última solicitud en la sesión
    $_SESSION['ultima_solicitud'] = $tiempo_actual;
    //Procesar la solicitud normalmente para evitar DoS
    error_reporting(0);
    require_once('conexion.php');
    if(!empty($_SESSION['codusr'])&&$_SERVER["REQUEST_METHOD"]=='POST'){
        echo $_SESSION['codusr'];
    }
?>