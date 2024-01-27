                            
                            <?php
                                $titulo = "Gesti&oacute;n de Eventos";
                                $botonCrear = "Registrar Evento";
                            ?>
                            <div class="iq-card-header row">
                                <div class="col-lg-8 col-md-4 col-sm-4 col-xs-12">
                                <h3 style="font-size:22px;" class="text-left"><b> <?=$titulo?></b></h3>
                                </div>
                            </div>
                            <div class="iq-card-body">
                                <div class="container-fluid">
                                    <div id="div-alerta-success" class="d-none alert alert-success">
                                        <span>Permisos modificados</span>
                                    </div>
                                        <?php $message = $this->session->flashdata('mensajeSuccess'); ?>
                                            <?php if($message){ ?>
                                                <div class="alert alert-success"><span><?= $message ?></span></div>
                                            <?php } ?>
                                            <?php $message = $this->session->flashdata('mensajeError'); ?>
                                            <?php if($message){ ?>
                                                <div class="alert alert-danger"><span><?= $message ?></span></div>
                                            <?php } ?>
                                            <?php $message = $this->session->flashdata('mensajeWarning'); ?>
                                            <?php if($message){ ?>
                                                <div class="alert alert-warning"><span><?= $message ?></span></div>
                                            <?php } ?>
                                    <div class="row py-4">
                                        <div class="col-md-4 pa-10 ml-auto">
                                            <button type="button" class="btn btn-primary float-right pull-right" style="border-radius:0" id="btn-crear"><?=$botonCrear?></button>
                                        </div>
                                    </div>
                                    <div class="table-responsive">
                                        <table id="tbLista" class="table table-bordered table-sm" style="width:100%">
                                            <thead>
                                                <tr>
                                                <th class="text-center">Evento Tipo</th>
                                                <th class="text-center">C&oacute;digo</th>
                                                <th class="text-center">Nombre</th>
                                                <th>&nbsp;</th>
                                                <th>&nbsp;</th>
                                                <th>&nbsp;</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <?php
                                                if ($lista->num_rows() > 0) {
                                
                                                foreach ($lista->result() as $row) :
                                                    ?>
                                                <tr>
                                                    <td align="center"><?=$row->Evento_Tipo_Nombre?></td>
                                                    <td align="center"><?=$row->Evento_Codigo?></td>
                                                    <td align="center"><?=$row->Evento_Nombre?></td>
                                                    <td align="center">
                                                        <button class="btn btn-warning btn-circle actionEdit" title="EDITAR" type="button">
                                                        <i class="fa fa-pencil-square-o"></i>
                                                        </button>
                                                    </td>
                                                    <td align="center">
                                                        <button class="btn btn-danger btn-circle actionDelete" title="ELIMINAR" type="button">
                                                        <i class="fa fa-trash" aria-hidden="true"></i>
                                                        </button>
                                                    </td>
                                                    <td align="center"><?=$row->Evento_Tipo_Codigo?></td>
                                                </tr>
                                                <?php
                                                    endforeach;
                                                    }
                                                    ?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog"aria-labelledby="deleteModalLabel">
                                <div class="modal-dialog" role="document">
                                <form id="formEliminar" action="<?=base_url()?>tablas/main/evento-eliminar" method="POST">
                                    <input type="hidden" name="Evento_Tipo_Codigo" value="" readonly />
                                    <input type="hidden" name="Evento_Codigo" value="" readonly />
                                    <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Eliminar Evento</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        &iquest;Seguro(a) desea Borrar el evento <strong id="elementoEliminar"></strong>?
                                    </div>
                                    <div class="modal-footer">
                                        <button type="reset" class="btn btn-basic" data-dismiss="modal">Cerrar</button>
                                        <button type="submit" class="btn btn-danger">Borrar</button>
                                    </div>
                                    </div>
                                </form>
                                </div>
                            </div>
                            <div class="modal fade" id="registrarModal" tabindex="-1" role="dialog"
                                aria-labelledby="registrarModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                    <h5 class="modal-title" id="registrarTableroModalLabel">Registrar Evento</h5>
                                    </div>
                                    <form id="formRegistrar" name="formRegistrar" action="<?=base_url()?>tablas/main/evento-gestionar" method="POST">
                                    <div class="modal-body">
                                        <input type="hidden" name="Evento_Codigo" value="" readonly />
                                        <input type="hidden" name="Evento_Tipo_Codigo" value="" readonly />
                                        <div class="row">
                                        <div class="col-xs-12">
                                            <div class="form-group">
                                            <label class="">Tipo del Evento</label> 
                                            <select class="form-control" name="Codigo_Tipo_Evento">
                                                <option value="">[Seleccione]</option>
                                                <?php if($listaTipoEventos->num_rows() > 0) {
                                                        foreach($listaTipoEventos->result() as $row):
                                                    ?>
                                                <option value="<?=$row->Evento_Tipo_Codigo?>"><?=$row->Evento_Tipo_Nombre?></option>
                                                <?php 
                                                        endforeach;
                                                } ?>
                                            </select>
                                            </div>
                                        </div>
                                        <div class="col-xs-12">
                                            <div class="form-group">
                                            <label class="">Nombre del Evento</label> 
                                            <input type="text" class="form-control text-uppercase" name="Evento_Nombre" />
                                            </div>
                                        </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="reset" class="btn btn-basic" data-dismiss="modal">Cerrar</button>
                                        <button type="submit" class="btn btn-primary">Guardar</button>
                                    </div>
                                    </form>
                                </div>
                                </div>
                            </div>