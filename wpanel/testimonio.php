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
    require_once("lib/clases/reporte.class.php");
    
    /*************************************** OJEBTOS LOCALES ******************************************/

    $reporte = new reporte;
    /**************************************************************************************************/	

    include_once('head.php');

    /**************************************** VARIABLES DE MATRIZ **************************************/

    $matriz['TITULO'] .= "Almacenadora Adonai.";
    $matriz['KEYWORDS'] = "";
    $matriz['DESCRIPTION'] = "";
    $matriz['BODY'] = "inicio";
    $matriz['ROOT_URL'] = ROOT_URL;
    $matriz['CSS'] .= incluir_lib(ROOT_URL."wpanel/css/tabla.css");
     //PLUGINS INCLUIDOS PARA TABLAS SORTABLES
    $matriz['CSS'] .= incluir_lib(ROOT_URL."wpanel/css/sortable.theme.blue/style.css");  
    $matriz['JS'] .= incluir_lib(ROOT_URL."wpanel/lib/js/tablesorter/jquery.tablesorter.js");
   
    
    /********************************************* CONTENIDO *******************************************/
    //LISTANDO LAS NOTICIAS
    $array['cabezas'] = "";
    $array['registros'] = "";
    $datos['tabla'] = "";
    
    $l = 100;
    $tabla = "testimonio";
    $c = array("testimonio");
    $p = 1;
    $id = "id_test";
    
     if(isset($_GET) && count($_GET))
	{
		//$id = json_decode(desencriptar($_GET['id']), true);
		$url = $_GET;
		foreach($_GET as $i => $valor)
			$$i = escapar($valor);
        }
    
    //realizando el calculo para diferenciar el comienzo de los encabezados
    $inicial = $i = ($p-1)*$l;
    $inicial++;
		
    $reporte->generar($tabla,$f,$o,$c,$l,$p,$id);
    if($reporte->estatus)
    {
            $array['registros'] = "";
            foreach($reporte->datos as $registro)
            {
                    $campos = "";
                        $i++;
                        foreach($registro as $campo => $valor)
                        {
                            $atributos = "";
                            $formato = substr(strstr($campo, '..'), 2);
                            $valor = formato($formato,$valor);
                            
                            if($i == $inicial)
                            $array['cabezas'] .= $html->html("html/cabeza_tabla.html",array("cabeza"=>str_replace("..".extension($campo),"",$campo)));
                            
                            $campos .= $html->html("html/campo_tabla.html",array("campo"=>$valor,"atributos"=>$atributos));
                        }
                        if($i % 2 == 0)
                                $clase = "bg_tabla";
                        else
                                $clase = "";
                        
                             //agregando acciones
                         $accion = $html->html("html/accion_tabla.html",array("id"=>$registro['id_test'],"dir"=>"test","ROOT_URL"=>ROOT_URL));
                         
                        $array['registros'] .= $html->html("html/lista_tabla.html",array("tabla"=>$tabla,"id"=>$registro['ID'],"i"=>$i,"campos"=>$campos,"clase"=>$clase,"accion"=>$accion));
            }
    }
    //FILTRO DE BUSSQUEDAS
     $arreglo = array ("slt_filtro"=>array("nombre"=>"id_test","testimonio"));
    $array['FILTRO'] = formulario_html('frm_ftestimonio',array("select"=>$arreglo,"tabla"=>"testimonio"));
    //ADICIONANDO EL FORMULARIO PARA AGREGAR UNA NOTICIA O EDITARLA
    $array['FORMULARIO'] = formulario_html('frm_testimonio');
    $matriz['CONTENIDO'] = $html->html("html/$archivo.html",$array);
    /***************************************** IMPRIMIENDO MATRIZ ***************************************/
    echo $html->html("html/matriz.html",$matriz);
    
    

