<?php

/*
 * Autor: Angel Gonzalez
 * Correo: angeledugo@gmail.com
 */
/****************************************** CONFIGURACION DEL SISTEMA ************************************************/


/****************************************** CONFIGURACION GENERAL DEL SITIO *******************************************/
/** cambia el root del apache. **/
define('ROOT_DIR',dirname(__FILE__).'/');
define('ROOT_URL','http://localhost/condominio/');
//define('ROOT_URL','http://67.228.167.218/~condom/');

/** activa los tipos de erroes del servidor **/
//ini_set('error_report', E_ALL);
//error_reporting(E_ALL);

/** SMTP **/
define("SMTP","localhost");

/** determina la zona horaria del servidor web para el manejo de fecha y hora **/
ini_set("date.timezone", "America/Caracas");

/** Nombre del sistema **/
define("NOMBRE","SIGECONDOM");

/** Titulo que antepone el titulo en todas las paginas **/
define("PRE_TITULO","SIGECONDOM - ");

/** variable de session **/
define("SISTEMA","Condominio");

/** Activa o deactiva la consola para programar. **/
//define('CONSOLA', false);

/** Activa o deactiva el mantenimiento de la pagina. **/
define('MANTENIMIENTO', false);

/** DNS fuera del mantenimiento, cuando el mantenimiento esta activado. **/
define('DNS_MANTENIMIENTO', '');

/** DNS del lugar de desarrollo, activa opciones para el desarrollo. **/
define('DNS_DESARROLLO', '');

/** DNS del lugar de desarrollo, Para desactivar indexaccion de los buscadores. **/
define('DNS_NO_INDEX', '');

/** Activa el Google Analytics **/
define('GOOGLE_ANALYTICS', false);

/*********************************************** MYSQL BASE DE DATOS ***************************************************/

/** El nombre de tu base de datos */
//define("DB_NAME","condom_condominio");
define("DB_NAME","condominio");

//Tu nombre de usuario de MySQL 
//define('DB_USER', 'condom_condom');
define('DB_USER', 'root');

/** Tu contraseña de MySQL*/
//define('DB_PASS', 'c0nd0m');
define('DB_PASS', '1234');

/** Host de MySQL (es muy probable que no necesites cambiarlo)
define('DB_HOST', 'mysql500.ixwebhosting.com'); **/
define('DB_HOST', 'localhost');

/** Puerto de conexión del servidor Mysql. **/
define("DB_PORT","3306");

/** Codificación de caracteres para la base de datos. **/
define('DB_CHARSET', 'utf8');

/****************************************************** URLS **********************************************************/

/** libreria de fechas de jquery **/
//define('URL_UI_FECHAS', "https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.13/i18n/jquery.ui.datepicker-es.js");
?>
