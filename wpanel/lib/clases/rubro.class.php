<?php
 //session_start();
//require_once('../../../config.php');//prueba de objeto
require_once('dbi.class.php');
require_once('dbi.result.class.php');
 
class rubro
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
                $completar_sql = "where id_rubro = $data";
            
            
            $consulta=$this->db->query("SELECT * FROM rubro_gastos $completar_sql");   
            
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
        public function agregar($txt_rubro)
        {
            $query = "insert into rubro_gastos (nombre, id_condominio)VALUES('$txt_rubro',1)";
            $actualiza = $this->db->query($query);
            if(!$this->db->errno){
                $this->mensaje = "Se Agregaron los Registros Correctamente";
                $this->msgTitle = "Datos del rubro";
                $this->msgTipo = "ok";
                $this->estatus = true;
            }else{
                 $this->mensaje = "No se Pudieron guardar los Registros";
                 $this->msgTipo = "error";
                 $this->estatus = false;
            }
            
            return $this->estatus;
        }
        public function adicionarTorre($slt_rubro,$slt_torre)
        {
            $query = "insert into rubro_torre (id_rubro, id_torre)VALUES('$slt_rubro','$slt_torre')";
            $actualiza = $this->db->query($query);
            if(!$this->db->errno){
                $this->mensaje = "Se Agregaron los Registros Correctamente";
                $this->msgTitle = "Datos del rubro";
                $this->msgTipo = "ok";
                $this->estatus = true;
            }else{
                 $this->mensaje = "No se Pudieron guardar los Registros";
                 $this->msgTipo = "error";
                 $this->estatus = false;
            }
            
            return $this->estatus;
        }
        public function actualizar($txt_rubro,$rubro)
        {
             $query = "UPDATE rubro_gastos SET nombre = '$txt_rubro' where id_rubro = $rubro";
            
             $actualiza = $this->db->query($query);
            if(!$this->db->errno){
                $this->mensaje = "Se Actualizaron los Registros Correctamente";
                $this->msgTitle = "Datos del rubro";
                $this->msgTipo = "ok";
                $this->estatus = true;
            }else{
                 $this->mensaje = "No se Pudieron Actualizar los Registros";
                 $this->msgTipo = "error";
                 $this->estatus = false;
            }
            
            return $this->estatus;
        }
        public function eliminar($nr_rubro)
        {
            $query = "DELETE FROM rubro_gastos where id_rubro = '$nr_rubro'";
            $elimina = $this->db->query($query);
            if(!$this->db->errno){
                $this->mensaje = "Se Elimino el Registro Correctamente";
                $this->msgTitle = "Datos del rubro";
                $this->msgTipo = "ok";
                $this->estatus = true;
            }else{
                 $this->mensaje = "No se Pudo Actualizar los Registros";
                 $this->msgTipo = "error";
                 $this->msgTitle = "Datos del rubro";
                 $this->estatus = false;
            }
              $this->json = json_encode($this);
            return $this->estatus;
            
        }
        
        public function eliminarRubroTorre($nr_rubro, $nr_torre)
        {
            $query = "DELETE FROM rubro_torre where id_rubro = '$nr_rubro' and id_torre = $nr_torre ";
            $elimina = $this->db->query($query);
            if(!$this->db->errno){
                $this->mensaje = "Se Elimino el Registro Correctamente";
                $this->msgTitle = "Datos del rubro";
                $this->msgTipo = "ok";
                $this->estatus = true;
            }else{
                 $this->mensaje = "No se Pudo Actualizar los Registros";
                 $this->msgTipo = "error";
                 $this->msgTitle = "Datos del rubro";
                 $this->estatus = false;
            }
              $this->json = json_encode($this);
            return $this->estatus;
        }


        public function rubroTorre($rubro, $torre)
        {
             if (isset($rubro) && isset($torre))
                $completar_sql = "and r.id_rubro = $rubro and t.id_torre = $torre ";
            
            
            $consulta=$this->db->query("SELECT r.id_rubro, r.nombre,t.id_torre, t.nombre_torre FROM rubro_torre rt, rubro_gastos r, torres t where rt.id_rubro = r.id_rubro and t.id_torre = rt.id_torre $completar_sql");   
            
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
               
        }
        
        public function actualizarRubroTorre($slt_rubro, $slt_torre,$rubro,$torre)
        {
             $query = "UPDATE rubro_torre SET id_rubro = '$slt_rubro', id_torre = '$slt_torre' where id_rubro = $rubro and id_torre = $torre";
            
             $actualiza = $this->db->query($query);
            if(!$this->db->errno){
                $this->mensaje = "Se Actualizaron los Registros Correctamente";
                $this->msgTitle = "Datos del rubro";
                $this->msgTipo = "ok";
                $this->estatus = true;
            }else{
                 $this->mensaje = "No se Pudieron Actualizar los Registros";
                 $this->msgTipo = "error";
                 $this->estatus = false;
            }
            
            return $this->estatus;
        }
	
}
//----------------------------------------------------------
// 						PRUEBAS DE LA CLASE

//$emp = new empresa;
//$emp->datBas();
//echo "<br><textarea>".print_r($emp->json,true)."</textarea>";

//----------------------------------------------------------
