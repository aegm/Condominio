/* 
 * Creado por el Ing. Angel Gonzalez
 * Email: Angeledugo@gmail.com
 */
//cargando el fckeditor
window.onload = function() 
{ 
 var contenido = $("#hdd_instalaciones").val();
 $("#txt_instalacion").val(contenido);
 var oFCKeditor = new FCKeditor( 'txt_instalacion' ) ;
oFCKeditor.ReplaceTextarea() ; 


 
} 


