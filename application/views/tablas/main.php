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
      <!--<link rel="stylesheet" href="<?=base_url()?>public/css/jquery.dataTables.min.css">
      <link rel="stylesheet" href="<?=base_url()?>public/css/datatables.min.css">-->
      <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css"/>
      <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.bootstrap4.min.css"/>
      <link rel="stylesheet" href="<?=base_url()?>public/css/jquery.dataTables.min.css">
      <?php  /*$this->load->view('inc/resources');*/?>

<!--<script src="https://cdn.pubnub.com/sdk/javascript/pubnub.4.21.7.js"></script>-->

      <style>         
         /*Modals*/
        .modal-dialog .modal-content {
        border-radius: 0;
        border: none; }
        .modal-dialog .modal-footer {
        border: none; }

        .dataTables_wrapper .dataTables_paginate .paginate_button a { color: rgb(34 98 104); padding: 4px }
        .dataTables_wrapper .dataTables_paginate .paginate_button a:hover { color: #000; }
        .dataTables_wrapper .dataTables_paginate .paginate_button:hover {
            color: #000;
            border: 1px solid rgb(252 158 91);
            background: rgba(8, 155, 171, 1);
            background: -moz-linear-gradient(left, rgba(8, 155, 171, 1) 0%, rgba(13, 181, 200, 1) 100%);
            background: -webkit-gradient(left top, right top, color-stop(0%, rgba(8, 155, 171, 1)), color-stop(100%, rgba(13, 181, 200, 1)));
            background: -webkit-linear-gradient(left, rgba(8, 155, 171, 1) 0%, rgba(13, 181, 200, 1) 100%);
            background: -o-linear-gradient(left, rgba(8, 155, 171, 1) 0%, rgba(13, 181, 200, 1) 100%);
            background: -ms-linear-gradient(left, rgba(8, 155, 171, 1) 0%, rgba(13, 181, 200, 1) 100%);
            background: linear-gradient(to right, rgba(8, 155, 171, 1) 0%, rgba(13, 181, 200, 1) 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#089bab', endColorstr='#0db5c8', GradientType=1);
            border-color: #089bab;
        }
        .dt-buttons .btn{ background: #b1a8a8; border-radius:0;margin-right: 3px; color:#fff }

         /*.wrapper{     background: rgba(8, 155, 171, 1);
            background: -moz-linear-gradient(left, rgba(8, 155, 171, 1) 0%, rgba(13, 181, 200, 1) 100%);
            background: -webkit-gradient(left top, right top, color-stop(0%, rgba(8, 155, 171, 1)), color-stop(100%, rgba(13, 181, 200, 1)));
            background: -webkit-linear-gradient(left, rgba(8, 155, 171, 1) 0%, rgba(13, 181, 200, 1) 100%);
            background: -o-linear-gradient(left, rgba(8, 155, 171, 1) 0%, rgba(13, 181, 200, 1) 100%);
            background: -ms-linear-gradient(left, rgba(8, 155, 171, 1) 0%, rgba(13, 181, 200, 1) 100%);
            background: linear-gradient(to right, rgba(8, 155, 171, 1) 0%, rgba(13, 181, 200, 1) 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#089bab', endColorstr='#0db5c8', GradientType=1); }*/
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
            .iq-footer{ margin:0 }
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
                           <?php if($this->uri->segment(1) === 'tablas' && $this->uri->segment(2) == ''){
                                    $this->load->view('tablas/tablas_padre');
                                }elseif($this->uri->segment(1) === 'tablas' && $this->uri->segment(3) === 'evento'){
                                    $this->load->view('tablas/eventos');
                                }elseif($this->uri->segment(1) === 'tablas' && $this->uri->segment(3) === 'evento_detalle'){
                                    $this->load->view('tablas/eventosDetalle');
                                }elseif($this->uri->segment(1) === 'tablas' && $this->uri->segment(3) === 'evento_fuente'){
                                    $this->load->view('tablas/fuente');
                                }elseif($this->uri->segment(1) === 'tablas' && $this->uri->segment(3) === 'tipo_accion_entidad'){
                                    $this->load->view('tablas/tipoAccionEntidad');
                                }elseif($this->uri->segment(1) === 'tablas' && $this->uri->segment(3) === 'tipo_accion'){
                                    $this->load->view('tablas/tipoAccion');
                                }elseif($this->uri->segment(1) === 'tablas' && $this->uri->segment(3) === 'perfiles'){
                                    $this->load->view('tablas/perfiles');
                                }elseif($this->uri->segment(1) === 'tablas' && $this->uri->segment(3) === 'perfilModulos'){
                                    $this->load->view('tablas/perfilModulos');
                                }?>
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
      <?php if($this->uri->segment(1) === 'tablas' && $this->uri->segment(2) == ''){?>
      <script>
         const tablaListar = $('#tbListar').DataTable({
            dom:'<"row mb-2"f>rt',
         });
      </script>
      <?php }elseif($this->uri->segment(1) === 'tablas' && $this->uri->segment(3) === 'evento'){?>
        <script src="<?=base_url()?>public/js/tablas/eventos.js?v=<?=date("s")?>"></script>
        <script>
            eventos("<?=base_url()?>");
        </script>
      <?php }elseif($this->uri->segment(1) === 'tablas' && $this->uri->segment(3) === 'evento_detalle'){?>
      <?php }elseif($this->uri->segment(1) === 'tablas' && $this->uri->segment(3) === 'evento_fuente'){?>
      <?php }elseif($this->uri->segment(1) === 'tablas' && $this->uri->segment(3) === 'tipo_accion_entidad'){?>
      <?php }elseif($this->uri->segment(1) === 'tablas' && $this->uri->segment(3) === 'tipo_accion'){?>
      <?php }elseif($this->uri->segment(1) === 'tablas' && $this->uri->segment(3) === 'perfiles'){?>
      <?php }elseif($this->uri->segment(1) === 'tablas' && $this->uri->segment(3) === 'perfilModulos'){?>
      <?php }?>
   </body>
</html>