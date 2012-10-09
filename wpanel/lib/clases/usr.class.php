<?php
 //session_start();
require_once('dbi.class.php');
require_once('dbi.result.class.php');
//require_once('../../../config.php'); //prueba de objeto
class usuario
{
	private $db;
	private $session = false;
	private $id_persona;
	public $identificacion;
	public $id_grupo;
	public $usuario;
	public $grupo;
	public $nombre;
	public $apellido;
	public $ultima;
	public $grado;
	public $datos_actualizados;
	public $leccion_actual;
	public $mensaje;
	public $msgTipo;
	public $msgTitle;
	public $datos="";
	public $json="";
	public $estatus;      
	public function __construct()
	{
		$this->cargar();
	}
	public function id_persona()
	{
		return $this->id_persona;
	}
	//***********************************************************************************************************
	public function registrar($id_grupo,$identificacion,$nombre,$apellido,$usuario,$clave)
	{
		
	}
	
        public function perfil($id_persona)
	{
		
	}
	
	//***********************************************************************************************************
	public function cambiar_clave($clave_actual, $nueva_clave, $repita_clave)
	{
		
	}
	//***********************************************************************************************************
	public function modificar($correo)
	{
		
	}
	
	//***********************************************************************************************************
	public function activar($id_persona)
	{
	
	}
	//***********************************************************************************************************
	public function inactivar($id_persona,$estatus)//el estatus que se desea colocar
	{
		
	}
	//***********************************************************************************************************
	
	public function login($user, $clave)
	{
		$this->msgTitle="Usuario - iniciar sesión";
		
		$clave=md5($clave);
		$this->db = new db;
		
		$usuarios=$this->db->query("SELECT * FROM vusuarios WHERE usuario='$user' AND clave='$clave'");
		if($usuario=$usuarios->fetch_assoc())
		{	
			if($usuario['estatus']=='2')
			{
				$this->mensaje="Su usuario ha sido inactivado. Para activar su Cuenta de Usuario debe comunicarse con nosotros por medio de la seccion de Contáctenos";
				$this->msgTipo="aviso";
				$this->estatus = false;
				$this->json=json_encode($this);
				return $this->estatus;
			}
			if($usuario['estatus']=='3')
			{
				$this->mensaje="Su contrato ha vencido, por lo tanto ha sido inactivado. Para renovar su Contrato debe comunicarse con nosotros por medio de la seccion de Contáctenos";
				$this->msgTipo="aviso";
				$this->estatus = false;
				$this->json=json_encode($this);
				return $this->estatus;
			}
			
			
			
			$this->id_persona=$_SESSION[SISTEMA]['id_persona']=$usuario['id_persona'];
			$this->identificacion=$_SESSION[SISTEMA]['identificacion']=$usuario['identificacion'];
			$this->id_grupo=$_SESSION[SISTEMA]['id_grupo']=$usuario['id_grupo'];
			$this->usuario=$_SESSION[SISTEMA]['usuario']=$usuario['usuario'];
			$this->grupo=$_SESSION[SISTEMA]['grupo']=$usuario['grupo'];
			$this->nombre=$_SESSION[SISTEMA]['nombre']=$usuario['nombre'];
			$this->apellido=$_SESSION[SISTEMA]['apellido']=$usuario['apellido'];
			$this->ultima=$_SESSION[SISTEMA]['ultima_entrada']=date("d/m/Y - g:i:s a",$usuario['ultima_entrada']);
			$this->datos_actualizados=$_SESSION[SISTEMA]['datos_actualizados']=$usuario['datos_actualizados'];
			
			$this->session=$_SESSION[SISTEMA]['session'] = true;
			$fecha=strtotime("now");
			
			$this->db->query("UPDATE usuarios set ultima_entrada='$fecha' WHERE id_persona='$this->id_persona' AND usuario='$user'");
			
			$this->mensaje="Se ha iniciado session correctamente...";
			$this->msgTipo="ok";
			$this->estatus = true;
			$this->json=json_encode($this);
			return $this->estatus;
		}
		else
		{
			$this->msgTipo="error";
			$this->mensaje="El usuario y la contraseña son incorrectos...";
			$this->estatus = false;
			$this->json=json_encode($this);
			return $this->estatus;
		}
	}
	//***********************************************************************************************************
	public function cargar()
	{
		if(!isset($_SESSION[SISTEMA]['usuario']))
		{
			$this->session=FALSE;
			$this->mensaje="No hay session de usuario...";
			$this->msgTipo="aviso";
			$this->estatus = false;
			$this->json=json_encode($this);
			return $this->estatus;
		}
		$this->id_persona=$_SESSION[SISTEMA]['id_persona'];
		$this->identificacion=$_SESSION[SISTEMA]['identificacion'];
		$this->id_grupo=$_SESSION[SISTEMA]['id_grupo'];
		$this->usuario=$_SESSION[SISTEMA]['usuario'];
		$this->grupo=$_SESSION[SISTEMA]['grupo'];
		$this->nombre=$_SESSION[SISTEMA]['nombre'];
		$this->apellido=$_SESSION[SISTEMA]['apellido'];
		$this->ultima=$_SESSION[SISTEMA]['ultima_entrada'];
		$this->session=$_SESSION[SISTEMA]['session'];
		$this->datos_actualizados=$_SESSION[SISTEMA]['datos_actualizados'];
		
		$this->mensaje="Se cargo el usuario desde la session...";
		$this->msgTipo="ok";
		$this->estatus = true;
		$this->json=json_encode($this);
		return $this->estatus;
	}
	//***********************************************************************************************************
	public function nivel($id_nivel,$id_usuario="")
	{
		if(!$id_usuario)
			$id_usuario=$this->id_usuario;
		$this->db = new db;
		$this->db->query("UPDATE usuarios SET id_nivel='$id_nivel' WHERE id_usuario='$id_usuario'");
		if($this->db->num_error==0)
		{
			$this->mensaje="Se ha cambiado el nivel de usuario con exito...";
			return $this->estatus;
		}
		else
		{
			$this->mensaje="No se pudo cambiado el nivel de usuario con exito...";
			return $this->estatus;
		}
	}
	//***********************************************************************************************************
	public function recuperar_clave($correo)
	{
	
	}
      
	//***********************************************************************************************************
	public function session()
	{
		return $this->session;
	}
	//***********************************************************************************************************
	public function standby()
	{
 		$standby=(strtotime("now") - $this->standby);
 		if($standby>=STANDBY*60)
 		{
			$this->mensaje="Se ha cerrado la session, por inactivad";
			$this->msgTipo="info";
			$this->cerrar_session();
 		}
 		else
			$_SESSION[SISTEMA]['standby']=strtotime("now");
	}
	//***********************************************************************************************************
	public function cerrar_session()
	{
		session_unset();
	}
	//***********************************************************************************************************
	public function __destruct()
	{
		
	}
}
//----------------------------------------------------------
// 						PRUEBAS DE LA CLASE

//$usuario = new usuario;
//$usuario->login('16595338','1234');
//echo "<br><textarea>".print_r($usuario->datos,true)."</textarea>";

//----------------------------------------------------------
