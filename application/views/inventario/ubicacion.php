<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title><?= TITULO_PRINCIPAL ?></title>
  <meta name="author" content="<?= AUTOR ?>">

  <!-- Favicon -->
  <link rel="shortcut icon" href="<?= base_url() ?>public/images/favicon.jpg">
  <link rel="icon" href="<?= base_url() ?>public/images/favicon.jpg" type="image/x-icon">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="<?= base_url() ?>public/template/css/bootstrap.min.css">
  <!-- Typography CSS -->
  <link rel="stylesheet" href="<?= base_url() ?>public/template/css/typography.css">
  <!-- Style CSS -->
  <link rel="stylesheet" href="<?= base_url() ?>public/template/css/style.css">
  <!-- Responsive CSS -->
  <link rel="stylesheet" href="<?= base_url() ?>public/template/css/responsive.css">
  <!-- Data table CSS -->
  <?php echo link_tag("public/css/mapa.css"); ?>


  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css"/>
  <link rel="stylesheet" type="text/css"
        href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.bootstrap4.min.css"/>
  <link rel="stylesheet" href="<?= base_url() ?>public/css/inventario/main.css"/>

  <?php $titulo = "Ubicación de bienes"; ?>
  <?php $opciones = $this->session->userdata("Permisos_Opcion"); ?>

</head>
<body>
<div id="loading">
  <div id="loading-center">
  </div>
</div>
<div class="wrapper">
  <?php $this->load->view("inc/nav-template"); ?>


  <!-- Page Content  -->
  <div id="content-page" class="content-page">
    <?php $this->load->view("inc/nav-top-template"); ?>
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
                <h4 class="card-title"><?= $titulo ?></h4>
              </div>
            </div>
            <div class="iq-card-body">
              <form id="formUbicacion" method="post" action="" autocomplete="off" enctype="multipart/form-data">
                <div class="row">
                  <div class="col-4">
                    <div class="form-group">
                      <div class="">
                        <input value="<?php if(isset($_REQUEST['codigo_patrimonial'])) echo $_REQUEST['codigo_patrimonial']; ?>" type="text" name="codigo_patrimonial" id="codigo_patrimonial" class="form-control"/>
                        <label for="codigo_patrimonial"><i class="fa fa-search" aria-hidden="true"></i> <span class="custom-file">CÓDIGO PATRIMONIAL</span></label>
                      </div>
                    </div>
                  </div>
                  <div class="col-4">
                    <div class="form-group">
                      <div class="">
                        <input value="<?php if(isset($_REQUEST['region'])) echo $_REQUEST['region']; ?>" type="text" name="region" id="region" class="form-control"/>
                        <label for="region"><i class="fa fa-search" aria-hidden="true"></i> <span class="custom-file">REGIÓN</span></label>
                      </div>
                    </div>
                  </div>
                  <div class="col-6">
                    <div class="form-group">
                      <div class="">
                        <input value="<?php if(isset($_REQUEST['lugar_desplazamiento'])) echo $_REQUEST['lugar_desplazamiento']; ?>" type="text" name="lugar_desplazamiento" id="lugar_desplazamiento" class="form-control"/>
                        <label for="lugar_desplazamiento"><i class="fa fa-search" aria-hidden="true"></i> <span class="custom-file">LUGAR DE DESPLAZAMIENTO</span></label>
                      </div>
                    </div>
                  </div>
                  <div class="col-6">
                    <div class="form-group">
                      <div class="">
                        <input value="<?php if(isset($_REQUEST['descripcion'])) echo $_REQUEST['descripcion']; ?>" type="text" name="descripcion" id="descripcion" class="form-control"/>
                        <label for="descripcion"><i class="fa fa-search" aria-hidden="true"></i> <span class="custom-file">DESCRIPCIÓN DEL BIEN</span></label>
                      </div>
                    </div>
                  </div>
                  <div class="col-4">
                    <div class="form-group">
                      <div class="">
                        <input value="<?php if(isset($_REQUEST['acta'])) echo $_REQUEST['acta']; ?>" type="text" name="acta" id="acta" class="form-control"/>
                        <label for="acta"><i class="fa fa-search" aria-hidden="true"></i> <span class="custom-file">Nª ACTA</span></label>
                      </div>
                    </div>
                  </div>

                </div>
                <div class="row">
                  <div class="col-6">
                    <div class="form-group row">
                      <button type="submit" name="buscar" class="btn btn-primary right">Buscar</button>
                    </div>
                  </div>
                </div>

              </form>
            </div>
            <?php if(!is_array($inventario)){
              $inventario = json_decode($inventario); ?>

            <div class="iq-card-body">
              <table class="table table-striped">
                <thead>
                <tr>
                  <th>Nro.</th>
                  <th>Descripción</th>
                  <th>Marca</th>
                  <th>Modelo</th>
                  <th>Código patrimonial</th>
                  <th>Región</th>
                  <th>Lugar de desplazamiento</th>
                  <th>Nª Acta</th>
                  <th>Fecha traslado</th>
                  <th>Mantenimiento</th>
                  <th>Tipo mantenimiento</th>
                  <th>Observación mantenimiento</th>
                </tr>
                </thead>
                <tbody>
                <?php  $i=0; foreach($inventario as $item){ $i++ ?>
                  <tr>
                    <td><?php echo $i; ?></td>
                    <td><?php echo $item->descripción; ?></td>
                    <td><?php echo $item->marca; ?></td>
                    <td><?php echo $item->modelo; ?></td>
                    <td><?php echo $item->codigo_patrimonial; ?></td>
                    <td><?php echo $item->region; ?></td>
                    <td><?php echo $item->lugar_desplazamiento; ?></td>
                    <td><?php echo $item->acta; ?></td>
                    <td><?php
                      if($item->fecha_traslado>0) {
                        $UNIX_DATE = ($item->fecha_traslado - 25569) * 86400;
                        echo gmdate("d/m/Y", $UNIX_DATE);
                      }
                       ?></td>
                    <td><?php echo $item->mantenimiento; ?></td>
                    <td><?php echo $item->tipo_mantenimiento; ?></td>
                    <td><?php echo $item->observacion_mantenimiento; ?></td>
                  </tr>
                <?php } ?>
                </tbody>
              </table>
            </div>
            <?php } ?>
          </div>
        </div>
      </div>
      <?php $this->load->view("inc/footer-template"); ?>
      <script src="<?= base_url() ?>public/js/moment.min.js"></script>
      <script src="<?= base_url() ?>public/js/locale.es.js"></script>
    </div>

  </div>

  <?php $this->load->view("inc/resource-template"); ?>
  <script>
    var URI_MAP = "<?=base_url()?>";
    var lista = JSON.parse('<?=$listaAlmacenes?>');
    var generalZoom = 13;
  </script>
  <script src="<?= base_url() ?>public/js/inventarios/initMap.js"></script>
  <script src="<?= base_url() ?>public/js/inventarios/almacenes.js?v=<?= date(" his") ?>"></script>
  <script src="http://maps.googleapis.com/maps/api/js?key=<?= getenv('MAP_KEY') ?>&libraries=places&callback=initMap"
          async defer></script>

</body>
</html>
