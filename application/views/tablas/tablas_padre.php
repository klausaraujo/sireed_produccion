                            <?php $titulo = "Gesti&oacute;n y Mantenimiento de Tablas Padre del Sistema"; ?>
                            <div class="iq-card-header row">
                                <div class="col-lg-8 col-md-4 col-sm-4 col-xs-12">
                                    <h3 style="font-size:22px;" class="text-left"><b> <?=$titulo?></b></h3>
                                </div>
                            </div>
                            <div class="iq-card-body">
                                <div class="container-fluid">
                                    <div class="row">
                                       <div class="col-12 mx-auto">
                                            <div class="table-responsive">
                                            <table id="tbListar" class="table table-bordered table-striped table-sm">
                                                <thead>
                                                    <tr>
                                                        <th class="text-center">N&uacute;mero</th>
                                                        <th class="text-center">Descripción y/o Función de la Tabla</th>
                                                        <th class="text-center">Nombre de Tabla en BD</th>
                                                        <th class="text-center">Acciones</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td align="center">01</td>
                                                        <td align="justify">Mantenimiento de los Eventos (por tipo) que se pueden registrar en el Módulo SIREED</td>    
                                                        <td align="justify">evento</td>                                                 
                                                        <td align="center">
                                                            <a href="<?=base_url()?>tablas/main/evento" class="btn btn-warning btn-circle d-flex justify-content-center align-items-center">
                                                                <i class="fa fa-pencil-square-o"></i>
                                                            </a>
                                                        </td>  
                                                    </tr>
                                                    <tr>
                                                        <td align="center">02</td>
                                                        <td align="justify">Mantenimiento de los Detalles de Eventos (por evento) que se pueden registrar en el Módulo SIREED</td>
                                                        <td align="justify">evento_detalle</td>    							
                                                        <td align="center">
                                                        <a href="<?=base_url()?>tablas/main/evento-detalle" class="btn btn-warning btn-circle d-flex justify-content-center align-items-center">
                                                            <i class="fa fa-pencil-square-o"></i>
                                                        </a>
                                                        </td>  
                                                    </tr>
                                                    <tr>
                                                        <td align="center">03</td>
                                                        <td align="justify">Mantenimiento de las Fuentes de Recepción de Información para el Registro de Eventos en el Módulo SIREED</td>
                                                        <td align="justify">evento_fuente</td>     							
                                                        <td align="center">
                                                        <a href="<?=base_url()?>tablas/main/evento-fuente" class="btn btn-warning btn-circle d-flex justify-content-center align-items-center">
                                                            <i class="fa fa-pencil-square-o"></i>
                                                        </a>
                                                        </td>  
                                                    </tr>
                                                    <tr>
                                                        <td align="center">04</td>
                                                        <td align="justify">Mantenimiento de las Entidades para ejecucón de respuestas ante un Tipo de Acción en un Evento en el Módulo SIREED</td> 
                                                        <td align="justify">tipo_accion_entidad</td>    							
                                                        <td align="center">
                                                        <a href="<?=base_url()?>tablas/main/tipo-accion-entidad" class="btn btn-warning btn-circle d-flex justify-content-center align-items-center">
                                                            <i class="fa fa-pencil-square-o"></i>
                                                        </a>
                                                        </td>  
                                                    </tr>
                                                    <tr>
                                                        <td align="center">05</td>
                                                        <td align="justify">Mantenimiento de los Tipos de Acciones que se pueden Ejecutar ante un Evento en el Módulo SIREED</td>
                                                        <td align="justify">tipo_accion</td>
                                                        <td align="center">
                                                        <a href="<?=base_url()?>tablas/main/tipo-accion" class="btn btn-warning btn-circle d-flex justify-content-center align-items-center">
                                                            <i class="fa fa-pencil-square-o"></i>
                                                        </a>
                                                    </td>  
                                                    <tr>
                                                        <td align="center">06</td>
                                                        <td align="justify">Mantenimiento de los Tipos de Perfiles en el Módulo de Registro de Usuarios</td>
                                                        <td align="justify">perfil</td>   							
                                                        <td align="center">
                                                        <a href="<?=base_url()?>tablas/main/perfiles" class="btn btn-warning btn-circle d-flex justify-content-center align-items-center">
                                                            <i class="fa fa-pencil-square-o"></i>
                                                        </a>
                                                        </td>  
                                                    </tr>
                                                    <tr>
                                                        <td align="center">07</td>
                                                        <td align="justify">Mantenimiento y Asignación de Tipos de Perfiles sobre los Módulos Activos del Sistema</td>
                                                        <td align="justify">modulo_rol</td>  							
                                                        <td align="center">
                                                        <a href="<?=base_url()?>tablas/main/perfilModulos" class="btn btn-warning btn-circle d-flex justify-content-center align-items-center">
                                                            <i class="fa fa-pencil-square-o"></i>
                                                        </a>
                                                        </td>  
                                                    </tr>
                                                    <tr>
                                                        <td align="center">08</td>
                                                        <td align="justify">Mantenimiento y Registro de los Periodos Anuales del Sistema definición de sus denominaciones</td>
                                                        <td align="justify">anio_ejecucion</td>  							
                                                        <td align="center">
                                                        <a href="<?=base_url()?>tablas/main/anioEjecucion" class="btn btn-warning btn-circle d-flex justify-content-center align-items-center">
                                                            <i class="fa fa-pencil-square-o"></i>
                                                        </a>
                                                        </td>  
                                                    </tr>                                      
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>