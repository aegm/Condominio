<?php

/*
 * Archivo Creado por el Ing. Angel Gonzalez
 * Correo: angeledugo@gmail.com
 */
    session_start();
    /************************************** LIBRERIAS LOCALES *****************************************/
    require_once 'config.php';
    require_once 'wpanel/lib/clases/noticia.class.php';



    /*************************************** OJEBTOS LOCALES ******************************************/
    $noti = new noticia;
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
    //LISTANDO LAS NOTICIAS
    $noti->listar($_GET['id']);
    if($noti->estatus)
        foreach ($noti->datos as $valores) {
            
            $array['NOTICIA'] .= $html->html("html/noticias.html",array("id"=>$valores['id_noticia'],"titulo"=>$valores['titulo'],"descripcion"=>$valores['descripcion'],"conten"=>$valores['contenido'],"fecha" => $valores['fecha'],));
        }
    
    
    
    $matriz['CONTENIDO'] = $html->html("html/$archivo.html",$array);
    /***************************************** MATRIZ **************************************************/
    echo $html->html("html/matriz.html",$matriz);
?>
