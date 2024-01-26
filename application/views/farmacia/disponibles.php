<!doctype html>
<html lang="en">
   <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title><?=TITULO_PRINCIPAL?></title>
      <meta name="author" content="<?=AUTOR?>">

      <!-- Favicon -->
      <link rel="shortcut icon" href="<?=base_url()?>public/images/favicon.jpg">
      <link rel="icon" href="<?=base_url()?>public/images/favicon.jpg" type="image/x-icon">
      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="<?=base_url()?>public/template/css/bootstrap.min.css">
      <!-- Typography CSS -->
      <link rel="stylesheet" href="<?=base_url()?>public/template/css/typography.css">
      <!-- Style CSS -->
      <link rel="stylesheet" href="<?=base_url()?>public/template/css/style.css">
      <!-- Responsive CSS -->
      <link rel="stylesheet" href="<?=base_url()?>public/template/css/responsive.css">
      <!-- Data table CSS -->
      <!-- <link href="<?=base_url()?>public/css/datatables.min.css" rel="stylesheet" type="text/css"> -->

      <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css"/>
      <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.bootstrap4.min.css"/>
 
      <?php
      $titulo = "Productos Farmacéuticos, Equipos de Protección Personal y Material Médico Disponibles al momento (En Stock)";
      ?>
      <style>
         .half-rule {
         margin-left: 0;
         text-align: left;
         width: 50%;
         }
         .statis {
            color: #EEE;
            margin-top: 15px;
         }
         h3 {
            color: #EEE;
            font-size: 20px;
         }
         .statis .box {
            position: relative;
            padding: 15px;
            overflow: hidden;
            border-radius: 3px;
            margin-bottom: 25px;
         }
         .statis .box h3:after {
            content: "";
            height: 2px;
            width: 70%;
            margin: auto;
            background-color: rgba(255, 255, 255, 0.12);
            display: block;
            margin-top: 10px;
         }
         .statis .box i {
            position: absolute;
            height: 70px;
            width: 70px;
            font-size: 22px;
            padding: 15px;
            top: -25px;
            left: -25px;
            background-color: rgba(255, 255, 255, 0.15);
            line-height: 60px;
            text-align: right;
            border-radius: 50%;
         }
         .warning {background-color: #f0ad4e}
         .danger {background-color: #d9534f}
         .success {background-color: #5cb85c}
         .inf {background-color: #5bc0de}
      </style>
      <link rel="stylesheet" href="<?=base_url()?>public/css/tablero/gestionarTablero.css?v=<?=date(" s")?>" />
      <?php $opciones = $this->session->userdata("Permisos_Opcion");?>

   </head>
   <body>
      <div id="loading">
         <div id="loading-center">
         </div>
      </div>
      <div class="wrapper">
        <?php $this->load->view("inc/nav-template");?>


         <!-- Page Content  -->
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
                           <div class="table-responsive">
                              <table id="dt-select" class="table table-striped table-bordered">
                                 <thead>
                                  <tr>
                                    <th>SIGA</th>
                                    <th>Artículo</th>
                                    <th>Categoría</th>
                                    <th>Lote</th>
                                    <th>Expira</th>
                                    <th>Stock</th>
                                    <th>Ubicación</th>
                                  </tr>
                                 </thead>
                              </table>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>

            <?php $this->load->view("inc/footer-template");?>
            <script src="<?=base_url()?>public/js/moment.min.js"></script>
            <script src="<?=base_url()?>public/js/locale.es.js"></script>
         </div>

      </div>

      <script src="<?=base_url()?>public/template/js/jquery.min.js"></script>
      <script src="<?=base_url()?>public/template/js/popper.min.js"></script>
      <script src="<?=base_url()?>public/template/js/bootstrap.min.js"></script>

      <script src="<?=base_url()?>public/template/js/jquery.appear.js"></script>
      
      <script src="<?=base_url()?>public/template/js/countdown.min.js"></script>
      
      <script src="<?=base_url()?>public/template/js/waypoints.min.js"></script>
      <script src="<?=base_url()?>public/template/js/jquery.counterup.min.js"></script>
      
      <script src="<?=base_url()?>public/template/js/wow.min.js"></script>
      
      <script src="<?=base_url()?>public/template/js/apexcharts.js"></script>
   
      <script src="<?=base_url()?>public/template/js/slick.min.js"></script>
      
      <script src="<?=base_url()?>public/template/js/select2.min.js"></script>
      
      <script src="<?=base_url()?>public/template/js/owl.carousel.min.js"></script>
      
      <script src="<?=base_url()?>public/template/js/jquery.magnific-popup.min.js"></script>
      
      <script src="<?=base_url()?>public/template/js/smooth-scrollbar.js"></script>
      
      <script src="<?=base_url()?>public/template/js/lottie.js"></script>
      
      <script src="<?=base_url()?>public/template/js/chart-custom.js"></script>
      
      <script src="<?=base_url()?>public/template/js/custom.js"></script>
      <script src="<?=base_url()?>public/js/echarts-en.min.js"></script>

      <?php $this->load->view("inc/resource-template");?>
      <script src="<?=base_url()?>public/js/jquery.validate.min.js"></script>

      <script src="<?=base_url()?>public/js/circles.js"></script>
      <script src="<?=base_url()?>public/js/bootstrap-datetimepicker.min.js"></script>

      <script>
        var lista = JSON.parse('<?=$lista?>');
      </script>
      <script src="<?=base_url()?>public/js/farmacia/disponibles.js?v=<?=date(" his")?>"></script>


   </body>
</html>