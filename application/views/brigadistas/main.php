<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title><?=TITULO_PRINCIPAL?></title>
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="<?=AUTOR?>">

	<?php $this->load->view("inc/resources"); ?>
	<?php $titulo = "Lista de Brigadistas"; ?>
	<link rel="stylesheet" href="<?=base_url()?>public/css/bootstrap-datetimepicker.min.css" />
	<link rel="stylesheet" href="<?=base_url()?>public/css/brigadistas/main.css?v=<?=date("s")?>" />
	<?php $opciones = $this->session->userdata("Permisos_Opcion"); ?>

</head>

<body>

	<div class="wrapper theme-2-active horizontal-nav navbar-top-blue">

	<?php $this->load->view("inc/nav"); ?>

        <!-- Main Content -->
		<div class="page-wrapper" style="min-height: 710px;">
			<div class="container pt-30">

				<div class="row heading-bg">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						<h5 class="txt-dark"><?=$titulo?></h5>
					</div>
					<!-- Breadcrumb -->
					<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
						<ol class="breadcrumb">
							<li><a href="<?=base_url()?>">Inicio</a></li>
							<li><a href="<?=base_url()?>brigadista"><span>Brigadistas</span></a></li>
							<li class="active"><span>Lista de Brigadistas</span></li>
						</ol>
					</div>

				</div>
				<div class="row">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-xs-12">
								<div class="panel panel-default card-view pa-0">
									<div class="panel-wrapper collapse in">
										<div class="panel-body pa-0">
											<div class="sm-data-box pt-20">
												<div class="container-fluid">


												<?php $message = $this->session->flashdata('messageOK'); ?>
                                                <?php if($message){ ?>
                                                    <div
														class="alert alert-success">
														<p><?= $message ?></p>
													</div>
                                                <?php } ?>

                                                <?php $message = $this->session->flashdata('messageError'); ?>
                                                <?php if($message){ ?>
                                                    <div
														class="alert alert-danger">
														<p><?= $message ?></p>
													</div>
                                                <?php } ?>
                                                <?php $idrol = $this->session->userdata("idrol"); ?>
                                                <input type="hidden"
														id="Tipo_Accion" />
													<ul class="botones-evento">
																<?php if(validarPermisosOpciones(14,$opciones)){ ?>
																<li id="btn-nuevo" class="agregar"><label rel=""><span>Agregar Brigadista</span><i class="fa fa-file-text-o" aria-hidden="true"></i></label></li>
																<?php } ?>
																<?php if(validarPermisosOpciones(15,$opciones)){ ?>
																<li id="btn-editar" class=""><label rel=""><span>Editar Brigadista</span><i class="fa fa-check" aria-hidden="true"></i></label></li>
																<?php } ?>
													</ul>
													<div class="clearfix"></div>
													<hr />
													<div class="row">
    													<div class="col-xs-12">
                                                          <table class="table table-bordered tableEtiqueta">
    														<tbody>
                                                          	<tr>
                                                                <td>Grado de estudios <i class="fa fa-graduation-cap pull-right mt-5" aria-hidden="true"></i></td>
                                                                <td>Información laboral <i class="fa fa-wrench pull-right mt-5" aria-hidden="true"></i></td>
                                                                <td>Certificaciones <i class="fa fa-file-text-o pull-right mt-5" aria-hidden="true"></i></td>
                                                                <td>Capacitaciones/cursos <i class="fa fa-university pull-right mt-5"></i></td>
                                                                <td>Participación en emergencias <i class="fa fa-ambulance pull-right mt-5" aria-hidden="true"></i></td>
                                                                <td>Participación en contigencias <i class="fa fa-random pull-right mt-5" aria-hidden="true"></i></td>
                                                                <td>Mostrar foto <i class="fa fa-file-photo-o pull-right mt-5" aria-hidden="true"></i></td>
                                                            </tr>
                                                           </tbody>
                                                          </table>
                                                        </div>
                                                    </div>
                                                    <div class="clearfix"></div>

													<div class="table-responsive">

														<table class="table table-bordered table-hover tbLista">
															<!-- dataTables-example -->
															<thead>
																<tr>
																	<th class="text-center">ID</th>
																	<th>Brigadista</th>
																	<th class="text-center">Documento</th>
																	<th class="text-center">género</th>
																	<th class="text-center">Fecha nacimiento</th>
																	<th>&nbsp;</th>
																	<th>&nbsp;</th>
																	<th>&nbsp;</th>
																	<th>&nbsp;</th>
																	<th>&nbsp;</th>
																	<th>&nbsp;</th>
																	<th>&nbsp;</th>
																	<th>&nbsp;</th>
																	<th>&nbsp;</th>
																	<th>&nbsp;</th>
															</thead>
															<tbody>
                                        						<?php
                                                                    $n = 1;
                                                                    if($lista->num_rows()>0){
                                                                        foreach ($lista->result() as $row) :
                                                                 ?>
                                        						<tr>
																	<td align="center"><?=$row->id?></td>
																	<td><?=$row->apellidos.", ".$row->nombres?></td>
																	<td align="center"><?=$row->documento_numero?></td>
																	<td class="text-center"><?=($row->genero==1)?"MASCULINO":"FEMENINO"?></td>
																	<td class="text-center"><?=$row->fecha_nacimiento?></td>
																	<td><?php if(validarPermisosOpciones(16,$opciones)){?><i class="fa fa-graduation-cap instruccion" aria-hidden="true"></i><?php } ?></td>
                                                                    <td><?php if(validarPermisosOpciones(17,$opciones)){?><i class="fa fa-wrench trabajo" aria-hidden="true"></i><?php } ?></td>
                                                                    <td><?php if(validarPermisosOpciones(18,$opciones)){?><i class="fa fa-file-text-o certificado" aria-hidden="true"></i><?php } ?></td>
                                                                    <td><?php if(validarPermisosOpciones(19,$opciones)){?><i class="fa fa-university capacitacion" aria-hidden="true"></i><?php } ?></td>
                                                                    <td><?php if(validarPermisosOpciones(20,$opciones)){?><i class="fa fa-ambulance emergencia" aria-hidden="true"></i><?php } ?></td>
                                                                    <td><?php if(validarPermisosOpciones(21,$opciones)){?><i class="fa fa-random contingencia" aria-hidden="true"></i><?php } ?></td>
																	<td><?php if(validarPermisosOpciones(22,$opciones)){?><?php if(strlen($row->foto>10)){?><i class="fa fa-file-photo-o foto"></i><?php } ?><?php } ?></td>
																	<td><a href="<?=base_url()."brigadistas/ficha/".encriptarBrigadista($row->id)?>" target="_blank"><i class="fa fa-file-pdf-o" aria-hidden="true"></i></a></td>
																	<th>&nbsp;</th>
																	<td><?=$row->foto?></td>
																</tr>
                                    							<?php
                                            
                                                                    endforeach;
                                                                }
                                                                ?>
                              </tbody>
														</table>

													</div>
													<!-- table -->

												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<?php $this->load->view("inc/footer"); ?>
		</div>
	</div>
	
	<div class="modal fade" id="instruccionModal" tabindex="-1" role="dialog" aria-labelledby="estudiosModalLabel" style="margin-top: -15px;">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
    		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <h5 class="modal-title">Grado Instrucción</h5>
          </div>
          <div class="modal-body text-center">
    
    		<form id="formRegistrarEspecialidad" name="formRegistrarEspecialidad" method="post" action="">
					<input type="hidden" name="id" />
					<div class="modal-body">

						<div class="col-xs-12">
							<div class="form-group">
								<label class="">Profesión</label>
								<select class="form-control" name="brigadistas_profesiones_id">
									<option value="">-- Seleccione --</option>
									<?php foreach($listaProfesiones->result() as $row): ?>
										<option value="<?=$row->brigadistas_profesiones_id?>"><?=$row->profesion?></option>
									<?php endforeach; ?>
								</select>
							</div>
						</div>
						
						<div class="col-xs-12">
							<div class="form-group">
								<label class="">Especialidad</label>
								<select class="form-control" name="brigadistas_especialidad_id">
									<option value="">-- Seleccione Profesión --</option>
								</select>
							</div>
						</div>
						
						<div class="col-xs-12 table-wrapper">
							<table id="tableInstruccion" class="table">
								<thead>
									<tr>
										<th class="text-center">Profesión</th>
										<th class="text-center">Especialidad</th>
										<th class="text-center">&nbsp;</th>
									</tr>
								</thead>
								<tbody></tbody>
							</table>
						</div>

					</div>
					<div class="modal-footer">
						<button class="btn btn-secondary" type="button" data-dismiss="modal">Cerrar</button>
						<button class="btn btn-primary" type="submit">Agregar</button>
						<div class="col-md-12 text-center cargando"></div>
					</div>
					<p id="duplicate_especialidad" class="text-danger text-center hide">No se pudo registrar, ya existe</p>
				</form>
          </div>
        </div>
      </div>
    </div>
    
    <div class="modal fade" id="deleteEspecialidadModal" tabindex="-1" role="dialog" aria-labelledby="deleteEspecialidadModal">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
        	<form method="post" action="<?=base_url()?>brigadistas/eliminarEspecialidad">
              <div class="modal-header">
        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title">Eliminar Especialidad</h5>
              </div>
              <div class="modal-body">
              	<input type="hidden" name="id" />
              	<p>&iquest;Seguro desea eliminar especialidad?</p>
              </div>
              <div class="modal-footer">
              	<button type="submit" class="btn btn-danger">Eliminar</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
              </div>
          </form>
        </div>
      </div>
    </div>
    
     <div class="modal fade" id="trabajoModal" tabindex="-1" role="dialog" aria-labelledby="trabajoModalLabel" style="margin-top: -15px;">
      <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
          <div class="modal-header">
    		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <h5 class="modal-title">Registro de Trabajos</h5>
          </div>
          <div class="modal-body text-center">
    
    		<form id="formRegistrarTrabajo" name="formRegistrarTrabajo" method="post" action="">
					<input type="hidden" name="idBrigadistaTrabajo" id="idBrigadistaTrabajo" />
					<div class="modal-body">

						<div class="row">
						
						<div class="col-xs-12 col-sm-6">
						
    						<div class="col-xs-12">						
        						<div class="form-group row">
                                    <label class="col-sm-6 col-form-label py-10">DIRESA/GERESA/DIRIS/DISA</label>
                                    <div class="col-sm-6">
                                    	<select class="form-control" name="DIRESA" id="DIRESA">
        									<?php
        									   foreach($diresa->result() as $row):
        									?>
        									<option value="<?=$row->id?>"><?=$row->nombre?></option>
        									<?php
        									   endforeach;
        									?>
        								</select>
                                    </div>
                                 </div>
    						</div>
    						
    						<div class="col-xs-12">						
        						<div class="form-group row">
                                    <label class="col-sm-6 col-form-label py-10">RED</label>
                                    <div class="col-sm-6">
                                    	<input type="text" class="form-control" name="Red" id="Red" autocomplete="off" />
                                    </div>
                                 </div>
    						</div>
    						
    						<div class="col-xs-12">						
        						<div class="form-group row">
                                    <label class="col-sm-6 col-form-label py-10">Micro RED</label>
                                    <div class="col-sm-6">
                                    	<input type="text" class="form-control" name="MicroRed" id="MicroRed" autocomplete="off" />
                                    </div>
                                 </div>
    						</div>
    						
							<div class="col-xs-12">
								<div class="form-group row">
									<label class="col-sm-6 col-form-label">IPRESS</label>
									<div class="col-sm-6">
									<div class="input-group">
										<input type="hidden" name="CodEESS" />
										<input type="text" name="CodEESS_Nombre" class="form-control detalle-size" autocomplete="off" readonly />
										<span class="input-group-btn">
											<button type="button" class="btn btn-info detalle-size" data-toggle="modal" data-target="#tableEntidadesSaludModal" style="color: white">
												<i class="fa fa-search" aria-hidden="true"></i>
											</button>
										</span>
										</div>
									</div>
								</div>
							</div>
    						
    						<div class="col-xs-12">						
        						<div class="form-group row">
                                    <label class="col-sm-6 col-form-label py-10">Oficina</label>
                                    <div class="col-sm-6">
                                    	<input type="text" class="form-control" name="oficina" id="oficina" autocomplete="off" />
                                    </div>
                                 </div>
    						</div>

    						<div class="col-xs-12">			
								<div class="form-group row">
    								<label class="col-sm-6 col-form-label py-10">Condición Laboral</label>
    								<div class="col-sm-6">
        								<select class="form-control" name="condicion_laboral" id="condicion_laboral">
        									<option value="0">[N/A]</option>
        									<option value="1">NOMBRADO 276</option>
        									<option value="2">NOMBRADO 278</option>
        									<option value="3">D.L. 10578(CAS)</option>
        									<option value="4">LOCADOR</option>
        								</select>
        							</div>
    							</div>
    						</div>
    						
    						<div class="col-xs-12">						
        						<div class="form-group row">
                                    <label class="col-sm-6 col-form-label py-10">Cargo</label>
                                    <div class="col-sm-6">
                                    	<input type="text" class="form-control" name="cargo" id="cargo" autocomplete="off" />
                                    </div>
                                 </div>
    						</div>
    						
    						<div class="col-xs-12">						
        						<div class="form-group row">
                                    <label class="col-sm-6 col-form-label py-10">Tel. Institucional</label>
                                    <div class="col-sm-6">
                                    	<input type="text" class="form-control" name="telefono_institucional" id="telefono_institucional" autocomplete="off" />
                                    </div>
                                 </div>
    						</div>
    						
    						<div class="col-xs-12">						
        						<div class="form-group row">
                                    <label class="col-sm-6 col-form-label py-10">Email Institucional</label>
                                    <div class="col-sm-6">
                                    	<input type="text" class="form-control" name="email_institucional" id="email_institucional" autocomplete="off" />
                                    </div>
                                 </div>
    						</div>
						</div>
						
						<div class="col-xs-12 col-sm-6">
						
    						<div class="col-xs-12 table-wrapper">
    							<table id="tableTrabajo" class="table">
    								<thead>
    									<tr>
    										<th class="text-center">DIRESA</th>
    										<th class="text-center">Red</th>
    										<th class="text-center">MicroRed</th>
    										<th class="text-center">Condición L.</th>
    										<th class="text-center">cargo</th>
    										<th class="text-center">&nbsp;</th>
    									</tr>
    								</thead>
    								<tbody></tbody>
    							</table>
    						</div>
						
						</div>
						
						</div>
						

					</div>
					<div class="modal-footer">
						<button class="btn btn-secondary" type="button" data-dismiss="modal">Cerrar</button>
						<button class="btn btn-primary" type="submit">Agregar</button>
						<div class="col-md-12 text-center cargando"></div>
					</div>
					<p id="duplicate_trabajo" class="text-danger text-center hide">No se pudo registrar, ya existe</p>
				</form>
          </div>
        </div>
      </div>
    </div>
    
    <div class="modal fade" id="deleteTrabajoModal" tabindex="-1" role="dialog" aria-labelledby="deleteTrabajoModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
        	<form method="post" action="<?=base_url()?>brigadistas/eliminarTrabajo">
              <div class="modal-header">
        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title">Eliminar Trabajo</h5>
              </div>
              <div class="modal-body">
              	<input type="hidden" name="id" />
              	<p>&iquest;Seguro desea eliminar el trabajo?</p>
              </div>
              <div class="modal-footer">
              	<button type="submit" class="btn btn-danger">Eliminar</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
              </div>
          </form>
        </div>
      </div>
    </div>
    
    <div class="modal fade" id="certificadoModal" tabindex="-1" role="dialog" aria-labelledby="certificadoModalLabel" style="margin-top: -15px;">
      <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
          <div class="modal-header">
    		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <h5 class="modal-title">Registro de Certificaciones</h5>
          </div>
          <div class="modal-body text-center">
    
    		<form id="formRegistrarCertificacion" name="formRegistrarCertificacion" method="post" action="">
					<input type="hidden" name="idBrigadistaCertificacion" id="idBrigadistaCertificacion" />
					<div class="modal-body">

						<div class="row">
						
						<div class="col-xs-12 col-sm-5">
						
						<div class="col-xs-12">
							<div class="form-group row">
								<label class="col-sm-6 col-form-label py-10">Tipo de Certificación</label>
								<div class="col-sm-6">
    								<select class="form-control" name="tipo_certificacion" id="tipo_certificacion">
    									<option value="">-- Seleccione --</option>
    									<option value="1">BRIGADISTA</option>
    									<option value="2">E.M.T. I</option>
    									<option value="3">E.M.T. II</option>
    									<option value="4">E.M.T. III</option>
    									<option value="5">CELULA ESPECIALIZADA</option>
    								</select>
    							</div>
							</div>
						</div>
						
						<div class="col-xs-12">						
    						<div class="form-group row">
								<label class="col-sm-6 col-form-label py-10">Fecha de Reconocimiento</label>
								<div class="col-sm-6">
									<div class="form-group" id="error_fecha_reconocimiento">
										<div class='input-group date' id='datetimepicker'>
											<input type="text" class="form-control" name="fecha_reconocimiento" id="fecha_reconocimiento" /> 
											<span class="input-group-addon"> <span class="glyphicon glyphicon-calendar"></span> </span>
										</div>
									</div>
									
								</div>
							</div>
						</div>
						
						<div class="col-xs-12">						
    						<div class="form-group row">
                                <label class="col-sm-6 col-form-label py-10">Número de Resolución</label>
                                <div class="col-sm-6">
                                	<input type="text" class="form-control" name="resolucion" id="resolucion" autocomplete="off" />
                                </div>
                             </div>
						</div>
						
						<div class="col-xs-12">						
    						<div class="form-group row">
								<label class="col-sm-6 col-form-label py-10">Fecha de Inicio</label>
								<div class="col-sm-6">
									<div class="form-group" id="error_fecha_inicio">
										<div class='input-group date' id='datetimepicker2'>
											<input type="text" class="form-control" name="fecha_inicio" id="fecha_inicio" /> 
											<span class="input-group-addon"> <span class="glyphicon glyphicon-calendar"></span> </span>
										</div>
									</div>
									
								</div>
							</div>
						</div>
						
						<div class="col-xs-12">						
    						<div class="form-group row">
								<label class="col-sm-6 col-form-label py-10">Fecha de Vencimiento</label>
								<div class="col-sm-6">
									<div class="form-group" id="error_fecha_vencimiento">
										<div class='input-group date' id='datetimepicker3'>
											<input type="text" class="form-control" name="fecha_vencimiento" id="fecha_vencimiento" /> 
											<span class="input-group-addon"> <span class="glyphicon glyphicon-calendar"></span> </span>
										</div>
									</div>
									
								</div>
							</div>
						</div>
						
						<div class="col-xs-12">
    						<div class="form-group row">
    							<label class="col-sm-6 col-form-label py-10">Agregar Resolución (Archivo)</label>
    							<div class="col-sm-6">
        							<div class="box">
            							<input type="file" name="file" id="file" class="inputfile inputfile-1" data-multiple-caption="{count} files selected" multiple />
            							<label for="file"><i class="fa fa-upload" aria-hidden="true"></i> <span>Escoger archivo&hellip;</span></label>
        							</div>
        						</div>
    						</div>
						</div>
						
						</div>
						
						<div class="col-xs-12 col-sm-7">
						
						<div class="col-xs-12 table-wrapper">
							<table id="tableCertificacion" class="table">
								<thead>
									<tr>
										<th class="text-center">Tipo Certificación</th>
										<th class="text-center">F. Reconocimiento</th>
										<th class="text-center">N° Resolución</th>
										<th class="text-center">F. Inicio</th>
										<th class="text-center">F. Vencimiento</th>
										<th class="text-center">&nbsp;</th>
										<th class="text-center">&nbsp;</th>
									</tr>
								</thead>
								<tbody></tbody>
							</table>
						</div>
						
						</div>
						
						</div>
						

					</div>
					<div class="modal-footer">
						<button class="btn btn-secondary" type="button" data-dismiss="modal">Cerrar</button>
						<button class="btn btn-primary" type="submit">Agregar</button>
						<div class="col-md-12 text-center cargando"></div>
					</div>
					<p id="duplicate_certificacion" class="text-danger text-center hide">No se pudo registrar, ya existe</p>
				</form>
          </div>
        </div>
      </div>
    </div>
    
    <div class="modal fade" id="deleteCertificacionModal" tabindex="-1" role="dialog" aria-labelledby="deleteCertificacionModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
        	<form method="post" action="<?=base_url()?>brigadistas/eliminarCertificacion">
              <div class="modal-header">
        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title">Eliminar Certificación</h5>
              </div>
              <div class="modal-body">
              	<input type="hidden" name="id" />
              	<p>&iquest;Seguro desea eliminar la certificación?</p>
              </div>
              <div class="modal-footer">
              	<button type="submit" class="btn btn-danger">Eliminar</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
              </div>
          </form>
        </div>
      </div>
    </div>
    
    <div class="modal fade" id="capacitacionModal" tabindex="-1" role="dialog" aria-labelledby="capacitacionModalLabel" style="margin-top: -15px;">
      <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
          <div class="modal-header">
    		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <h5 class="modal-title">Registro de Capacitaciones / Cursos</h5>
          </div>
          <div class="modal-body text-center">
    
    		<form id="formRegistrarCapacitacion" name="formRegistrarCapacitacion" method="post" action="">
					<input type="hidden" name="id" />
					<div class="modal-body">

						<div class="row">
						
						<div class="col-xs-12 col-sm-5">
						
						<div class="col-xs-12">
							<div class="form-group row">
								<label class="col-sm-6 col-form-label py-10">Curso / Capacitación</label>
								<div class="col-sm-6">
    								<select class="form-control" name="brigadistas_cursos_id" id="brigadistas_cursos_id">
    									<option value="">-- Seleccione --</option>
    									<?php foreach($listaCapacitaciones->result() as $row): ?>
										<option value="<?=$row->brigadistas_cursos_id?>"><?=$row->nombre_curso?></option>
									<?php endforeach; ?>
    								</select>
    							</div>
							</div>
						</div>
						
						<div class="col-xs-12">						
    						<div class="form-group row">
                                <label class="col-sm-6 col-form-label py-10">Entidad Organizadora</label>
                                <div class="col-sm-6">
                                	<input type="text" class="form-control" name="entidad" id="entidad" autocomplete="off" />
                                </div>
                             </div>
						</div>
						
						<div class="col-xs-12">						
    						<div class="form-group row">
								<label class="col-sm-6 col-form-label py-10">Fecha de Inicio</label>
								<div class="col-sm-6">
									<div class="form-group" id="error_capcitacion_fecha_inicio">
										<div class='input-group date' id='datetimepicker2'>
											<input type="text" class="form-control" name="fecha_inicio" id="capacitacion_fecha_inicio" /> 
											<span class="input-group-addon"> <span class="glyphicon glyphicon-calendar"></span> </span>
										</div>
									</div>
									
								</div>
							</div>
						</div>
						
						<div class="col-xs-12">						
    						<div class="form-group row">
								<label class="col-sm-6 col-form-label py-10">Fecha de Fin</label>
								<div class="col-sm-6">
									<div class="form-group" id="error_capcitacion_fecha_fin">
										<div class='input-group date' id='datetimepicker3'>
											<input type="text" class="form-control" name="fecha_fin" id="capacitacion_fecha_fin" /> 
											<span class="input-group-addon"> <span class="glyphicon glyphicon-calendar"></span> </span>
										</div>
									</div>
									
								</div>
							</div>
						</div>
						
						<div class="col-xs-12">						
    						<div class="form-group row">
                                <label class="col-sm-6 col-form-label py-10">Duración(Horas)</label>
                                <div class="col-sm-6 col-md-3">
                                	<input type="text" class="form-control" name="duracion" id="duracion" autocomplete="off" />
                                </div>
                             </div>
						</div>
						
						
						</div>
						
						<div class="col-xs-12 col-sm-7">
						
						<div class="col-xs-12 table-wrapper">
							<table id="tableCapacitacion" class="table">
								<thead>
									<tr>
										<th class="text-center">Capacitación/curso</th>
										<th class="text-center">Entidad</th>
										<th class="text-center">F. Inicio</th>
										<th class="text-center">F. Fin</th>
										<th class="text-center">Duración(hr.)</th>
										<th class="text-center">&nbsp;</th>
									</tr>
								</thead>
								<tbody></tbody>
							</table>
						</div>
						
						</div>
						
						</div>
						

					</div>
					<div class="modal-footer">
						<button class="btn btn-secondary" type="button" data-dismiss="modal">Cerrar</button>
						<button class="btn btn-primary" type="submit">Agregar</button>
						<div class="col-md-12 text-center cargando"></div>
					</div>
					<p id="duplicate_capacitacion" class="text-danger text-center hide">No se pudo registrar, ya existe</p>
				</form>
          </div>
        </div>
      </div>
    </div>
    
    <div class="modal fade" id="deleteCapacitacionesModal" tabindex="-1" role="dialog" aria-labelledby="deleteCapacitacionesModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
        	<form method="post" action="<?=base_url()?>brigadistas/eliminarCapacitacion">
              <div class="modal-header">
        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title">Eliminar Capacitación / Curso</h5>
              </div>
              <div class="modal-body">
              	<input type="hidden" name="id" />
              	<p>&iquest;Seguro desea eliminar la capacitiación / curso?</p>
              </div>
              <div class="modal-footer">
              	<button type="submit" class="btn btn-danger">Eliminar</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
              </div>
          </form>
        </div>
      </div>
    </div>
    
    <div class="modal fade" id="emergenciaModal" tabindex="-1" role="dialog" aria-labelledby="emergenciaModalLabel" style="margin-top: -15px;">
      <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
          <div class="modal-header">
    		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <h5 class="modal-title">Partificaciones en Emergencias</h5>
          </div>
          <div class="modal-body text-center">
    
    		<form id="formRegistrarEmergencia" name="formRegistrarEmergencia" method="post" action="">
					<input type="hidden" name="id" />
					<div class="modal-body">

						<div class="row">
						
						<div class="col-xs-12 col-sm-5">						
						
						<div class="col-xs-12">						
    						<div class="form-group row">
                                <div class="col-xs-12 col-sm-6">
                                	<div class="form-check">
                                      <input class="form-check-input" type="checkbox" value="1" id="chk_lider" name="lider">
                                      <label class="form-check-label" for="chk_lider">
                                        Líder de Grupo
                                      </label>
                                    </div>
								</div>
                                <div class="col-xs-12 col-sm-6">
                                	<div class="form-check">
                                      <input class="form-check-input" type="checkbox" value="1" id="chk_fuerza_tarea" name="fuerza_tarea">
                                      <label class="form-check-label" for="chk_fuerza_tarea">
                                        Fuerza de Tarea
                                      </label>
                                    </div>
                                </div>
                             </div>
						</div>
						
						<div class="col-xs-12">
							<div class="form-group row">
								<label class="col-sm-6 col-form-label py-10">Calificación obtenida</label>
								<div class="col-sm-6">
    								<select class="form-control" name="calificacion" id="calificacion">
    									<option value="0" selected>[N/A]</option>
    									<option value="1">EXCELENTE</option>
    									<option value="2">ACEPTABLE</option>
    									<option value="3">REGULAR/MALO</option>
    								</select>
    							</div>
							</div>
						</div>
						
						<div class="col-xs-12">						
    						<div class="form-group row">
                                <label class="col-xs-12 col-form-label py-10">Acciones realizadas</label>
                                <div class="col-xs-12">
                                	<textarea rows="3" name="acciones_realizadas" class="form-control"></textarea>
                                </div>
                             </div>
						</div>
						
						<input type="hidden" name="idevento" class="idevento" />
						<div class="row">
    						<div class="col-xs-12">
        						<div class="evento_content form-group row">                                
                                    <label class="evento_datos"></label>
                                 </div>
    						</div>
						</div>
						
						<div class="col-xs-12">
							<div class="form-group row">
								<div class="col-sm-12">
    								<button type="button" class="btn btn-danger" data-toggle="modal" data-target="#busquedaEventoModal">Buscar Evento</button>
    							</div>
							</div>
						</div>
						
						</div>
						
						<div class="col-xs-12 col-sm-7">
						
						<div class="col-xs-12 table-wrapper">
							<table id="tableEmergencia" class="table">
								<thead>
									<tr>
										<th class="text-center">Líder</th>
										<th class="text-center">F. de Tarea</th>
										<th class="text-center">Calificación</th>
										<th class="text-center">&nbsp;</th>
									</tr>
								</thead>
								<tbody></tbody>
							</table>
						</div>
						
						</div>
						
						</div>
						

					</div>
					<div class="modal-footer">
						<button class="btn btn-secondary" type="button" data-dismiss="modal">Cerrar</button>
						<button class="btn btn-primary" type="submit">Agregar</button>
						<div class="col-md-12 text-center cargando"></div>
					</div>
					<p id="duplicate_emergencia" class="text-danger text-center hide">No se pudo registrar, ya existe</p>
				</form>
          </div>
        </div>
      </div>
    </div>
    
    <div class="modal fade" id="deleteEmergenciaModal" tabindex="-1" role="dialog" aria-labelledby="deleteEmergenciaModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
        	<form method="post" action="<?=base_url()?>brigadistas/eliminarEmergencia">
              <div class="modal-header">
        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title">Eliminar Emergencia</h5>
              </div>
              <div class="modal-body">
              	<input type="hidden" name="id" />
              	<p>&iquest;Seguro desea eliminar la participación?</p>
              </div>
              <div class="modal-footer">
              	<button type="submit" class="btn btn-danger">Eliminar</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
              </div>
          </form>
        </div>
      </div>
    </div>
	
	<div class="modal fade" id="fotoModal" tabindex="-1" role="dialog" aria-labelledby="fotoModalLabel" style="margin-top: -15px;">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
    		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <h5 class="modal-title">Foto</h5>
          </div>
          <div class="modal-body text-center">
    
    		<img src="" alt="Foto Carnet">
    
          </div>
        </div>
      </div>
    </div>
    
    <div class="modal fade" id="contingenciaModal" tabindex="-1" role="dialog" aria-labelledby="contingenciaModalLabel" style="margin-top: -15px;">
      <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
          <div class="modal-header">
    		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <h5 class="modal-title">Partificaciones en Contingencias</h5>
          </div>
          <div class="modal-body text-center">
    
    		<form id="formRegistrarContingencia" name="formRegistrarContingencia" method="post" action="">
					<input type="hidden" name="id" />
					<div class="modal-body">

						<div class="row">
						
						<div class="col-xs-12 col-sm-5">						
						
						<div class="col-xs-12">						
    						<div class="form-group row">
                                <div class="col-xs-12 col-sm-6">
                                	<div class="form-check">
                                      <input class="form-check-input" type="checkbox" value="1" id="chk_lider_c" name="lider">
                                      <label class="form-check-label" for="chk_lider_c">
                                        Líder de Grupo
                                      </label>
                                    </div>
								</div>
                                <div class="col-xs-12 col-sm-6">
                                	<div class="form-check">
                                      <input class="form-check-input" type="checkbox" value="1" id="chk_fuerza_tarea_c" name="fuerza_tarea">
                                      <label class="form-check-label" for="chk_fuerza_tarea_c">
                                        Fuerza de Tarea
                                      </label>
                                    </div>
                                </div>
                             </div>
						</div>
						
						<div class="col-xs-12">
							<div class="form-group row">
								<label class="col-sm-6 col-form-label py-10">Calificación obtenida</label>
								<div class="col-sm-6">
    								<select class="form-control" name="calificacion" id="calificacion">
    									<option value="0" selected>[N/A]</option>
    									<option value="1">EXCELENTE</option>
    									<option value="2">ACEPTABLE</option>
    									<option value="3">REGULAR/MALO</option>
    								</select>
    							</div>
							</div>
						</div>
						
						<div class="col-xs-12">						
    						<div class="form-group row">
                                <label class="col-xs-12 col-form-label py-10">Acciones realizadas</label>
                                <div class="col-xs-12">
                                	<textarea rows="3" name="acciones_realizadas" class="form-control"></textarea>
                                </div>
                             </div>
						</div>
						
						<input type="hidden" name="idevento" class="idevento" />
						<div class="row">
    						<div class="col-xs-12">
        						<div class="evento_content form-group row">                                
                                    <label class="evento_datos"></label>
                                 </div>
    						</div>
						</div>
						
						<div class="col-xs-12">
							<div class="form-group row">
								<div class="col-sm-12">
    								<button type="button" class="btn btn-danger" data-toggle="modal" data-target="#busquedaEventoModal">Buscar Evento</button>
    							</div>
							</div>
						</div>
						
						</div>
						
						<div class="col-xs-12 col-sm-7">
						
						<div class="col-xs-12 table-wrapper">
							<table id="tableContingencia" class="table">
								<thead>
									<tr>
										<th class="text-center">Líder</th>
										<th class="text-center">F. de Tarea</th>
										<th class="text-center">Calificación</th>
										<th class="text-center">&nbsp;</th>
									</tr>
								</thead>
								<tbody></tbody>
							</table>
						</div>
						
						</div>
						
						</div>
						

					</div>
					<div class="modal-footer">
						<button class="btn btn-secondary" type="button" data-dismiss="modal">Cerrar</button>
						<button class="btn btn-primary" type="submit">Agregar</button>
						<div class="col-md-12 text-center cargando"></div>
					</div>
					<p id="duplicate_contingencia" class="text-danger text-center hide">No se pudo registrar, ya existe</p>
				</form>
          </div>
        </div>
      </div>
    </div>
    
    <div class="modal fade" id="deleteContingenciaModal" tabindex="-1" role="dialog" aria-labelledby="deleteContingenciaModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
        	<form method="post" action="<?=base_url()?>brigadistas/eliminarContingencia">
              <div class="modal-header">
        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title">Eliminar Contingencia</h5>
              </div>
              <div class="modal-body">
              	<input type="hidden" name="id" />
              	<p>&iquest;Seguro desea eliminar la participación?</p>
              </div>
              <div class="modal-footer">
              	<button type="submit" class="btn btn-danger">Eliminar</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
              </div>
          </form>
        </div>
      </div>
    </div>

    <div class="modal fade" id="busquedaEventoModal" tabindex="-1" role="dialog" aria-labelledby="busquedaEventoModalLabel"
		aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document"
			style="padding-top: 10px;">
			<div class="modal-content">
				<div class="modal-body">
					<div class="form-group row">
						<label class="col-sm-12 col-form-label">Tipo</label>
						<div class="col-xs-12 col-sm-4">
							<select class="form-control" name="evento_tipo" id="evento_tipo">
								  <?php foreach($tipo as $row): ?>
								  <option value="<?=$row->Evento_Tipo_Codigo?>"><?=$row->Evento_Tipo_Nombre?></option>
								  <?php endforeach; ?>
								</select>
						</div>
						<div class="col-xs-12 col-sm-4">
							<div class="form-group" id="error_capcitacion_fecha_evento">
								<div class='input-group date'>
									<input type="text" class="form-control" name="evento_fecha" id="evento_fecha" /> 
									<span class="input-group-addon"> <span class="glyphicon glyphicon-calendar"></span> </span>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-4">
							<button id="btnBuscarEventoModal" class="btn btn-info">Buscar</button>
						</div>

					</div>
					<table class="tableEvento table table-striped table-bordered table-sm" cellspacing="0" width="100%">
						<thead>
							<tr>
								<th>evento</th>
        						<th>eventoDetalle</th>
        						<th>fecha</th>
        						<th>ubigeo</th>
        						<th>&nbsp;</th>
        						<th>&nbsp;</th>
							</tr>
						</thead>
						<tbody>

						</tbody>
					</table>

				</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="laboralesModal" tabindex="-1" role="dialog" aria-labelledby="laboralesModalLabel" style="margin-top: -15px;">
      <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
          <div class="modal-header">
    		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <h5 class="modal-title">Partificaciones en Contingencias</h5>
          </div>
          <div class="modal-body text-center">
    
    		<form id="formRegistrarLaborales" name="formRegistrarLaborales" method="post" action="">
					<input type="hidden" name="id" />
					<div class="modal-body">

						<div class="row">
						
						<div class="col-xs-12 col-sm-5">						
						
						<div class="col-xs-12">						
    						<div class="form-group row">
                                <div class="col-xs-12 col-sm-6">
                                	<div class="form-check">
                                      <input class="form-check-input" type="checkbox" value="1" id="chk_lider_c" name="lider">
                                      <label class="form-check-label" for="chk_lider_c">
                                        Líder de Grupo
                                      </label>
                                    </div>
								</div>
                                <div class="col-xs-12 col-sm-6">
                                	<div class="form-check">
                                      <input class="form-check-input" type="checkbox" value="1" id="chk_fuerza_tarea_c" name="fuerza_tarea">
                                      <label class="form-check-label" for="chk_fuerza_tarea_c">
                                        Fuerza de Tarea
                                      </label>
                                    </div>
                                </div>
                             </div>
						</div>
						
						<div class="col-xs-12">
							<div class="form-group row">
								<label class="col-sm-6 col-form-label py-10">Calificación obtenida</label>
								<div class="col-sm-6">
    								<select class="form-control" name="calificacion" id="calificacion">
    									<option value="0" selected>[N/A]</option>
    									<option value="1">EXCELENTE</option>
    									<option value="2">ACEPTABLE</option>
    									<option value="3">REGULAR/MALO</option>
    								</select>
    							</div>
							</div>
						</div>
						
						<div class="col-xs-12">						
    						<div class="form-group row">
                                <label class="col-xs-12 col-form-label py-10">Acciones realizadas</label>
                                <div class="col-xs-12">
                                	<textarea rows="3" name="acciones_realizadas" class="form-control"></textarea>
                                </div>
                             </div>
						</div>
						
						<input type="hidden" name="idevento" class="idevento" />
						<div class="row">
    						<div class="col-xs-12">
        						<div class="evento_content form-group row">                                
                                    <label class="evento_datos"></label>
                                 </div>
    						</div>
						</div>
						
						<div class="col-xs-12">
							<div class="form-group row">
								<div class="col-sm-12">
    								<button type="button" class="btn btn-danger" data-toggle="modal" data-target="#busquedaEventoModal">Buscar Evento</button>
    							</div>
							</div>
						</div>
						
						</div>
						
						<div class="col-xs-12 col-sm-7">
						
						<div class="col-xs-12 table-wrapper">
							<table id="tableContingencia" class="table">
								<thead>
									<tr>
										<th class="text-center">Líder</th>
										<th class="text-center">F. de Tarea</th>
										<th class="text-center">Calificación</th>
										<th class="text-center">&nbsp;</th>
									</tr>
								</thead>
								<tbody></tbody>
							</table>
						</div>
						
						</div>
						
						</div>
						

					</div>
					<div class="modal-footer">
						<button class="btn btn-secondary" type="button" data-dismiss="modal">Cerrar</button>
						<button class="btn btn-primary" type="submit">Agregar</button>
						<div class="col-md-12 text-center cargando"></div>
					</div>
					<p id="duplicate_contingencia" class="text-danger text-center hide">No se pudo registrar, ya existe</p>
				</form>
          </div>
        </div>
      </div>
    </div>
    
    <div class="modal fade" id="tableEntidadesSaludModal" tabindex="-1" role="dialog" aria-labelledby="tableEntidadesSaludModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document" style="padding-top: 10px;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h5 class="modal-title" id="registrarTableroModalLabel">Seleccionar Entidad de Salud</h5>

				</div>
				<div class="modal-body">
					<div class="form-group row">
						<label class="col-sm-12 col-form-label">Datos del Ubigeo</label>
						<div class="col-sm-3">
							<select class="form-control" name="departamento" id="departamento">
								<option value="">-- Regi&oacute;n --</option>
								  <?php foreach($departamentos->result() as $row): ?>
								  <option value="<?=$row->Codigo_Departamento?>"><?=$row->Nombre?></option>
								  <?php endforeach; ?>
								</select>
						</div>
						<div class="col-sm-3">
							<select class="form-control" name="provincia" id="provincia">
								<option value="">-- Provincia --</option>
							</select>
						</div>
						<div class="col-sm-3">
							<select class="form-control" name="distrito" id="distrito">
								<option value="">-- Distrito --</option>
							</select>
						</div>
						<div class="col-sm-3">
							<button id="btnFiltrarUbigeo" class="btn btn-info">Buscar IPRESS</button>
						</div>

					</div>
					<table
						class="tableEntidadesSalud table table-striped table-bordered table-sm" cellspacing="0" width="100%">
						<thead>
							<tr>
								<th>C&oacute;digo</th>
								<th>Nombre</th>
								<th>Clasificaci&oacute;n</th>

							</tr>
						</thead>
						<tbody>

						</tbody>
					</table>

				</div>
			</div>
		</div>
	</div>    

    <script src="<?=base_url()?>public/js/moment.min.js"></script>
	<script src="<?=base_url()?>public/js/locale.es.js"></script>
	<script src="<?=base_url()?>public/js/bootstrap-datetimepicker.min.js"></script>
	<script src="<?=base_url()?>public/js/brigadistas/main.js?v=<?=date("s")?>"></script>
	<script>
	listaBrigadistas("<?=base_url()?>");
	</script>

</body>

</html>