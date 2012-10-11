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
  function buscar_forma(id,valor){
    var url = "ajax.php?a=buscar-trubro";
    var data = id;
    var valor = valor;
     $.ajax({
             type	: "GET",
             cache	: false,
             dataType: "json",
             url     : url,
             data	:'data='+data+'&torre='+valor,
             success: function(data) {
                 if(!data.estatus && data.msgTipo == "aviso")
                 {
                     $(".mensaje").dialog("option", "title",data.msgTitle);
                     $(".mensaje").attr("id",data.msgTipo);
                     $(".mensaje").html('<p><span class="ui-icon ui-icon-circle-close" style="float:left; margin:0 7px 20px 0;"></span></p>'+data.mensaje).dialog('open');
                 }
                        ($.map(data.datos,function(item){
                        llenar_forma(item,id,valor);

                        }));
             }
     });
    }
    function llenar_forma(item,id,valor){
            $('#slt_rubro').val(item.id_rubro);
            $('#slt_torre').val(item.id_torre);
            $('#form').val('modifica-trubro');
            $('#rubro').val(id);
            $('#torre').val(valor);
    }
    
    function eliminar_forma(id,valor){
    var url = "ajax.php";
    var data = id;
    var valor = valor;
        $.ajax({
                type	: "GET",
                cache	: false,
                dataType: "json",
                url     : url,
                data	:'a=eliminar-trubro&nr_rubro='+data+'&nr_torre='+valor,
                success: function(data) {
                    if(data.estatus && data.msgTipo == "ok")
                    {
                        $(".mensaje").dialog({
                          title:  data.msgTitle,
                          buttons:{
                              "ok":function(){
                               location.reload();
                              }
                          }
                        });
                        $(".mensaje").attr("id",data.msgTipo);
                        $(".mensaje").html('<p><span class="ui-icon ui-icon-circle-close" style="float:left; margin:0 7px 20px 0;"></span></p>'+data.mensaje).dialog('open');
                    }else{
                    $(".mensaje").dialog({
                          title:  data.msgTitle,
                          buttons:{
                              "ok":function(){
                               $(this).dialog('close');
                              }
                          }
                        });
                        $(".mensaje").attr("id",data.msgTipo);
                        $(".mensaje").html('<p><span class="ui-icon ui-icon-circle-close" style="float:left; margin:0 7px 20px 0;"></span></p>'+data.mensaje).dialog('open');
                    }
                }
        });
}

