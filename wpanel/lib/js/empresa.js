/* 
 * Archivo Creado por el Ing. Angel Gonzalez
 * correo angeledugo@gmail.com
 */
$(document).ready(function(){
  $('#btn_modificar').click(function(){
    $('input[type="text"]').removeAttr('disabled');
    $('textarea').removeAttr('disabled');
    $('#submit').removeAttr('disabled');
    $('#submit').removeClass( "ui-button-disabled ui-state-disabled" );
  });
      
  $('#submit').click(function(){
      if($('#'+$(this).parents("form").attr("id")).validarForm())
           return true;
  });    
})

