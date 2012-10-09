<?php
 //session_start();
//require_once('../../../config.php');//prueba de objeto
require_once('dbi.class.php');
require_once('dbi.result.class.php');
 
class servicio
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
                $completar_sql = "where id_servicio = $data";
            
            
            $consulta=$this->db->query("SELECT * FROM servicios $completar_sql");   
            
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
        
        public function agregar($txt_servicio, $txt_descripcion)
        {
            
            $query = "insert into servicios(nombre, descripcion)VALUES('$txt_servicio', '$txt_descripcion')";
            $actualiza = $this->db->query($query);
            if(!$this->db->errno){
                $this->mensaje = "Se Agregaron los Registros Correctamente";
                $this->msgTitle = "Datos del Servicio";
                $this->msgTipo = "ok";
                $this->estatus = true;
            }else{
                 $this->mensaje = "No se Pudieron Actualizar los Registros";
                 $this->msgTipo = "error";
                 $this->estatus = false;
            }
            
            return $this->estatus;
        }
        
        public function actualizar($txt_servicio, $txt_descripcion,$servicio){
             $query = "UPDATE servicios SET nombre = '$txt_servicio',descripcion = '$txt_descripcion' where id_servicio = $servicio";
            
             $actualiza = $this->db->query($query);
            if(!$this->db->errno){
                $this->mensaje = "Se Actualizaron los Registros Correctamente";
                $this->msgTitle = "Datos del Servicio";
                $this->msgTipo = "ok";
                $this->estatus = true;
            }else{
                 $this->mensaje = "No se Pudieron Actualizar los Registros";
                 $this->msgTipo = "error";
                 $this->estatus = false;
            }
            
            return $this->estatus;
        }
        
         public function eliminar($nr_servicio){
            $query = "DELETE FROM servicios where id_servicio = '$nr_servicio'";
            $elimina = $this->db->query($query);
            if(!$this->db->errno){
                $this->mensaje = "Se Elimino el Registro Correctamente";
                $this->msgTitle = "Datos del Servicio";
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
