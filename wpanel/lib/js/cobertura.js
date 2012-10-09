/* 
 * Creado por el Ing. Angel Gonzalez
 * Email: Angeledugo@gmail.com
 */
//cargando el fckeditor
window.onload = function() 
{ 
 var contenido = $("#hdd_cobertura").val();
 $("#txt_cobertura").val(contenido);
 var oFCKeditor = new FCKeditor( 'txt_cobertura' ) ;
oFCKeditor.ReplaceTextarea() ; 


 
} 


