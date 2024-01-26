<!-- <!doctype html>
<html lang="es">
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>Ministerio de Salud</title>
	<link rel="shortcut icon" type="image/png" href="<?=base_url()?>public/images/favicon.jpg"/>
	<?php echo link_tag("public/css/font-awesome.min.css"); ?>
	<?php echo link_tag("public/css/bootstrap.min.css"); ?>
	<?php echo link_tag("public/css/login.css"); ?>

</head>
<body>

<section id="login">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 login-content">
				<div class="form-wrap">
				<h2>Ingreso al sistema. Inicia Sesi&oacute;n</h2>
				<img class="logo-header" src="<?php echo base_url('public/images/login-icon.png'); ?>" alt="Minsa" />
					<form role="form" action="<?=base_url()?>doLogin" method="post" id="login-form">
						<div class="bordered-input form-group">
							<input type="text" name="usuario" id="usuario" class="form-control box" required=""
							value="<?=($this->session->userdata('usuarioError')!=null)?$this->session->userdata('usuarioError'):""?>" autocomplete="off" />
								<span for="usuario">Usuario</span>
						</div>
						<div class="bordered-input form-group">
							<input type="password" name="key" id="key" class="form-control box" required=""	autocomplete="new-password" />
								<span for="key">Contrase&ntilde;a</span>
						</div>
						<button type="submit" id="btn-login" class="btn btn-custom btn-lg btn-block">Iniciar Sesi&oacute;n</button>
						<?php
						if($this->session->userdata('error_session')!=null) echo "<div class='text-center'>".$this->session->userdata('error_session')."</div>";
						?>
					</form>

					<?php $message = $this->session->flashdata('loginError'); ?>
	                <?php if($message){ ?>
	                    <p style="color:#dc8b89;margin:auto;text-align:center;"><?= $message ?></p>
	                <?php } ?>

				</div>
	                <div class="clearfix"></div>
	                <div class="logo-footer pull-center">
	                	<img src="<?=base_url()?>public/images/logo.jpg" />
	                </div>
			</div>
		</div>
	</div>
</section>


<script src="<?=base_url()?>public/js/jquery.min.js"></script>
<script src="<?=base_url()?>public/js/bootstrap.min.js"></script>
<script src="<?=base_url()?>public/js/jquery.validate.min.js"></script>
<script src="<?=base_url()?>public/js/additional-methods.min.js"></script>
<script src="<?=base_url()?>public/js/login.js?v=<?=date("is")?>"></script>

</body>
</html> -->


<!doctype html>
<html lang="en">
   <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>Ministerio de Salud</title>
      <!-- Favicon -->
      <link rel="shortcut icon" type="image/png" href="<?=base_url()?>public/images/favicon.jpg"/>
      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="<?=base_url()?>public/template/css/bootstrap.min.css">
      <!-- Typography CSS -->
      <link rel="stylesheet" href="<?=base_url()?>public/template/css/typography.css">
      <!-- Style CSS -->
      <link rel="stylesheet" href="<?=base_url()?>public/template/css/style.css">
      <!-- Responsive CSS -->
      <link rel="stylesheet" href="<?=base_url()?>public/template/css/responsive.css">
	  <!-- <?php echo link_tag("public/css/login.css"); ?> -->
   </head>
   <body style="background-color:#244B5A;">
      <!-- loader Start -->
      <div id="loading">
         <div id="loading-center">
		</div>
      </div>
      <!-- loader END -->
        <!-- Sign in Start -->
        <section class="sign-in-page" style="margin:-50px">
            <div class="container sign-in-page-bg mt-5 p-0">
                <div class="row no-gutters">
                    <div class="col-md-6 text-center">
                        <div class="sign-in-detail text-white">
                            <a class="sign-in-logo mb-3" href="http://www.minsa.gob.pe/digerd/"><img style="width:700px; height:250px" src="<?php echo base_url('public/images/logo-white.png'); ?>" alt="Minsa" class="img-fluid"  ></a>
                            <div class="owl-carousel" data-autoplay="true" data-loop="true" data-nav="false" data-dots="true" data-items="1" data-items-laptop="1" data-items-tab="1" data-items-mobile="1" data-items-mobile-sm="1" data-margin="0">
                                <div class="item">
                                    <img src="<?=base_url()?>public/template/images/login/1.png" class="img-fluid mb-4" alt="logo">
                                    <h4 class="mb-1 text-white">HOSPITAL MÓVIL REGIÓN CUSCO</h4>
                                    <p>Se realizó el despliegue de una oferta móvil en la Región de Cusco, para la atención directa de casos positivos por COVID-19</p>
                                </div>
                                <div class="item">
                                    <img src="<?=base_url()?>public/template/images/login/2.png" class="img-fluid mb-4" alt="logo">
                                    <h4 class="mb-1 text-white">OFERTA MÓVIL INSTALADA EN CARABAYLLO</h4>
                                    <p>La oferta móvil busca cubrir la demanda de atenciones del distrito de Carabayllo para descarte de casos positivos por COVID-19.</p>
                                </div>
                                <div class="item">
                                    <img src="<?=base_url()?>public/template/images/login/3.png" class="img-fluid mb-4" alt="logo">
                                    <h4 class="mb-1 text-white">EMERGENCIA EN VILLA EL SALVADOR</h4>
                                    <p>La Digerd atendió de manera íntegra y directa a las personas afectadas por el accidente generado por la explosión de una cisterna de gas.</p>
								</div>
								<div class="item">
                                    <img src="<?=base_url()?>public/template/images/login/4.png" class="img-fluid mb-4" alt="logo">
                                    <h4 class="mb-1 text-white">ATENCIÓN DE EMERGENCIA POR HUAYCO EN LA REGIÓN AYACUCHO</h4>
                                    <p>Brigadistas de la DIGERD llegan a la zona afectada para el reconocimiento de la situación y la atención a las personas afectadas.</p>
								</div>
								<div class="item">
                                    <img src="<?=base_url()?>public/template/images/login/5.png" class="img-fluid mb-4" alt="logo">
                                    <h4 class="mb-1 text-white">OFERTA MÓVIL POR HUAYCO EN REGIÓN TACNA</h4>
                                    <p>Se instalaron tiendas de campaña para la atención de personas afectadas por el huayco desatado en la región de Tacna.</p>
                                </div>
                                <div class="item">
                                    <img src="<?=base_url()?>public/template/images/login/6.png" class="img-fluid mb-4" alt="logo">
                                    <h4 class="mb-1 text-white">SIMULACRO DE ATENCIÓN DE POSIBLES CASOS POR COVID-19</h4>
                                    <p>De manera preventiva, se realizaron distintos simulacros para mejorar la atención a casos positivos por COVID-19.</p>
                                </div>
                                <div class="item">
                                    <img src="<?=base_url()?>public/template/images/login/7.png" class="img-fluid mb-4" alt="logo">
                                    <h4 class="mb-1 text-white">HOSPITAL MÓVIL DESPLEGADO EN AEROPUERTO JORGE CHÁVEZ</h4>
                                    <p>El hospital móvil instalado en el Aeropuerto Internacional Jorge Chávez fue el primero desplegado a nivel nacional para atención de posibles casos por COVID-19 en el país.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 position-relative">
                        <div class="sign-in-from">
                            <h1 class="mb-0">Iniciar Sesión</h1>
                            <p>Ingrese su Usuario y Clave para ingresar al Tablero de Control..</p>
                            <form class="mt-4" action="<?=base_url()?>doLogin" method="post" id="login-form">
                                <div class="form-group">
                                    <label for="usuario">Usuario</label>
                                    <input type="text" class="form-control mb-0" id="usuario" name="usuario" placeholder="Ingrese su usuario" 
									value="<?=($this->session->userdata('usuarioError')!=null)?$this->session->userdata('usuarioError'):""?>" autocomplete="off" >
                                </div>
                                <div class="form-group">
                                    <label for="key">Contraseña</label>
                                    <!-- <a href="#" class="float-right">Forgot password?</a> -->
                                    <input type="password" class="form-control mb-0" name="key" id="key" placeholder="Ingrese su contraseña" autocomplete="new-password" >
                                </div>
                                <div class="d-inline-block w-100">
                                    <!-- <div class="custom-control custom-checkbox d-inline-block mt-2 pt-1">
                                        <input type="checkbox" class="custom-control-input" id="customCheck1">
                                        <label class="custom-control-label" for="customCheck1">Remember Me</label>
                                    </div> -->
                                    <button type="submit" class="btn btn-primary float-right">Iniciar Sesi&oacute;n </button>
									<?php
									if($this->session->userdata('error_session')!=null) echo "<div class='text-center'>".$this->session->userdata('error_session')."</div>";
									?>
                                </div>
                                <div class="sign-info">
								Acceso directo a nuestras Redes Sociales
								
                                    <!-- <span class="dark-color d-inline-block line-height-2">Don't have an account? <a href="#">Sign up</a></span> -->
                                    <ul class="iq-social-media">
									

                                        <li><a href="#"><i class="ri-facebook-box-line"></i></a></li>
                                       
                                        <li><a href="#"><i class="ri-instagram-line"></i></a></li>
                                    </ul>
                                </div>
                            </form>

							<?php $message = $this->session->flashdata('loginError'); ?>
							<?php if($message){ ?>
								<p style="color:#dc8b89;margin:auto;text-align:center;"><?= $message ?></p>
							<?php } ?>

							<br/>
							<br/><br/>

							<div class="media" style="width: 100%;">
								<img class="align-self-end  " src="<?=base_url()?>public/images/logo.jpg" 
								style="width: auto;height: 70px;margin: 0 auto;" />
							</div>
 
                        </div>
												
                    </div>
                </div>
            </div>
        </section>
        <!-- Sign in END -->
      <!-- Optional JavaScript -->
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <script src="<?=base_url()?>public/template/js/jquery.min.js"></script>
      <script src="<?=base_url()?>public/template/js/popper.min.js"></script>
      <script src="<?=base_url()?>public/template/js/bootstrap.min.js"></script>
      <!-- Appear JavaScript -->
      <script src="<?=base_url()?>public/template/js/jquery.appear.js"></script>
      <!-- Countdown JavaScript -->
      <!-- <script src="<?=base_url()?>public/template/js/countdown.min.js"></script> -->
      <!-- Counterup JavaScript -->
      <script src="<?=base_url()?>public/template/js/waypoints.min.js"></script>
      <script src="<?=base_url()?>public/template/js/jquery.counterup.min.js"></script>
      <!-- Wow JavaScript -->
      <script src="<?=base_url()?>public/template/js/wow.min.js"></script>
      <!-- Apexcharts JavaScript -->
      <!-- <script src="<?=base_url()?>public/template/js/apexcharts.js"></script> -->
      <!-- Slick JavaScript -->
      <script src="<?=base_url()?>public/template/js/slick.min.js"></script>
      <!-- Select2 JavaScript -->
      <script src="<?=base_url()?>public/template/js/select2.min.js"></script>
      <!-- Owl Carousel JavaScript -->
      <script src="<?=base_url()?>public/template/js/owl.carousel.min.js"></script>
      <!-- Magnific Popup JavaScript -->
      <script src="<?=base_url()?>public/template/js/jquery.magnific-popup.min.js"></script>
      <!-- Smooth Scrollbar JavaScript -->
      <script src="<?=base_url()?>public/template/js/smooth-scrollbar.js"></script>
      <!-- Chart Custom JavaScript -->
      <!-- <script src="<?=base_url()?>public/template/js/chart-custom.js"></script> -->
      <!-- Custom JavaScript -->
      <script src="<?=base_url()?>public/template/js/custom.js"></script>


	  <script src="<?=base_url()?>public/js/jquery.validate.min.js"></script>
	  <script src="<?=base_url()?>public/js/login.js?v=<?=date("is")?>"></script>
   </body>
</html>