<?php

/*
 * Autor: Ing. Angel Gonzalez
 * correo: angeledugo@gmail.com
 */
        @session_start();
	error_reporting(0);
	require_once("../config.php");
	require_once("lib/funciones.php");
	require_once("lib/clases/usr.class.php");
        require_once("lib/clases/evento.class.php");
        require_once("lib/clases/testimonio.class.php");
        require_once("lib/clases/noticia.class.php");
        require_once("lib/clases/servicio.class.php");
	$user = new usuario;
	if(!$user->session())
	{
		$array['msgTitle'] = "Sesión de usuario";
		$array['mensaje'] = "Debe iniciar sesión nuevamente.";
		$array['msgTipo'] = "error";
		$array['estatus'] = false;
		echo json_encode($array);
		exit();
	}
	
	foreach($_GET as $i => $valor)
		$$i = escapar($valor);
	
	switch($a)
	{
		case 'buscar-evento':
                    $evento =  new evento;
                    $evento->listar($data);
                    echo $evento->json;
                    break;
                 case 'eliminar-evento':
                     $evento = new evento;
                     $evento->eliminar($nr_evento);
                     echo $evento->json;
                    break;
                case 'eliminar-test':
                     $test = new testimonio;
                     $test->eliminar($nr_test);
                     echo $test->json;
                    break;
                case 'eliminar-noticia':
                     $noti = new noticia;
                     $noti->eliminar($nr_noticia);
                     echo $noti->json;
                    break;
                case 'buscar-noticia':
                    $noti =  new noticia;
                    $noti->listar($data);
                    echo $noti->json;
                    break;
                case 'buscar-testimonio':
                    $test =  new testimonio;
                    $test->listar($data);
                    echo $test->json;
                    break;
                case 'buscar-servicio':
                    $service =  new servicio;
                    $service->listar($data);
                    echo $service->json;
                    break; 
                case 'eliminar-servicio':
                     $service = new servicio;
                     $service->eliminar($nr_servicio);
                     echo $service->json;
                    break;
                
	}
?>
