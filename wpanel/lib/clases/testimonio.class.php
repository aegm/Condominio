<?php
 //session_start();
//require_once('../../../config.php');//prueba de objeto
require_once('dbi.class.php');
require_once('dbi.result.class.php');
 
class testimonio
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
           $consulta=$this->db->query("SELECT * FROM testimonio where id_test = $data");
               
            if($consulta->num_rows==0)
		{
			$this->mensaje = "No se encontraron Testimonios...";
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
        
        public function agregar($txt_test)
        {
            
            $query = "insert into testimonio (testimonio)VALUES('$txt_test')";
            $actualiza = $this->db->query($query);
            if(!$this->db->errno){
                $this->mensaje = "Se Agregaron los Registros Correctamente";
                $this->msgTitle = "Datos del Testimonio";
                $this->msgTipo = "ok";
                $this->estatus = true;
            }else{
                 $this->mensaje = "No se Pudieron Actualizar los Registros";
                 $this->msgTipo = "error";
                 $this->estatus = false;
            }
            
            return $this->estatus;
        }
        
        public function actualizar($txt_test, $testimonio){
           $query = "UPDATE testimonio SET testimonio = '$txt_test'where id_test = $testimonio";
            
             $actualiza = $this->db->query($query);
            if(!$this->db->errno){
                $this->mensaje = "Se Actualizaron los Registros Correctamente";
                $this->msgTitle = "Datos del Testimonio";
                $this->msgTipo = "ok";
                $this->estatus = true;
            }else{
                 $this->mensaje = "No se Pudieron Actualizar los Registros";
                 $this->msgTipo = "error";
                 $this->estatus = false;
            }
            
            return $this->estatus;
        }
        
        public function eliminar($nr_test){
            $query = "DELETE FROM testimonio where id_test = '$nr_test'";
            $elimina = $this->db->query($query);
            if(!$this->db->errno){
                $this->mensaje = "Se Elimino el Registro Correctamente";
                $this->msgTitle = "Datos del Testimonio";
                $this->msgTipo = "ok";
                $this->estatus = true;
            }else{
                 $this->mensaje = "No se Pudo Actualizar los Registros";
                 $this->msgTitle = "Datos del Testimonio";
                 $this->msgTipo = "error";
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
