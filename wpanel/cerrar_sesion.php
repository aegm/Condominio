<?php
	session_start();
	require_once("lib/clases/usr.class.php");
	$usuario = new usuario;
	$usuario->cerrar_session();
        header("Location: index.php");
?>