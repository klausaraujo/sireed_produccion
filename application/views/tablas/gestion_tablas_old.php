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

<!--<script src="https://cdn.pubnub.com/sdk/javascript/pubnub.4.21.7.js"></script>-->

      <?php
     // $this->load->view("inc/resources");
      $titulo = "Gesti&oacute;n y Mantenimiento de Tablas Padre del Sistema";
      ?>
      <style>
         @media (max-width: 767px) {
            .breadcrumb, .heading-bg .btn-outline-white.btn-rounded, .heading-bg button.btn-outline-white.fc-agendaDay-button.fc-state-default.fc-corner-right,
            .heading-bg button.btn-outline-white.fc-month-button.fc-state-default.fc-corner-left,
            .heading-bg button.btn-outline-white.fc-agendaWeek-button {
               display: none; }
         }
         .btn.btn-circle {
            height: 40px;
            width: 40px;
            padding: 0;
            border-radius: 50%; }
    +    .btn.btn-warning{
            background: #ffbf36;
            border: solid 1px #ffbf36; }
         .breadcrumb {
            background-color: transparent;
            float: right;
            list-style: outside none none;
            margin-bottom: 0;
            padding: 9px 0 0 0;
            font-size: 13px; }
            .breadcrumb a, .breadcrumb span {
               text-transform: capitalize; }
            .breadcrumb a {
               color: #324148;
               opacity: .5;
               -webkit-transition: 0.3s ease;
               -moz-transition: 0.3s ease;
               transition: 0.3s ease; }
               .breadcrumb a:hover {
                  opacity: 1; }
            .breadcrumb span {
               color: #324148; }

            .breadcrumb > li + li::before {
            color: #324148;
            opacity: .5;
            font-family: FontAwesome;
            content: "\f105";
            padding: 0 9px; }

      </style>

   </head>
   <body>
      <!-- loader Start -->
      <div id="loading">
         <div id="loading-center">
         </div>
      </div>
      <!-- loader END -->
      <!-- Wrapper Start -->
      <div class="wrapper">

      <!-- Sidebar  -->
      <?php $this->load->view("inc/nav-template");?>


         <!-- Page Content  -->
         <div id="content-page" class="content-page">
            <!-- TOP Nav Bar -->
            <?php $this->load->view("inc/nav-top-template");?>
            <!-- TOP Nav Bar END -->
            <div class="container-fluid">
                 
                  <div class="row">
                     <div class="col-12">
                        <div class="row">
                           <div class="col-12">
                              <div class="iq-card my-4 py-4 px-4">
                                 <div class="iq-card-header row">
                                    <div class="col-lg-8 col-md-4 col-sm-4 col-xs-12">
                                       <h4 class="txt-dark"><?=$titulo?></h4>
                                    </div>
                                    <div class="col-lg-4 col-sm-8 col-md-8 col-xs-12">
                                       <ol class="breadcrumb">
                                       <li><a href="<?=base_url()?>">Inicio</a></li>
                                       <li><a href="<?=base_url()?>tablas/main"><span>Tablas padre</span></a></li>
                                       <li class="active"><span>Lista</span></li>
                                       </ol>
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
                                                   <th class="text-center">Descripción y/o Función Tabla</th>
                                                   <th class="text-center">Nombre de Tabla BD</th>
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
                                          </tbody>
                                             </table>
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
                  </div>
              
            </div>

            <!-- Footer -->
            <?php $this->load->view("inc/footer-template");?>
            <!-- Footer END -->
         </div>

      </div>

      <?php $this->load->view("inc/resource-template");?>
      <script>
         const tablaListar = $('#tbListar').DataTable({
            dom:'<"row mb-2"f>rt',
         });
      </script>
   </body>
</html>
