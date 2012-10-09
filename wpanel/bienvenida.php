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
    require_once 'lib/clases/empresa.class.php';

    
    /*************************************** OJEBTOS LOCALES ******************************************/
    $emp = new empresa;
    /**************************************************************************************************/	

    include_once('head.php');

    /**************************************** VARIABLES DE MATRIZ **************************************/

    $matriz['TITULO'] .= "Sistema de Gestio de Pagos de Condominio";
    $matriz['KEYWORDS'] = "";
    $matriz['DESCRIPTION'] = "";
    $matriz['BODY'] = "inicio";
    $matriz['ROOT_URL'] = ROOT_URL;
    
    /********************************************* CONTENIDO *******************************************/
    //ADICIONANDO EL FORMULARIO DE LA EMPRESA
    $array = array();
    $emp->datBas();
    $matriz['CONTENIDO'] = $html->html("html/$archivo.html");
    /***************************************** IMPRIMIENDO MATRIZ ***************************************/
    echo $html->html("html/matriz.html",$matriz);
    
    

