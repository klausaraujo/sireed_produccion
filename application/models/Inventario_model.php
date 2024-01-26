<?php
if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Inventario_model extends CI_Model
{
    private $descripcion;
    private $fecha_registro;
    private $estado;
    private $id_marca;

    public function setDescripcion($data)
    {
        $this->descripcion = $this->db->escape_str($data);
    }

    public function setFechaRegistro($data)
    {
        $this->fecha_registro = $this->db->escape_str($data);
    }

    public function setEstado($data)
    {
        $this->estado = $this->db->escape_str($data);
    }

    public function setIdMarca($data)
    {
        $this->id_marca = $this->db->escape_str($data);
    }

    public function __construct()
    {
        parent::__construct();
    }

    public function obtenerAlmacenes()
    {
        $this->db->select("idalmacen, nombre, domicilio, ubigeo, nombre_encargado_titular, nombre_encargado_suplente, estado");
        $this->db->from("inventarios_almacen");
        $this->db->order_by("nombre ASC");
        return $this->db->get();
    }

    public function obtenerMarcas()
    {
        $this->db->select("idmarca, descripcion, fecha_registro, estado");
        $this->db->from("inventarios_marca");
        $this->db->order_by("descripcion ASC");
        return $this->db->get();
    }

    public function obtenerLista()
    {
        $this->db->select("idmarca, descripcion");
        $this->db->from("inventarios_marca");
        $this->db->where("estado", 1);
        $this->db->order_by("descripcion ASC");
        return $this->db->get();
    }

    public function guardarMarca()
    {
        $data = array(
            "descripcion" => $this->descripcion,
            "fecha_registro" => $this->fecha_registro,
            "estado" => $this->estado
        );

        if($this->db->insert("inventarios_marca", $data)) {
            return $this->db->insert_id();
        }
        else {
            return 0;
        }
    }

    public function actualizarMarca()
    {
        $this->db->set("descripcion", $this->descripcion, TRUE);
        $this->db->set("fecha_registro", $this->fecha_registro, TRUE);
        $this->db->set("estado", $this->estado, TRUE);

        $this->db->where("idmarca", $this->id_marca);

        $error = array();

        if ($this->db->update('inventarios_marca'))
            return 1;
        else {
            $error = $this->db->error();
            return $error["code"];
        }
    }

}
