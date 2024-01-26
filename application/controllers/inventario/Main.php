<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Main extends CI_Controller
{

    private $permisos = null;
    
    function __construct() {

      parent::__construct();
    
      $token = $this->session->userdata("token");
    
      (strlen($token)>0)?$token = JWT::decode($token,getenv("SECRET_SERVER_KEY"),false):redirect("login");
    
      $this->session->set_userdata("idmodulo", 14);
    
      ($this->session->userdata("idusuario"))?$usuario=$this->session->userdata("idusuario"):redirect("login");
    
      if(sha1($usuario)==$token->usuario){
    
          if (count($token->modulos)>0) {
    
              $listaModulos = $token->modulos;
    
              $permanecer = false;
    
              foreach ($listaModulos as $row) :
              if ($row->idmodulo == 14 and $row->estado == 1)
                  $permanecer = true;
                  endforeach
                  ;
    
                  if ($permanecer == false)
                      redirect('errores/accesoDenegado');
          } else {
              redirect("login");
          }

          if($this->permisos==null){ if($this->session->userdata("menu")) $this->permisos = $this->session->userdata("menu");}
    
      }else{
          redirect("login");
      }

    }

    public function index() {

        $nivel = 1;
        $idmenu = 16;

        validarPermisos($nivel,$idmenu,$this->permisos);

        $this->load->model("EventoTipo_model");
        $this->load->model("EventoNivel_model");
        $this->load->model("Ubigeo_model");
        $this->load->model("Clasificacion_model");
        $this->load->model("Articulo_model");

        $idClasificacion = $this->input->post("idClasificacion");
        
        $tipo = $this->EventoTipo_model->lista();
        $nivel = $this->EventoNivel_model->lista();
        $departamentos = $this->Ubigeo_model->departamentos();
        $listaClasificacion = $this->Clasificacion_model->obtenerLista();
        $resultTotal = $this->Articulo_model->obtenerTotalArticulosDashboard();
        $resultClasificacionTotal = -1;
        if($idClasificacion > 0){
            $this->Articulo_model->setIdClasificacion($idClasificacion);
            $resultClasificacionTotal = $this->Articulo_model->obtenerTotalArticulosDashboard();    
            $resultClasificacionTotal = $resultClasificacionTotal->row()->total;    
        }

        $listaArticulos = $this->Articulo_model->obtenerArticulosDashboard();

        $resultTotal = $resultTotal->row();

        $data = array(
            "tipo" => $tipo->result(),
            "idClasificacion" => $idClasificacion,
            "totalClasificacion" => $resultClasificacionTotal,
            "total" => $resultTotal->total,
            "nivel" => $nivel->result(),
            "departamentos" => $departamentos->result(),
            "listaClasificacion" => $listaClasificacion->result(),
            "listaArticulos" => $listaArticulos->num_rows()? $listaArticulos->result() : array()
        );

        $this->load->view("inventario/principal", $data);
        
    }

    public function almacenes() {
        $this->load->model("Almacen_model");
        $this->load->model("Ubigeo_model");

        $listaAlmacenes = $this->Almacen_model->obtenerAlmacenes();
        $departamentos = $this->Ubigeo_model->departamentos();
        $data = array(
          "departamentos" => $departamentos->result(),
          "listaAlmacenes" => json_encode($listaAlmacenes->result())
        );

        $this->load->view("inventario/almacenes", $data);
    }

    public function obtenerAlmacenes(){
        $this->load->model("Almacen_model");

        $listaAlmacenes = $this->Almacen_model->obtenerAlmacenes();
        $detalle = array(
          "listaAlmacenes" => $listaAlmacenes->result()
        );

        $data = array(
            "status" => 200,
            "data" => $detalle
        );

        echo json_encode($data);
    }

    public function obtenerStock(){
        $this->load->model("Articulo_model");
        $idArticulo = $this->input->post("idArticulo");
        $this->Articulo_model->setId($idArticulo);
        $listaAlmacenes = $this->Articulo_model->obtenerStockPorArticulo();
        $detalle = array(
          "lista" => $listaAlmacenes->result()
        );

        $data = array(
            "status" => 200,
            "data" => $detalle
        );

        echo json_encode($data);
    }

    public function guardarAlmacen() {
        $this->load->model("Almacen_model");
        $idAlmacen = $this->input->post("id");
        $nombre = $this->input->post("nombre");
        $direccion = $this->input->post("direccion");
        $codigoUbigeo = $this->input->post("codigoUbigeo");
        $nombreUbigeo = $this->input->post("nombreUbigeo");
        $numeroDniTitular = $this->input->post("numeroDniTitular");
        $nombreTitular = $this->input->post("nombreTitular");
        $telefonoTitular = $this->input->post("telefonoTitular");
        $numeroDniSuplente = $this->input->post("numeroDniSuplente");
        $nombreSuplente = $this->input->post("nombreSuplente");
        $telefonoSuplente = $this->input->post("telefonoSuplente");
        $coordenadas = $this->input->post("ipressUbicacion");
        $estado = $this->input->post("estado");

        if ($estado) {
           $estado = 1;
        } else {
           $estado = 0;
        }
        
        $this->Almacen_model->setId($idAlmacen);
        $this->Almacen_model->setNombre($nombre);
        $this->Almacen_model->setDireccion($direccion);
        $this->Almacen_model->setUbigeo($codigoUbigeo);
        $this->Almacen_model->setNombreUbigeo($nombreUbigeo);
        $this->Almacen_model->setDniTitular($numeroDniTitular);
        $this->Almacen_model->setNombreTitular($nombreTitular);
        $this->Almacen_model->setTelefonoTitular($telefonoTitular);
        $this->Almacen_model->setDniSuplente($numeroDniSuplente);
        $this->Almacen_model->setNombreSuplente($nombreSuplente);
        $this->Almacen_model->setTelefonoSuplente($telefonoSuplente);
        $this->Almacen_model->setCoordenada($coordenadas);
        $this->Almacen_model->setEstado($estado);

        $status = 500;
        $message = "Error al registrar, vuelva a intentar";

        if ($idAlmacen > 0) {
            if ($this->Almacen_model->actualizarAlmacen()) {
                $status = 200;
                $message = "Historial actualizado exitosamente";
            }
        } else {
            if ($this->Almacen_model->guardarAlmacen()) {
                $status = 200;
                $message = "Historial registrado exitosamente";
            }
        }
        
        $data = array(
            "status" => $status,
            "message" => $message
        );

        echo json_encode($data);
    }

    public function marcas() {
        $this->load->model("Inventario_model");

        $listaMarcas = $this->Inventario_model->obtenerMarcas();
        $data = array(
          "listaMarcas" => json_encode($listaMarcas->result())
        );

        $this->load->view("inventario/marcas", $data);
    }

    public function obtenerMarcas(){
        $this->load->model("Inventario_model");

        $listaMarcas = $this->Inventario_model->obtenerMarcas();
        $detalle = array(
          "listaMarcas" => $listaMarcas->result()
        );

        $data = array(
            "status" => 200,
            "data" => $detalle
        );

        echo json_encode($data);
    }

    public function guardarMarca() {
        $this->load->model("Inventario_model");

        $nombre = $this->input->post("nombre");
        $fecha_registro = $this->input->post("fecha_registro");
        $id_marca = $this->input->post("id");
        $estado = $this->input->post("estado");
        if ($estado) {
            $estado = 1;
        } else {
            $estado = 0;
        }
        
        $this->Inventario_model->setDescripcion($nombre);
        $this->Inventario_model->setFechaRegistro($fecha_registro. ' ' .'00:00:00');
        // $this->Inventario_model->setFechaRegistro($fecha_registro);
        $this->Inventario_model->setEstado($estado);
        $this->Inventario_model->setIdMarca($id_marca);

        $status = 500;
        $message = "Error al registrar, vuelva a intentar";

        if ($id_marca > 0) {
            if ($this->Inventario_model->actualizarMarca()) {
                $status = 200;
                $message = "Historial actualizado exitosamente";
            }
        } else {
            if ($this->Inventario_model->guardarMarca()) {
                $status = 200;
                $message = "Historial registrado exitosamente";
            }
        }
        
        $data = array(
            "status" => $status,
            "message" => $message
        );

        echo json_encode($data);
    }

    public function articulos(){
        $this->load->model("Articulo_model");
        $this->load->model("Color_model");
        $this->load->model("Clasificacion_model");
        $this->load->model("Inventario_model");
        $this->load->model("Medida_model");

        $listaArticulos = $this->Articulo_model->obtenerArticulos();
        $listaMarcas = $this->Inventario_model->obtenerLista();
        $listaColor = $this->Color_model->obtenerLista();
        $listaClasificacion = $this->Clasificacion_model->obtenerLista();
        $listaMedida = $this->Medida_model->obtenerLista();

        if ($listaArticulos->num_rows() > 0) {
            $listaArticulos = $listaArticulos->result();
        } else {
            $listaArticulos = array();
        }

        $data = array(
          "listaMarcas" => $listaMarcas->result(),
          "listaColor"  => $listaColor->result(),
          "listaClasificacion"  => $listaClasificacion->result(),
          "listaMedida"  => $listaMedida->result(),
          "listaArticulos" => json_encode($listaArticulos)
        );

        $this->load->view("inventario/articulos", $data);
    }

    public function mapa(){
        $this->load->model("Clasificacion_model");
        $this->load->model("Articulo_model");

        $listaClasificacion = $this->Clasificacion_model->obtenerLista();

        $data = array(
            "listaClasificacion" => $listaClasificacion->result(),
        );

        $this->load->view("inventario/mapa", $data);
    }

    public function obtenerMapa(){
        $this->load->model("Articulo_model");
        $this->Articulo_model->setIdRegion($this->input->post("idRegion"));

        $listaArticulos = $this->Articulo_model->obtenerUbicacion();
        $detalle = array(
            "lista" => $listaArticulos->num_rows()? $listaArticulos->result() : array()
        );
        $data = array(
            "status" => 200,
            "data" => $detalle
        );

        echo json_encode($data);
    }
    
    public function articulosInventario(){
        $this->load->model("Articulo_model");
        $this->load->model("Color_model");
        $this->load->model("Clasificacion_model");
        $this->load->model("Inventario_model");
        $this->load->model("Medida_model");

        $listaArticulos = $this->Articulo_model->obtenerArticulosInventariado();
        $listaMarcas = $this->Inventario_model->obtenerLista();
        $listaColor = $this->Color_model->obtenerLista();
        $listaClasificacion = $this->Clasificacion_model->obtenerLista();
        $listaMedida = $this->Medida_model->obtenerLista();

        if ($listaArticulos->num_rows() > 0) {
            $listaArticulos = $listaArticulos->result();
        } else {
            $listaArticulos = array();
        }

        $data = array(
          "listaMarcas" => $listaMarcas->result(),
          "listaColor"  => $listaColor->result(),
          "listaClasificacion"  => $listaClasificacion->result(),
          "listaMedida"  => $listaMedida->result(),
          "listaArticulos" => json_encode($listaArticulos)
        );

        $this->load->view("inventario/articulosInventario", $data);
    }

    public function ingresos(){
        $this->load->model("AnioEjecucion_model");
        $this->load->model("Articulo_model");
        $this->load->model("Ingreso_model");
        $this->load->model("Almacen_model");

        $anioPredeterminado = $this->AnioEjecucion_model->obtenerAnioPredeterminado();
        $listaAnioEjecucion = $this->AnioEjecucion_model->lista();
        $listaAlmacenes = $this->Almacen_model->obtenerAlmacenes();
        $listaTipoIngreso = $this->Ingreso_model->obtenerTipos();
        $listaIngresos = $this->Ingreso_model->obtenerLista();

        if (empty($anio) or strlen($anio) < 1) {
            $rsListaAnioEjecucion = $anioPredeterminado->row();
            $anio = $rsListaAnioEjecucion->Anio_Ejecucion;
        }

        $data = array(
          "listaAlmacenes" => $listaAlmacenes->num_rows()? $listaAlmacenes->result() : array(),
          "listaTipoIngreso" => $listaTipoIngreso->num_rows()? $listaTipoIngreso->result() : array(),
          "listaIngresos" => json_encode($listaIngresos->num_rows()? $listaIngresos->result() : array()),
          "listaAnioEjecucion" => $listaAnioEjecucion,
          "anio" => $anio
        );

        $this->load->view("inventario/ingresos", $data);
    }

    public function eventos() {

        $this->load->model("EventoRegistrar_model");
        
        $Anio_Ejecucion = $this->input->post("Anio_Ejecucion");
        $mes = $this->input->post("mes");
        
        $data = array();
        
        if (strlen($Anio_Ejecucion) > 0 and strlen($mes) > 0) {
            
            $this->EventoRegistrar_model->setAnio($Anio_Ejecucion);
            $this->EventoRegistrar_model->setMes($mes);
            
            $lista = $this->EventoRegistrar_model->listaEventosPorAnioYMes();
            
            if ($lista->num_rows() > 0) {
                $orden = 1;
                foreach ($lista->result() as $row) :
                
                switch ($row->Evento_Estado_Codigo) {
                    case 1:
                        $html = '<span class="label label-success">Monitoreo</span>';
                        break;
                    case 2:
                        $html = '<span class="label label-default">Cerrado</span>';
                        break;
                    case 3:
                        $html = '<span class="label label-danger">Anulado</span>';
                        break;
                }
                
                $data[] = array(
                    "evento" => $row->evento,
                    "fecha" => $row->fecha,
                    "ubigeo" => $row->Evento_Ubigeo,
                    "ubicacion" => $row->Evento_Ubigeo_Descripcion,
                    "estado" => $html,
                    "correlativo" => $row->ANIO." - ".addCeros5($row->Evento_Secuencia),
                    "orden" => $orden,
                    "seleccionar" => '<a href="'.base_url().'ofertamovil/fichas/lista/'.base64_encode($row->Evento_Registro_Numero).'">seleccionar</a>',
                    "id" => $row->Evento_Registro_Numero,
                    "tipo" => $row->tipoEvento,
                    "detalle" => $row->eventoDetalle,
                    "descripcion" => $row->Evento_Descripcion,
                    "coordenada" => $row->Evento_Coordenadas,
                    "tipoevento" => $row->tipoEventoCodigo,
                    "eventocodigo" => $row->eventoCodigo,
                    "eventodetalle" => $row->eventoDetalleCodigo
                );
                $orden++;
                endforeach ;
            }
        }
        
        $datos = Array(
            "data" => $data
            );
        echo json_encode($datos);
    }

    public function obtenerRenipress()
    {
        $this->load->model("EntidadSalud_model");
        
        $departamento = $this->input->post("departamento");
        $provincia = $this->input->post("provincia");
        $distrito = $this->input->post("distrito");
        
        $ubigeo = $departamento . $provincia . $distrito;
        
        $data = array();
        
        if (strlen($ubigeo) > 5) {
            
            $this->EntidadSalud_model->setCodigo_Ubigeo($ubigeo);
            
            $lista = $this->EntidadSalud_model->obtenerRenipress();
            
            if ($lista->num_rows() > 0) {
                foreach ($lista->result() as $row) :
                $data[] = array(
                    "id_renipress" => $row->id_renipress,
                    "codigo_institucion" => $row->codigo_institucion,
                    "institucion" => $row->institucion,
                    "codigo_renipress" => $row->codigo_renipress,
                    "nombre" => $row->nombre,
                    "clasificacion" => $row->clasificacion,
                    "tipo" => $row->tipo,
                    "codigo_region" => $row->codigo_region,
                    "region" => $row->region,
                    "codigo_provincia" => $row->codigo_provincia,
                    "provincia" => $row->provincia,
                    "codigo_distrito" => $row->codigo_distrito,
                    "distrito" => $row->distrito,
                    "ubigeo" => $row->ubigeo,
                    "norte" => $row->norte,
                    "este" => $row->este
                );
                endforeach;
            }
        }
        
        $datos = Array(
            "data" => $data
            );
        echo json_encode($datos);
    }

    public function obtenerRenipressId()
    {
        $this->load->model("EntidadSalud_model");
        
        $idRenipress = $this->input->post("idRenipress");
        
        $data = array();
        
        if ($idRenipress > 0) {
            
            $this->EntidadSalud_model->setIdRenipress($idRenipress);
            
            $lista = $this->EntidadSalud_model->obtenerRenipressId();
            
            if ($lista->num_rows() > 0) {
                foreach ($lista->result() as $row) :
                $data[] = array(
                    "id_renipress" => $row->id_renipress,
                    "codigo_institucion" => $row->codigo_institucion,
                    "institucion" => $row->institucion,
                    "codigo_renipress" => $row->codigo_renipress,
                    "nombre" => $row->nombre,
                    "clasificacion" => $row->clasificacion,
                    "tipo" => $row->tipo,
                    "codigo_region" => $row->codigo_region,
                    "region" => $row->region,
                    "codigo_provincia" => $row->codigo_provincia,
                    "provincia" => $row->provincia,
                    "codigo_distrito" => $row->codigo_distrito,
                    "distrito" => $row->distrito,
                    "ubigeo" => $row->ubigeo
                );
                endforeach;
            }
        }
        
        $datos = Array(
            "data" => $data
            );
        echo json_encode($datos);
    }

    public function salidas(){
        $this->load->model("AnioEjecucion_model");
        $this->load->model("Articulo_model");
        $this->load->model("Ingreso_model");
        $this->load->model("Salida_model");
        $this->load->model("Almacen_model");
        $this->load->model("TipoDocumento_model");
        $this->load->model("Ubigeo_model");
        $this->load->model("Desplazamiento_model");

        $anioPredeterminado = $this->AnioEjecucion_model->obtenerAnioPredeterminado();
        $listaAnioEjecucion = $this->AnioEjecucion_model->lista();
        $listaAlmacenes = $this->Almacen_model->obtenerAlmacenes();
        $listaTipoIngreso = $this->Ingreso_model->obtenerTipos();
        $tipodocumento = $this->TipoDocumento_model->lista();
        $listaDesplazamiento = $this->Desplazamiento_model->obtener();
        $departamentos = $this->Ubigeo_model->departamentos();
        $listaSalida = $this->Salida_model->obtenerLista();

        if (empty($anio) or strlen($anio) < 1) {
            $rsListaAnioEjecucion = $anioPredeterminado->row();
            $anio = $rsListaAnioEjecucion->Anio_Ejecucion;
        }

        $data = array(
          "listaAlmacenes" => $listaAlmacenes->num_rows()? $listaAlmacenes->result() : array(),
          "listaTipoIngreso" => $listaTipoIngreso->num_rows()? $listaTipoIngreso->result() : array(),
          "listaSalida" => json_encode($listaSalida->num_rows()? $listaSalida->result() : array()),
          "listaAnioEjecucion" => $listaAnioEjecucion,
          "listaDesplazamiento" => $listaDesplazamiento->result(),
          "anio" => $anio,
          "tipodocumento" => $tipodocumento,
          "departamentos" => $departamentos->result()
        );

        $this->load->view("inventario/salidas", $data);
    }


    public function componentes(){
        $this->load->model("Articulo_model");

        $listaArticulos = $this->Articulo_model->obtenerArticulosComponentes();

        if ($listaArticulos->num_rows() > 0) {
            $listaArticulos = $listaArticulos->result();
        } else {
            $listaArticulos = array();
        }

        $data = array(
          "lista" => json_encode($listaArticulos)
        );

        $this->load->view("inventario/componentes", $data);
    }

    public function inventario(){
        $this->load->model("AnioEjecucion_model");
        $this->load->model("Inventario_model");
        $this->load->model("Clasificacion_model");
        $this->load->model("Almacen_model");
        $this->load->model("Articulo_model");

        $anioPredeterminado = $this->AnioEjecucion_model->obtenerAnioPredeterminado();
        $listaAnioEjecucion = $this->AnioEjecucion_model->lista();
        $listaMarcas = $this->Inventario_model->obtenerLista();
        $listaClasificacion = $this->Clasificacion_model->obtenerLista();
        $listaAlmacenes = $this->Almacen_model->obtenerAlmacenes();
        $lista = $this->Articulo_model->obtenerReporteGeneral();

        if (empty($anio) or strlen($anio) < 1) {
            $rsListaAnioEjecucion = $anioPredeterminado->row();
            $anio = $rsListaAnioEjecucion->Anio_Ejecucion;
        }

        $data = array(
          "lista" =>json_encode($lista->num_rows()? $lista->result() : array()),
          "listaMarcas" => $listaMarcas->num_rows()? $listaMarcas->result() : array(),
          "listaClasificacion" => $listaClasificacion->num_rows()? $listaClasificacion->result() : array(),
          "listaAlmacenes" => $listaAlmacenes->num_rows()? $listaAlmacenes->result() : array(),
          "listaAnioEjecucion" => $listaAnioEjecucion,
          "anio" => $anio
        );

        $this->load->view("inventario/inventario", $data);
    }
    public function disponibles(){
        $this->load->model("AnioEjecucion_model");
        $this->load->model("Inventario_model");
        $this->load->model("Clasificacion_model");
        $this->load->model("Almacen_model");
        $this->load->model("Articulo_model");

        $anioPredeterminado = $this->AnioEjecucion_model->obtenerAnioPredeterminado();
        $listaAnioEjecucion = $this->AnioEjecucion_model->lista();
        $listaMarcas = $this->Inventario_model->obtenerLista();
        $listaClasificacion = $this->Clasificacion_model->obtenerLista();
        $listaAlmacenes = $this->Almacen_model->obtenerAlmacenes();
        $lista = $this->Articulo_model->obtenerReporteDisponibles();

        if (empty($anio) or strlen($anio) < 1) {
            $rsListaAnioEjecucion = $anioPredeterminado->row();
            $anio = $rsListaAnioEjecucion->Anio_Ejecucion;
        }

        $data = array(
          "lista" =>json_encode($lista->num_rows()? $lista->result() : array()),
          "listaMarcas" => $listaMarcas->num_rows()? $listaMarcas->result() : array(),
          "listaClasificacion" => $listaClasificacion->num_rows()? $listaClasificacion->result() : array(),
          "listaAlmacenes" => $listaAlmacenes->num_rows()? $listaAlmacenes->result() : array(),
          "listaAnioEjecucion" => $listaAnioEjecucion,
          "anio" => $anio
        );

        $this->load->view("inventario/disponibles", $data);
    }
    public function asignados(){
        $this->load->model("AnioEjecucion_model");
        $this->load->model("Inventario_model");
        $this->load->model("Clasificacion_model");
        $this->load->model("Almacen_model");
        $this->load->model("Articulo_model");

        $anioPredeterminado = $this->AnioEjecucion_model->obtenerAnioPredeterminado();
        $listaAnioEjecucion = $this->AnioEjecucion_model->lista();
        $listaMarcas = $this->Inventario_model->obtenerLista();
        $listaClasificacion = $this->Clasificacion_model->obtenerLista();
        $listaAlmacenes = $this->Almacen_model->obtenerAlmacenes();
        $lista = $this->Articulo_model->obtenerReporteAsignados();

        if (empty($anio) or strlen($anio) < 1) {
            $rsListaAnioEjecucion = $anioPredeterminado->row();
            $anio = $rsListaAnioEjecucion->Anio_Ejecucion;
        }

        $data = array(
          "lista" =>json_encode($lista->num_rows()? $lista->result() : array()),
          "listaMarcas" => $listaMarcas->num_rows()? $listaMarcas->result() : array(),
          "listaClasificacion" => $listaClasificacion->num_rows()? $listaClasificacion->result() : array(),
          "listaAlmacenes" => $listaAlmacenes->num_rows()? $listaAlmacenes->result() : array(),
          "listaAnioEjecucion" => $listaAnioEjecucion,
          "anio" => $anio
        );

        $this->load->view("inventario/asignados", $data);
    }
	
}
