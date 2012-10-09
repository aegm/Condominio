<?php
 //session_start();
//require_once('../../../config.php');//prueba de objeto
require_once('dbi.class.php');
require_once('dbi.result.class.php');
 
class noticia
{
	private $db;
        public $estatus;
        public $mensaje;
	public $msgTipo;
        public $msgTitle;
        public $datos="";
	public $json="";
        public function __construct()
	{
	  $this->db=new db;
	}
	public function listar($data)
	{
            if (isset($data))
                $completar_sql = "where id_noticia = $data";
            
            
            $consulta=$this->db->query("SELECT * FROM noticias $completar_sql");   
            
            if($consulta->num_rows==0)
		{
			$this->mensaje = "No se encontraron Noticias...";
			$this->msgTipo = "aviso";
			$this->estatus = false;
			$this->json = json_encode($this);
			return $this->estatus;
		}
            
                    $this->datos = $consulta->all();
                    $this->mensaje="Se Mostraron los datos correctamente";
                    $this->msgTipo="ok";
                    $this->estatus = true;
                    $this->json = json_encode($this);
               
                return $this->estatus;
                
	}
        
        public function agregar($txt_titulo, $txt_decrip, $txt_conten,$slt_status)
        {
            
            $query = "insert into noticias (titulo, descripcion,contenido,status)VALUES('$txt_titulo','$txt_decrip','$txt_conten','$slt_status')";
            $actualiza = $this->db->query($query);
            if(!$this->db->errno){
                $this->mensaje = "Se Agregaron los Registros Correctamente";
                $this->msgTitle = "Datos de Noticia";
                $this->msgTipo = "ok";
                $this->estatus = true;
            }else{
                 $this->mensaje = "No se Pudieron Actualizar los Registros";
                 $this->msgTipo = "error";
                 $this->estatus = false;
            }
            
            return $this->estatus;
        }
        
        public function actualizar($txt_titulo, $txt_decrip, $txt_conten,$slt_status, $noticia){
             $query = "UPDATE noticias SET titulo = '$txt_titulo',descripcion = '$txt_decrip', contenido = '$txt_conten', status = '$slt_status' where id_noticia = $noticia";
            
             $actualiza = $this->db->query($query);
            if(!$this->db->errno){
                $this->mensaje = "Se Actualizaron los Registros Correctamente";
                $this->msgTitle = "Datos de la noticia";
                $this->msgTipo = "ok";
                $this->estatus = true;
            }else{
                 $this->mensaje = "No se Pudieron Actualizar los Registros";
                 $this->msgTipo = "error";
                 $this->estatus = false;
            }
            
            return $this->estatus;
        }
        
         public function eliminar($nr_noticia){
            $query = "DELETE FROM noticias where id_noticia = '$nr_noticia'";
            $elimina = $this->db->query($query);
            if(!$this->db->errno){
                $this->mensaje = "Se Elimino el Registro Correctamente";
                $this->msgTitle = "Datos de la Noticia";
                $this->msgTipo = "ok";
                $this->estatus = true;
            }else{
                 $this->mensaje = "No se Pudo Actualizar los Registros";
                 $this->msgTipo = "error";
                 $this->msgTitle = "Datos de la Noticia";
                 $this->estatus = false;
            }
              $this->json = json_encode($this);
            return $this->estatus;
            
        }
	
}
//----------------------------------------------------------
// 						PRUEBAS DE LA CLASE

//$emp = new empresa;
//$emp->datBas();
//echo "<br><textarea>".print_r($emp->json,true)."</textarea>";

//----------------------------------------------------------
