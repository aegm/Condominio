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
    require_once("lib/clases/rubro.class.php");
    
    /*************************************** OJEBTOS LOCALES ******************************************/

    $rub = new rubro;    
    /**************************************************************************************************/	

    include_once('head.php');

    /**************************************** VARIABLES DE MATRIZ **************************************/

    $matriz['TITULO'] .= NOMBRE;//"Almacenadora Adonai.";
    $matriz['KEYWORDS'] = "";
    $matriz['DESCRIPTION'] = "";
    $matriz['BODY'] = "inicio";
    $matriz['ROOT_URL'] = ROOT_URL;
    $matriz['CSS'] .= incluir_lib(ROOT_URL."wpanel/css/tabla.css");
    //PLUGINS INCLUIDOS PARA TABLAS SORTABLES
    $matriz['CSS'] .= incluir_lib(ROOT_URL."wpanel/css/sortable.theme.blue/style.css");  
    $matriz['JS'] .= incluir_lib(ROOT_URL."wpanel/lib/js/tablesorter/jquery.tablesorter.js");
   
    
    /********************************************* CONTENIDO *******************************************/
    $array['cabezas'] = "";
    $array['registros'] = "";
    $datos['tabla'] = "";
    $p = 1;
    $inicial = $i = ($p-1)*$l;
    $inicial++;
    
    $rub->rubroTorre();
    if($rub->estatus){
        foreach ($rub->datos as $registro )
        {
            $campos = "";
            $i++;
            foreach ($registro as $campo => $valor)
            {
                $atributos = "";
                $formato = substr(strstr($campo, '..'), 2);
                $valor = formato($formato,$valor);
                if($i == $inicial && $campo !='id_rubro' && $campo != 'id_torre')
                $array['cabezas'] .= $html->html("html/cabeza_tabla.html",array("cabeza"=>str_replace("..".extension($campo),"",$campo)));
                
                if($campo !='id_rubro' && $campo != 'id_torre') 
                $campos .= $html->html("html/campo_tabla.html",array("campo"=>$valor,"atributos"=>$atributos));
            }
            if($i % 2 == 0)
                    $clase = "bg_tabla";
            else
                    $clase = "";
            $accion = $html->html("html/accion_tabla.html",array("id"=>$registro['id_rubro'],"valor"=>$registro['id_torre'],"ROOT_URL"=>ROOT_URL));
            $array['registros'] .= $html->html("html/lista_tabla.html",array("tabla"=>$tabla,"id"=>$registro['id_servicio'],"i"=>$i,"campos"=>$campos,"clase"=>$clase,"accion"=>$accion));
        }
    }
    //ADICIONANDO EL FORMULARIO PARA AGREGAR UNA NOTICIA O EDITARLA
    $array['FORMULARIO'] = formulario_html('frm_trubro');
    $matriz['CONTENIDO'] = $html->html("html/$archivo.html",$array);
    /***************************************** IMPRIMIENDO MATRIZ ***************************************/
    echo $html->html("html/matriz.html",$matriz);
    
    

