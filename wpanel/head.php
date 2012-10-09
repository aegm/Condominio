<?php

/*
 * Archivo creado por el Ing. angel Gonzalez
 * correo: angeledugo@gmail.com
 */
//ini_set('error_report', E_ALL);
//error_reporting(E_ALL);
/*****************************LIBRERIAS GLOBALES**********************************/
require_once '../config.php';
require_once("lib/clases/usr.class.php");
require_once("lib/clases/menu.class.php");
require_once 'lib/clases/plantilla.class.php';
/*****************************OBJETO GLOBAL***************************************/
$html = new plantilla;
$menu = new menu;
/*****************************VARIABLES PREDEFINIDAS******************************/
$matriz['TITULO'] = "";
$matriz['TITULO_PAGINA']= "";
$matriz['MENSAJE'] = "";
$matriz['MSGTITLE'] = "";
$matriz['MSGTIPO'] = "";
$matriz['CONTENIDO'] = "";
$matriz['JS'] = "";
$matriz['CSS'] = "";
$matriz['USR_INFO'] = "";
$matriz['ROOT_URL'] = ROOT_URL;
//SI ESTA HABILITADO EL ANALITY EJECUTA LO SIGUIENTE
if(GOOGLE_ANALYTICS)
		$matriz['GOOGLE_ANALYTICS'] = $html->html(ROOT_DIR.'html/google_analytics.html');
	else
		$matriz['GOOGLE_ANALYTICS'] = "";
        
/****************************SESSION DE USUARIOS********************************/
$matriz['USR_INFO'] = "";        

/***************************************** MENU DE USUARIO ***********************************************/
	$array['submenu_item']="";
	
	$nav['MENU']="";
	if($menu->datos)
		foreach($menu->datos as $item)
		{
			if($item['url'] != "#")
				$item['url'] =  ROOT_URL.$item['url'];
			if(isset($item['submenu']))
			{
                            $a_submenu="";
				foreach($item['submenu'] as $submenu)
				{
					if($submenu['url'] != "#")
						$submenu['url'] =  ROOT_URL.$submenu['url'];
					if($permiso->datos[basename($submenu['url'])]['ver'])
						if($submenu['id_acceso']!='5')
							$a_submenu .= $html->html("html/submenu_item.html",$submenu);
						else
							$a_submenu .= $html->html("html/boton_chat_cliente.html");//esto es en caso de tener acceso al chat para clientes
				}
				$item['submenu'] = $html->html("html/submenu.html",array("submenus"=>$a_submenu));
				$nav['MENU'] .= $html->html("html/menu.html",$item);
			}
			else
			{
                            $item['submenu']="";
				/*if($permiso->datos[basename($item['url'])]['ver'])*/
					$nav['MENU'] .= $html->html("html/menu.html",$item);
			}
                         $matriz['ASIDE'] = $html->html("html/aside.html",$nav);
		}
/*************************************** VALIDACION DEL BROWSER *******************************************/
        
/***************************************** MENSAJES GENERALES **********************************************/
	
	if(isset($_SESSION['mensaje']))
	{
		if($_SESSION['msgTipo']=="aviso")
			$i['icon']="ui-icon-alert";
		if($_SESSION['msgTipo']=="error")
			$i['icon']="ui-icon-circle-close";
		if($_SESSION['msgTipo']=="ok")
			$i['icon']="ui-icon-circle-check";
		if($_SESSION['msgTipo']=="info")
			$i['icon']="ui-icon-info";
		$matriz['MENSAJE']=$html->html('html/i.html',$i).$_SESSION['mensaje'];
		$matriz['MSGTIPO']=$_SESSION['msgTipo'];
		$matriz['MSGTITLE']=$_SESSION['msgTitle'];
		unset($_SESSION['mensaje']);
		unset($_SESSION['msgTipo']);
		unset($_SESSION['msgTitle']);
	}

/****************************ARCHIVOS CSS Y JS***********************************/
$archivo=basename($_SERVER['PHP_SELF']);
	$archivo=explode(".",$archivo);
	$archivo=$archivo[0];
if (is_file("lib/js/$archivo".".js"))
        $matriz['JS'] .= $html->html("html/js.html",array("src"=>"lib/js/".$archivo.".js"));
if(is_file("css/$archivo".".css"))
		$matriz['CSS']=$html->html("html/css.html",array("href"=>"css/".$archivo.".css","media"=>"all"));
  
?>
