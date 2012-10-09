/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function(){
$(function() {
    var get = getGET();
   var time = new Date().getTime();
			$('#file_upload').uploadifive({
				'auto'             : false,
				'checkScript'      : 'lib/upload/check-exists.php',
				'formData'         : {
									   'timestamp' : time,
									   'token'     : time,
                                                                           'dir'       : get['dir'],
                                                                           'sub_dir'   : get['id']
				                     },
				'queueID'          : 'queue',
				'uploadScript'     : 'lib/upload/uploadifive.php',
				'onUploadComplete' : function(file, data) { console.log(data); }
			});
		});
})

function subir_image(){
$('#file_upload').uploadifive('upload');
}

function getGET(){
   var loc = document.location.href;
   var getString = loc.split('?')[1];
   var GET = getString.split('&');
   var get = {};//this object will be filled with the key-value pairs and returned.

   for(var i = 0, l = GET.length; i < l; i++){
      var tmp = GET[i].split('=');
      get[tmp[0]] = unescape(decodeURI(tmp[1]));
   }
   return get;
}