<?php
//----------------------------------------------------------
// NOMBRE: reporte.class.php
// DESCRIPCION: Generador de reportes.
//----------------------------------------------------------
// AUTOR: Gilberto López A.
// CORREO: gilberto.amb@gmail.com
// FECHA: 28/10/2011 -=- Versión 1.0
//----------------------------------------------------------

//----------------------------------------------------------
// 						LIBRERIAS USADAS
//----------------------------------------------------------
require_once('dbi.class.php');
require_once('dbi.result.class.php');

class reporte
{
	private $db;
	public $mensaje;
	public $msgTipo;
	public $msgTitle;
	public $datos = "";
	public $json = "";
	public $estatus;
	public $total;
	public function __construct()
	{
		
	}
	public function listar_reportes()
	{
		$this->db = new db;
		$tablas = $this->db->listar("reportes");
		
		if(!$tablas->num_rows)
		{
			$this->mensaje = "No se encontraron registros...";
			$this->msgTipo = "aviso";
			$this->estatus = false;
			$this->json = json_encode($this);
			return $this->estatus;
		}
		$this->datos = $tablas->all();
		$this->mensaje = "Se han listado los reportes existentes...";
		$this->msgTipo = "ok";
		$this->estatus = true;
		$this->json = json_encode($this);
		return $this->estatus;
	}
	public function listar_campos($tabla)
	{
		$this->db = new db(DB_HOST, DB_PORT,"information_schema",DB_USER,DB_PASS);
		$campos = $this->db->query("SELECT COLUMN_NAME FROM COLUMNS WHERE TABLE_NAME = '$tabla' AND TABLE_SCHEMA = '".DB_NAME."'");
		
		if(!$campos->num_rows)
		{
			$this->mensaje = "No se encontraron registros...";
			$this->msgTipo = "aviso";
			$this->estatus = false;
			$this->json = json_encode($this);
			return $this->estatus;
		}
		$this->datos = array();
		while($campo = $campos->fetch_assoc())
		{
			$campo['LABEL'] = str_replace("..".extension($campo['COLUMN_NAME']),"",$campo['COLUMN_NAME']);
			$this->datos[] = $campo;
		}
		$this->mensaje = "Se han listado los campos del reporte '$tabla'...";
		$this->msgTipo = "ok";
		$this->estatus = true;
		$this->json = json_encode($this);
		return $this->estatus;
	}
	public function generar($tabla,$filtros,$ordenes,$campos,$limite="",$pag=1,$id)
	{
		$this->msgTitle = "Generar reportes.";
		$this->db = new db;
		$where = "";
		$order = "";
		$campo = $id;
		$inicio = $limite*($pag-1);
	
		if($campos)
			foreach($campos as $valor)
					$campo .= ",`$valor`";
		if($filtros[1]['c'] && $filtros[1]['o'])
		{
                  // print_r($filtros);
                   
                    $where = "WHERE ";
			foreach($filtros as $filtro)
				if($filtro['o'] == "LIKE")
					$where .= "`$filtro[c]` $filtro[o] '%$filtro[v]%'";
				else
					$where .= "`$filtro[c]` $filtro[o] '$filtro[v]'";
		}
		if($ordenes[1]['c'] && $ordenes[1]['o'])
		{
			$order = "ORDER BY ";
			foreach($ordenes as $orden)
				$order .= "`$orden[c]` $orden[o]";
		}
		$total = $this->db->query("SELECT COUNT(*) AS total FROM $tabla $where");
		$total = $total->fetch_assoc();
		$this->total = $total['total'];
		$reportes = $this->db->query("SELECT $campo FROM $tabla $where $order LIMIT $inicio,$limite");
		if(!$reportes->num_rows)
		{
			$this->mensaje = "No se encontraron registros..."; //.$this->db->error." SELECT * FROM $tabla $where";
			$this->msgTipo = "aviso";
			$this->estatus = false;
			$this->json = json_encode($this);
			return $this->estatus;
		}
		$this->datos = $reportes->all();
		$this->mensaje = "Se ha generado el reporte correctamente...";
		$this->msgTipo = "ok";
		$this->estatus = true;
		$this->json = json_encode($this);
		return $this->estatus;
	}
	public function detalle($id,$tabla){
		$this->db = new db;
	
		$registros = $this->db->query("SELECT * FROM $tabla WHERE ID = '$id'");
		
		if(!$registros->num_rows)
		{
			$this->mensaje = "No se encontraron registros...";
			$this->msgTipo = "aviso";
			$this->estatus = false;
			$this->json = json_encode($this);
			return $this->estatus;
		}
		while($registro = $registros->fetch_assoc())
		{
			foreach($registro as $campo => $valor)
			{
				$campo = explode("..",$campo);
				if(isset($campo[1]))
				{
					$formato = $campo[1];
					$valor = formato($formato,$valor);
				}
				$campo = $campo[0];
				$this->datos[$campo] = $valor;
			}
		}
		$this->mensaje = "Se ha listado el detalle del reporte '$tabla'...";
		$this->msgTipo = "ok";
		$this->estatus = true;
		$this->json = json_encode($this);
		return $this->estatus;
	}
	public function __destruct()
	{
		
	}
}