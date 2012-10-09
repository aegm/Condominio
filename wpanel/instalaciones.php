<?php

/*
 * Archivo Creado por el Ing. Angel Gonzalez
 * Correo: angeledugo@gmail.com
 */
    session_start();
    /************************************** LIBRERIAS LOCALES *****************************************/
    require_once("../config.php");
    require_once 'lib/funciones.php';
    require_once 'lib/clases/formulario.class.php';
    require_once 'lib/clases/seccion.class.php';

    
    /*************************************** OJEBTOS LOCALES ******************************************/
    $instal = new seccion;
    /**************************************************************************************************/	

    include_once('head.php');

    /**************************************** VARIABLES DE MATRIZ **************************************/

    $matriz['TITULO'] .= "Almacenadora Adonai.";
    $matriz['KEYWORDS'] = "";
    $matriz['DESCRIPTION'] = "";
    $matriz['BODY'] = "inicio";
    $matriz['ROOT_URL'] = ROOT_URL;
    
    /********************************************* CONTENIDO *******************************************/
    $array = array();
    //trayendo los datos de las instalaciones
    $instal->listar($data);
  
    
    
    $array['FORMULARIO'] = formulario_html('frm_instalaciones',array("hdd_instalaciones"=>$instal->instalacion));
    $matriz['CONTENIDO'] = $html->html("html/$archivo.html",$array);
    /***************************************** IMPRIMIENDO MATRIZ ***************************************/
    echo $html->html("html/matriz.html",$matriz);
    
    
