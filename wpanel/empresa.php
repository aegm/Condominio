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

    $matriz['TITULO'] .= "Almacenadora Adonai.";
    $matriz['KEYWORDS'] = "";
    $matriz['DESCRIPTION'] = "";
    $matriz['BODY'] = "inicio";
    $matriz['ROOT_URL'] = ROOT_URL;
    
    /********************************************* CONTENIDO *******************************************/
    //ADICIONANDO EL FORMULARIO DE LA EMPRESA
    $array = array();
    $emp->datBas();
    $array['FORMULARIO'] = formulario_html('frm_empresa',array("txt_rsocial"=>$emp->rsocial,"txt_rif"=>$emp->identificacion,"txt_somos"=>$emp->somos,"txt_mision"=>$emp->mision,"txt_vision"=>$emp->vision,"txt_tel"=>$emp->telefono,"txt_email"=>$emp->correo,"txt_emailc"=>$emp->email));
    $matriz['CONTENIDO'] = $html->html("html/$archivo.html",$array);
    /***************************************** IMPRIMIENDO MATRIZ ***************************************/
    echo $html->html("html/matriz.html",$matriz);
    
    

