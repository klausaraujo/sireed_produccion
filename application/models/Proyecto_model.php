<?php
if (! defined('BASEPATH'))
    exit('No direct script access allowed');

class Proyecto_model extends CI_Model
{

    private $anio;

    public function setAnio($data)
    {
        $this->anio = $this->db->escape_str($data);
    }

    public function __construct()
    {
        parent::__construct();
    }

    public function lista()
    {
        $this->db->select("*");
        $this->db->from("proyecto");
        $this->db->where("Anio_Ejecucion", $this->anio);
        return $this->db->get();
    }
}