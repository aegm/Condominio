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
    //trayendo los datos de las instalaciones
    $instal->listar($data);
  
    
    //ADICIONANDO EL FORMULARIO DE LA EMPRESA
    $array = array();
    //$emp->datBas();
    $array['FORMULARIO'] = formulario_html('frm_cobertura',array("hdd_cobertura"=>$instal->cobertura));
    $matriz['CONTENIDO'] = $html->html("html/$archivo.html",$array);
    /***************************************** IMPRIMIENDO MATRIZ ***************************************/
    echo $html->html("html/matriz.html",$matriz);
    
    
