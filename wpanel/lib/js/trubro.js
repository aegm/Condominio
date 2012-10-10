/* 
 * Creado por el Ing. Angel Gonzalez
 * Email: Angeledugo@gmail.com
 */
$(document).ready(function(){
     //CARGANDO LAS TORRES
     var url = "ajax.php";
        $.ajax({
                type	: "GET",
                cache	: false,
                dataType: "json",
                url     : url,
                data	:'a=buscar-torre',
                success: function(data) {
                    if(!data.estatus && data.msgTipo == "aviso")
                    {
                        $(".mensaje").dialog("option", "title",data.msgTitle);
                        $(".mensaje").attr("id",data.msgTipo);
                        $(".mensaje").html('<p><span class="ui-icon ui-icon-circle-close" style="float:left; margin:0 7px 20px 0;"></span></p>'+data.mensaje).dialog('open');
                    }
                           var lineas = '';
                           lineas = ('<option value="">Seleccione</option>');
                           $.each(data.datos, function(i,valor){
                                lineas += ('<option value="'+valor.id_torre+'">'+valor.nombre_torre+'</option>');
                            });
                           $('#slt_torre').html(lineas); 
                            
                }
        });
})


