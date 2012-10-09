/* 
 * Creado por el Ing. Angel Gonzalez
 * Email: Angeledugo@gmail.com
 */
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
    
    
    //PLUGINS INICIALIZADO PARA EL SORTABLE DE LA TABLA EVENTO
    $(function() {		
        $("#myTable").tablesorter({sortList:[[0,0],[2,1]], widgets: ['zebra']});
        $("#options").tablesorter({sortList: [[0,0]], headers: { 3:{sorter: false}, 4:{sorter: false}}});
            
    });
    
    
    
    //FUNCION PARA ACTIVAR EL FILTRO Y SU BOTON DE BUSQUEDA
    $("#btn_verificar").click(function(){
          $("#frm_filtro").submit();
    });
    
});


function habilita_form(){
    $('#forma_servicio').animate({
        left: '+=50',
        height: 'toggle'
        }, 1000, function() {
        // Animation complete.
        });
}

function buscar_forma(id){
    var url = "ajax.php?a=buscar-servicio";
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
    $('#forma_servicio').animate({
        left: '+=50',
        height: 'toggle'
        }, 200, function() {
        $('#txt_servicio').val(item.nombre);
         var oEditor = FCKeditorAPI.GetInstance('txt_descripcion');
        var pageValue = oEditor.SetHTML(item.descripcion);
        $('#form').val('modifica-servicio');
        $('#servicio').val(item.id_servicio);
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
                data	:'a=eliminar-servicio&nr_servicio='+data,
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
var oFCKeditor = new FCKeditor( 'txt_descripcion' ) ; 
oFCKeditor.ReplaceTextarea() ; 
} 
