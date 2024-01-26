<!doctype html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title><?=TITULO_PRINCIPAL?></title>
      <meta name="author" content="<?=AUTOR?>">
      <link rel="shortcut icon" href="<?=base_url()?>public/images/favicon.jpg">
      <link rel="icon" href="<?=base_url()?>public/images/favicon.jpg" type="image/x-icon">
      <link rel="stylesheet" href="<?=base_url()?>public/template/css/bootstrap.min.css">
      <link rel="stylesheet" href="<?=base_url()?>public/template/css/typography.css">
      <link rel="stylesheet" href="<?=base_url()?>public/template/css/style.css">
      <link rel="stylesheet" href="<?=base_url()?>public/template/css/responsive.css">
      <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css"/>
      <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.bootstrap4.min.css"/>
      <link rel="stylesheet" href="<?=base_url()?>public/css/inventario/main.css" />
      <?php $titulo = "Inventario General de Bienes"; ?>
      <?php $opciones = $this->session->userdata("Permisos_Opcion");?>
   </head>
   <body>
      <div id="loading">
         <div id="loading-center">
         </div>
      </div>
      <div class="wrapper">
        <?php $this->load->view("inc/nav-template");?>
         <div id="content-page" class="content-page">
            <?php $this->load->view("inc/nav-top-template");?>
            <div class="container-fluid">
               <div class="row">
                  <div class="col-lg-12">
                  </div>
               </div>
               <div class="row">
                  <div class="col-sm-12">
                     <div class="iq-card">
                        <div class="iq-card-header d-flex justify-content-between">
                              <div class="iq-header-title">
                                 <h4 class="card-title"><?=$titulo?></h4>
                              </div>
                        </div>
                        <div class="iq-card-body">
                           <div class="form-group">
                            <div class="alert alert-success" role="alert" style="display:none;" >
                              Registro exitoso
                            </div>
                            <div class="alert alert-danger" role="alert" style="display:none;" >
                              Ocurrio un error
                            </div>
                            <form id="formTable">
                              <div class="row">
                                <div class="col-sm-6">
                                  <div class="form-group row">
                                    <label class="modal-label col-sm-5 col-form-label py-10">Marca</label>
                                      <div class="col-sm-7">
                                        <select class="form-control" name="marca" id="marca">
                                          <option value="">-- TODAS --</option>
                                          <?php foreach($listaMarcas as $row): ?>
                                          <option value="<?=$row->idmarca?>"><?=$row->descripcion?></option>
                                          <?php endforeach; ?>
                                        </select>
                                      </div>
                                  </div>
                                </div>
                                <div class="col-sm-6">
                                  <div class="form-group row">
                                    <label class="modal-label col-sm-5 col-form-label py-10">Clasificación</label>
                                      <div class="col-sm-7">
                                        <select class="form-control" name="clasificacion" id="clasificacion">
                                          <option value="">-- TODAS --</option>
                                          <?php foreach($listaClasificacion as $row): ?>
                                          <option value="<?=$row->idclasificacion?>"><?=$row->descripcion?></option>
                                          <?php endforeach; ?>
                                        </select>
                                      </div>
                                  </div>
                                </div>
                                <div class="col-sm-6">
                                  <div class="form-group row">
                                    <label class="modal-label col-sm-5 col-form-label py-10">Almacén</label>
                                      <div class="col-sm-7">
                                        <select class="form-control" name="almacen" id="almacen">
                                          <option value="">-- TODAS --</option>
                                          <?php foreach($listaAlmacenes as $row): ?>
                                          <option value="<?=$row->idalmacen?>"><?=$row->nombre?></option>
                                          <?php endforeach; ?>
                                        </select>
                                      </div>
                                  </div>
                                </div>
                                <div class="col-sm-6">
                                  <button type="submit" class="btn btn-primary col-sm-12" id="btn-buscar">Buscar</button>
                                </div>
                              </div>
                            </form>
                           </div>
                           <div class="table-responsive">
                              <table id="dt-select" class="table table-striped table-bordered">
                                 <thead>
                                  <tr>
                                    <th>ID</th>
                                    <th>SIGA</th>
                                    <th>Artículo</th>
                                    <th>Marca</th>
                                    <th>Modelo</th>
                                    <th>Serie</th>
                                    <th>Barra 01</th>
                                    <th>Barra 02</th>
                                    <th>Condición</th>
                                    <th>Costo</th>
                                    <th>Almacen</th>
                                    <th>Estado</th>
                                    <th>Clasificación</th>
                                  </tr>
                                 </thead>
                              </table>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="modal fade" id="editarModal" tabindex="-1" role="dialog" aria-labelledby="editarModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="editarModalLabel"></h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <form id="formRegistrar">
                      <input type="hidden" class="form-control" name="id" id="id" />
                      <div class="modal-body">
                        <div class="row">
                          <div class="col-sm-6">
                            <div class="form-group row">
                              <label class="modal-label col-sm-5 col-form-label py-10">Nombre / Descripción</label>
                              <div class="col-sm-7">
                                <div class="form-group">
                                  <div>
                                    <input type="text" class="form-control" name="nombre" id="nombre" />
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="col-sm-6">
                            <div class="form-group row">
                              <label class="modal-label col-sm-5 col-form-label py-10">Dirección Domiciliaria</label>
                              <div class="col-sm-7">
                                <div class="form-group">
                                  <div>
                                    <input type="text" class="form-control" name="direccion" id="direccion" />
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-sm-12 col-form-label">Datos del Ubigeo</label>
                          <div class="col-sm-3">
                                <select class="form-control" name="departamento"
                                  id="departamento">
                                  <option value="">-- Regi&oacute;n --</option>
                                <?php foreach($departamentos as $row): ?>
                                <option value="<?=$row->Codigo_Departamento?>"><?=$row->Nombre?></option>
                                <?php endforeach; ?>
                              </select>
                              </div>
                          <div class="col-sm-3">
                            <select class="form-control" name="provincia" id="provincia">
                              <option value="">-- Elija Regi&oacute;n --</option>
                            </select>
                          </div>
                          <div class="col-sm-3">
                            <select class="form-control" name="distrito" id="distrito">
                              <option value="">-- Elija Provincia --</option>
                            </select>
                          </div>
                          <div class="col-sm-3">
                            <div class="form-group row">
                              <label class="col-sm-5 col-form-label py-10">Código Ubigeo</label>
                              <div class="col-sm-7">
                                <div class="form-group">
                                  <div>
                                    <input type="text" class="form-control" name="codigoUbigeo" id="codigoUbigeo" readonly/>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="col-sm-9">
                            <div class="form-group row">
                              <label class="modal-label col-sm-3 col-form-label py-10">Nombre Ubigeo</label>
                              <div class="col-sm-9">
                                <div class="form-group">
                                  <div>
                                    <input type="text" class="form-control" name="nombreUbigeo" id="nombreUbigeo" readonly/>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <hr>
                        <div class="row">
                          <div class="col-sm-12">
                            <strong>
                              Encargado Titular
                            </strong>
                          </div>
                          <div class="col-sm-6">
                            <div class="form-group row">
                              <label class="modal-label col-sm-5 col-form-label py-10">Numero DNI</label>
                              <div class="col-sm-7">
                                <div class="form-group">
                                  <div class="input-group" id="error_numero_documento">
                                    <input type="text" class="form-control" name="numeroDniTitular" id="numeroDniTitular" />
                                    <span class="input-group-btn">
                                      <button type="button" id="btnBuscarTitular" class="btn btn-search"><i class="fa fa-search" aria-hidden="true"></i></button>
                                    </span>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="col-sm-6">
                            <div class="form-group row">
                              <label class="modal-label col-sm-5 col-form-label py-10">Nombre Completo</label>
                              <div class="col-sm-7">
                                <div class="form-group">
                                  <div>
                                    <input type="text" class="form-control" name="nombreTitular" id="nombreTitular" readonly/>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-sm-6">
                            <div class="form-group row">
                              <label class="modal-label col-sm-5 col-form-label py-10">Teléfono Contacto</label>
                              <div class="col-sm-7">
                                <div class="form-group">
                                  <div>
                                    <input type="text" class="form-control" name="telefonoTitular" id="telefonoTitular" />
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <hr>
                        <div class="row">
                          <div class="col-sm-12">
                            <strong>
                              Encargado Suplente
                            </strong>
                          </div>
                          <div class="col-sm-6">
                            <div class="form-group row">
                              <label class="modal-label col-sm-5 col-form-label py-10">Numero DNI</label>
                              <div class="col-sm-7">
                                <div class="form-group">
                                  <div class="input-group" id="error_numero_documento">
                                    <input type="text" class="form-control" name="numeroDniSuplente" id="numeroDniSuplente" />
                                    <span class="input-group-btn">
                                      <button type="button" id="btnBuscarSuplente" class="btn btn-search"><i class="fa fa-search" aria-hidden="true"></i></button>
                                    </span>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="col-sm-6">
                            <div class="form-group row">
                              <label class="modal-label col-sm-5 col-form-label py-10">Nombre Completo</label>
                              <div class="col-sm-7">
                                <div class="form-group">
                                  <div>
                                    <input type="text" class="form-control" name="nombreSuplente" id="nombreSuplente" readonly/>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-sm-6">
                            <div class="form-group row">
                              <label class="modal-label col-sm-5 col-form-label py-10">Teléfono Contacto</label>
                              <div class="col-sm-7">
                                <div class="form-group">
                                  <div>
                                    <input type="text" class="form-control" name="telefonoSuplente" id="telefonoSuplente" />
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-sm-12">
                            <div class="form-check">
                              <input type="checkbox" class="form-check-input" id="estado" name="estado">
                              <label class="form-check-label" for="estado">Almacén Activo</label>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                        <button type="submit" class="btn btn-primary">Guardar</button>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            <?php $this->load->view("inc/footer-template");?>
            <script src="<?=base_url()?>public/js/moment.min.js"></script>
            <script src="<?=base_url()?>public/js/locale.es.js"></script>
         </div>
      </div>
      <?php $this->load->view("inc/resource-template");?>
      <script>
        var URI_MAP = "<?=base_url()?>";
        var lista = JSON.parse('<?=$lista?>');
      </script>
      <script src="<?=base_url()?>public/js/inventarios/inventario.js?v=<?=date(" his")?>"></script>
   </body>
</html>
