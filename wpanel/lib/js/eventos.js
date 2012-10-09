/* 
 * Archivo Creado por el Ing. Angel Gonzalez
 * correo angeledugo@gmail.com
 */
$(document).ready(function(){
  $(function(){
        //INICIALIZANDO LOS OPERADORES
        var html = "<option value=''>Seleccione</option>";
            html += "<option value=\'=\'>Igual</option>";
            html += "<option value=\'<>\'>Diferente</option>";
            html += "<option value=\'>=\'>Mayor Igual</option>"
            html += "<option value=\'<=\'>Menor Igual</option>"
            html += "<option value=\'LIKE\'>Como</option>"
        $('#operadores').html(html);    
    });
    
    //habilitando el formulario para agregar las noticias
    $('#btn_agregar').click(function(){
        habilita_form();
    });
    
    $("#btn_verificar").click(function(){
          $("#frm_fevento").submit();
    });
    //PLUGINS INICIALIZADO PARA EL SORTABLE DE LA TABLA EVENTO
    $(function() {		
        $("#myTable").tablesorter({sortList:[[0,0],[2,1]], widgets: ['zebra']});
        $("#options").tablesorter({sortList: [[0,0]], headers: { 3:{sorter: false}, 4:{sorter: false}}});
    });
});


function habilita_form(){
    $('#forma_evento').animate({
        left: '+=50',
        height: 'toggle'
        }, 1000, function() {
        // Animation complete.
        });
}

function buscar_forma(id){
    var url = "ajax.php?a=buscar-evento";
    var data = id;
        $.ajax({
                type	: "GET",
                cache	: false,
                dataType: "json",
                url     : url,
                data	:'data='+data,
                success: function(data) {
                    if(!data.estatus && data.msgTipo == "aviso")
                    {
                        $(".mensaje").dialog("option", "title",data.msgTitle);
                        $(".mensaje").attr("id",data.msgTipo);
                        $(".mensaje").html('<p><span class="ui-icon ui-icon-circle-close" style="float:left; margin:0 7px 20px 0;"></span></p>'+data.mensaje).dialog('open');
                    }
                           response($.map(data.datos,function(item){
                           llenar_forma(item);
                                        
                           }));
                }
        });
}

function llenar_forma(item){
    $('#forma_evento').animate({
        left: '+=50',
        height: 'toggle'
        }, 200, function() {
        $('#txt_titulo').val(item.titulo_evento);
         var oEditor = FCKeditorAPI.GetInstance('txt_descrip');
        var pageValue = oEditor.SetHTML(item.descripcion);
        $('#form').val('modifica-evento');
        $('#evento').val(item.id_evento);
        });
}

function eliminar_forma(id){
    var url = "ajax.php";
    var data = id;
        $.ajax({
                type	: "GET",
                cache	: false,
                dataType: "json",
                url     : url,
                data	:'a=eliminar-evento&nr_evento='+data,
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
                    }
                }
        });
}


function buscar_img(dir,id)
{
  var urlToOpen = "imagenes.php?dir="+dir+"&id="+id;
  window.location = urlToOpen;
}

//cargando el fckeditor
window.onload = function() 
{ 
var oFCKeditor = new FCKeditor( 'txt_descrip' ) ; 
oFCKeditor.ReplaceTextarea() ; 
} 
