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
        require_once("lib/clases/torre.class.php");
        require_once 'lib/clases/rubro.class.php';
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
		case 'buscar-torre':
                    $torres = new torre;
                    $torres->listar('', 1);
                    echo $torres->json;
                    break;
                case 'buscar-rubro':
                    $rub = new rubro;
                    $rub->listar($data);
                    echo $rub->json;
                    break;
                case 'eliminar-rubro':
                    $rub = new rubro;
                    $rub->eliminar($nr_rubro);
                    echo $rub->json;
                    break;
	}
?>
