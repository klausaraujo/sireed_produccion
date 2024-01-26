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

  <?php $titulo = "Carga de inventario"; ?>
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
              <form id="formCargar" method="post" action="" autocomplete="off" enctype="multipart/form-data">
                <div class="row">
                  <div class="col-6">
                    <div class="form-group row">
                      <label class="modal-label col-sm-5 col-form-label py-10">Archivo xls</label>
                      <div class="col-sm-7">
                        <input required type="file" name="file[]" id="ficha" class="inputfile inputfile-1"
                               data-multiple-caption="{count} files selected" multiple/>
                        <label for="ficha"><i class="fa fa-upload" aria-hidden="true"></i> <span class="custom-file">Seleccionar archivo xls &hellip;</span></label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-6">
                    <div class="form-group row">
                      <button type="submit" name="cargar" class="btn btn-primary right">Cargar</button>
                    </div>
                  </div>
                </div>

              </form>
            </div>
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
