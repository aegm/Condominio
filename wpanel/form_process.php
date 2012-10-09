<?php

/*
 * Autor: Ing. Angel Gonzalez
 * Correo: angeledugo@gmail.com
 */
@session_start();

require_once('../config.php');
require_once("lib/clases/usr.class.php");
require_once("lib/clases/menu.class.php");
require_once 'lib/clases/empresa.class.php';
require_once 'lib/clases/noticia.class.php';
require_once 'lib/clases/evento.class.php';
require_once 'lib/clases/testimonio.class.php';
require_once 'lib/clases/image.class.php';
require_once 'lib/clases/seccion.class.php';
require_once 'lib/clases/servicio.class.php';
require_once("lib/funciones.php");
function login($usuario,$clave)
{
	$user = new usuario;
	
	if(!$user->login($usuario,$clave))
	{
		$_SESSION['mensaje']=$user->mensaje;
		$_SESSION['msgTipo']=$user->msgTipo;
		$_SESSION['msgTitle']=$user->msgTitle;
		return false;
	}
	else
	{
            $menu = new menu;
            $menu->iniciar($user->id_grupo);
		return 'bienvenida.php';
	}
}

if(isset($_POST)&&count($_POST)){
	$form_error = false;
	
	foreach($_POST as $i => $valor)
		$$i = escapar($valor);
	
	switch($_POST['form']){
		case 'login':
                    if(!$ty_redirect_to = login($usuario,$clave))
				$form_error = true;
				
			$error_redirect_to = $pagina;
                    break;
                case 'actualiza-empresa':
                    $emp = new empresa;
                    $emp->actualiza($txt_rsocial,$txt_rif,$txt_somos,$txt_mision,$txt_vision,$txt_tel,$txt_email,$txt_emailc);
                        $_SESSION['mensaje']=$emp->mensaje;
			$_SESSION['msgTipo']=$emp->msgTipo;
			$_SESSION['msgTitle']=$emp->msgTitle;

			$error_redirect_to = 'empresa.php';
			$ty_redirect_to = 'empresa.php';
                    break;
                case 'guarda-noticia':
                    $noti = new noticia;
                    $noti->agregar($txt_titulo, $txt_decrip, $txt_conten,$slt_status);
                    $_SESSION['mensaje']=$noti->mensaje;
                    $_SESSION['msgTipo']=$noti->msgTipo;
                    $_SESSION['msgTitle']=$noti->msgTitle;

                    $error_redirect_to = 'noticia.php';
                    $ty_redirect_to = 'noticia.php';
                    break;
                case 'guarda-evento':
                    $eventos = new evento;
                    $eventos->agregar($txt_titulo, $txt_descrip);
                    $_SESSION['mensaje']=$eventos->mensaje;
                    $_SESSION['msgTipo']=$eventos->msgTipo;
                    $_SESSION['msgTitle']=$eventos->msgTitle;
                    $error_redirect_to = 'eventos.php';
                    $ty_redirect_to = 'eventos.php';
                    break;
                case 'guarda-test':
                    $test = new testimonio;
                    $test->agregar($txt_test);
                    $_SESSION['mensaje']=$test->mensaje;
                    $_SESSION['msgTipo']=$test->msgTipo;
                    $_SESSION['msgTitle']=$test->msgTitle;
                    $error_redirect_to = 'testimonio.php';
                    $ty_redirect_to = 'testimonio.php';
                    break;
                case 'modifica-evento':
                    $eventos = new evento;
                    $eventos->actualizar($txt_titulo, $txt_descrip,$evento);
                    $_SESSION['mensaje']=$eventos->mensaje;
                    $_SESSION['msgTipo']=$eventos->msgTipo;
                    $_SESSION['msgTitle']=$eventos->msgTitle;
                    $error_redirect_to = 'eventos.php';
                    $ty_redirect_to = 'eventos.php';
                    break;
                case 'modifica-noticia':
                    $noti = new noticia();
                    $noti->actualizar($txt_titulo, $txt_decrip, $txt_conten,$slt_status, $noticia);
                    $_SESSION['mensaje']=$noti->mensaje;
                    $_SESSION['msgTipo']=$noti->msgTipo;
                    $_SESSION['msgTitle']=$noti->msgTitle;
                    $error_redirect_to = 'noticia.php';
                    $ty_redirect_to = 'noticia.php';
                    break;
                case 'modifica-test':
                    $test = new testimonio;
                    $test->actualizar($txt_test, $testimonio);
                    $_SESSION['mensaje']=$test->mensaje;
                    $_SESSION['msgTipo']=$test->msgTipo;
                    $_SESSION['msgTitle']=$test->msgTitle;
                    $error_redirect_to = 'testimonio.php';
                    $ty_redirect_to = 'testimonio.php';
                    break;
                case 'agrega-instalacion':
                    $section = new seccion;
                    $section->actualizaInstalacion($txt_instalacion);
                    $_SESSION['mensaje']=$section->mensaje;
                    $_SESSION['msgTipo']=$section->msgTipo;
                    $_SESSION['msgTitle']=$section->msgTitle;
                    $error_redirect_to = 'instalaciones.php';
                    $ty_redirect_to = 'instalaciones.php';
                    break;
                case 'agrega-servicio':
                    $service = new servicio;
                    $service->agregar($txt_servicio, $txt_descripcion);
                    $_SESSION['mensaje']=$service->mensaje;
                    $_SESSION['msgTipo']=$service->msgTipo;
                    $_SESSION['msgTitle']=$service->msgTitle;
                    $error_redirect_to = 'servicios.php';
                    $ty_redirect_to = 'servicios.php';
                    break;
                case 'agrega-cobertura':
                    $section = new seccion;
                    $section->actualizaCobertura($txt_cobertura);
                    $_SESSION['mensaje']=$section->mensaje;
                    $_SESSION['msgTipo']=$section->msgTipo;
                    $_SESSION['msgTitle']=$section->msgTitle;
                    $error_redirect_to = 'cobertura.php';
                    $ty_redirect_to = 'cobertura.php';
                    break;
                case 'modifica-servicio':
                    $service = new servicio;
                    $service->actualizar($txt_servicio, $txt_descripcion,$servicio);
                    $_SESSION['mensaje']=$service->mensaje;
                    $_SESSION['msgTipo']=$service->msgTipo;
                    $_SESSION['msgTitle']=$service->msgTitle;
                    $error_redirect_to = 'servicios.php';
                    $ty_redirect_to = 'servicios.php';
                    break;
               /* case 'listar-servicio':
                    if (isset($_POST['slt_filtro'])&& isset($_POST['txt_valor']))
                    {
                        $filtro = $_POST['slt_filtro'];
                        $valor = $_POST['txt_valor'];
                    $error_redirect_to = "servicios.php?filtro='$filtro'&id='$valor'";
                    $ty_redirect_to = "servicios.php?filtro='$filtro'&id='$valor'";
                    }
                    break;*/
                  
                
                default:
			$_SESSION['mensaje'] = 'Formulario especificado no es válido. Póngase en contacto con nosotros si tiene alguna pregunta.';
			$_SESSION['msgTipo']="error";
			header("Location: index.php");
			exit();
                    break;
	}
        
       
	$lang_dir = '';
	
	if($form_error)
	{
		$_SESSION[$_POST['form']] = $_POST;
		header("Location: ".$lang_dir.$error_redirect_to);
		exit();
	}
	try
	{
		//$user = UserFactory::getUserType($_POST);
		//$user->email();
		
		//$admin = AdminFactory::getAdminType($_POST);
		//$admin->notify();

		//$subscriber = SubscriberFactory::getSubscriberType($_POST);
		//$subscriber->subscribe();

		unset($_SESSION[$_POST['form']]);
		header("Location: ".$lang_dir.$ty_redirect_to);

	}
	catch(Exception $e)
	{
		$_SESSION['active_form'] = $_POST['form'];
		$_SESSION[$_POST['form']] = $_POST;
		$_SESSION['mensaje'] = 'Error inesperado al intentar procesar su solicitud. Por favor, inténtelo de nuevo más tarde.';
		header("Location: ".$lang_dir.$error_redirect_to);
	}     
}               
?>
