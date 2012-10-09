<?php

/*
 * Archivo Creado por el Ing. Angel Gonzalez
 * Correo: angeledugo@gmail.com
 */
    session_start();
    /************************************** LIBRERIAS LOCALES *****************************************/
    require_once 'config.php';
    require_once 'wpanel/lib/clases/seccion.class.php';
   


    /*************************************** OJEBTOS LOCALES ******************************************/
    $section = new seccion();

    /**************************************************************************************************/	

    include_once('head.php');

    /**************************************** VARIABLES DE MATRIZ **************************************/

    $matriz['TITULO'] .= NOMBRE;
    $matriz['KEYWORDS'] = "";
    $matriz['DESCRIPTION'] = "";
    $matriz['BODY'] = "document.location = '#article'";
    //$matriz['CSS'].=$html->html("html/css.html",array("href"=>"/wschool/css/form.css","media"=>"all"));


    //$matriz['CSS'] .= $html->html("html/css.html",array("href"=>"css/--Colocar archivo--.css","media"=>"all"));
    //$matriz['JS'] .= $html->html("html/js.html",array("src"=>"lib/js/--Colocar archivo--.js"));

    /********************************************* CONTENIDO *******************************************/	
    
    $section->listar($data);
    
    $matriz['CONTENIDO'] = $html->html("html/$archivo.html",array("COBERTURA"=>$section->cobertura));
    /***************************************** MATRIZ **************************************************/
    echo $html->html("html/matriz.html",$matriz);
?>
