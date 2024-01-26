<?php
if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class FarmaciaMedida_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
    }

    public function obtenerLista()
    {
        $this->db->select("idunidadmedida id, descripcion, abreviatura");
        $this->db->from("farmacia_unidad_medida");
        $this->db->where("estado", 1);
        $this->db->order_by("descripcion ASC");
        return $this->db->get();
    }

}
