<html>
    <head>
        <style>
    /** 
        Set the margins of the page to 0, so the footer and the header
        can be of the full height and width !
     **/
    @page {
        margin: 0cm 0cm;
    }			

    /** Define now the real margins of every page in the PDF **/
    body {
        margin-top: 2cm;
        margin-left: 2cm;
        margin-right: 2cm;
        margin-bottom: 3.2cm;
		font-family: Helvetica;
    }

    /** Define the header rules **/
    header {
        position: fixed;
        top: 0.5cm;
        left: 0.5cm;
        right: 0cm;
        height: 50px;
		width: 100%;
    }

    /** Define the footer rules **/
    footer {
        position: fixed; 
        bottom: 1cm; 
        left: 0.5cm; 
        right: 0cm;
        height: 50px;
		width: 100%;
    }

    .tabla_ubicacion .pdf_tabla-firmas{
      color: #000000;
      background: #FFFFFF
    }
			
		.vertical {
			border-right: 2px solid #df5e5e;
			height: 50px;
		}


.titulo{
	margin:0 0 10px 0;
	font-size:17px;
	text-decoration:underline;
	text-align:center;
	color:#373643;
	font-weight:bold;
	text-transform:uppercase!important;
}

.complementario{
	margin:5px 0 0 0;
	font-size:15px;
	text-transform:uppercase;
	color:#373643;
	font-weight:400;
	text-align:center;
	text-transform:uppercase!important;
}

.fecha{margin:5px;font-size:16px;color:#373643;font-weight:400;text-align:center;}
.tabla_ubicacion,.tabla_sismo{
  width: 100%;text-align:center;text-transform:uppercase!important;font-size: 11px;font-family: Helvetica;}
.tabla_ubicacion th,.tabla_sismo th{
  text-transform: capitalize;border:0.5px solid #000000;color:#FFFFFF;background:#477de0;padding:5px;font-weight: 400;}
.tabla_sismo th{background:#CCC;font-weight: 400;}
.tabla_ubicacion td,.tabla_sismo td{border:0.5px solid #000000;padding:5px;}

.tabla_pacientes{text-align:center;width:300pt;text-transform:uppercase!important;font-size: 11px;font-family: Helvetica;}
.tabla_pacientes th{border:0.5px solid #000000;color:#FFFFFF;background:#477de0;padding:5px;font-size:11px;font-weight: 400;}
.tabla_pacientes td{border:0.5px solid #000000;padding:5px;font-size:11px;}

.tabla_fallecidos{margin:auto;text-align:center;font-size: 11px;font-family: Helvetica;}
.tabla_fallecidos th{border:0.5px solid #000000;color:#FFFFFF;background:#477de0;padding:5px;font-weight: 400;}
.tabla_fallecidos td{border:0.5px solid #000000;padding:5px;}
.tabla_fallecidos th.alternativo{background:#7AAEe4;}

.tabla_observaciones{margin:auto;text-align:center;font-size: 11px;font-family: Helvetica;}
.tabla_observaciones th{border:0.5px solid #000000;color:#FFFFFF;background:#477de0;padding:5px;font-weight: 400;}
.tabla_observaciones td{border:0.5px solid #000000;padding:5px;}

.lesionados{width: 100%;padding:0;border:0px;text-transform:uppercase!important;font-size: 11px;font-family: Helvetica;}
.lesionados th{border:0px;padding:1px 5px;text-transform:uppercase!important;font-weight: 400;}
.lesionados td{border:0px;padding:1px 5px;text-transform:uppercase!important;}
.movilizados{margin-left: 20px;padding:1px 5px;border:0px;text-transform:uppercase!important;font-size: 11px;font-family: Helvetica;}
.movilizados th{border:0px;padding:1px 5px;text-align:left;text-transform:uppercase!important;font-weight: 400;}

.tabla_acciones { margin-bottom: 5px;font-family: Helvetica;}
.tabla_acciones .acciones_content {margin-bottom: 10px;font-size: 11px;}
.tabla_acciones .acciones-cabecera{padding: 2px 10px 2px 10px;font-weight: bold;text-align: left;font-size:11px;background:#CDDFF8;font-weight: 400;}
.tabla_acciones .acciones-descripcion{padding: 2px 10px 10px 10px;font-size:11px;text-align: justify;}

.galeria{margin:auto;width:404px;text-transform:uppercase!important;}

.bold{font-weight:bold;}


.pdf__table th{
  text-transform: capitalize;
  border:0.5px solid #000000;
  color:#FFFFFF;
  background:#477de0;
  padding:5px;
  font-weight: 400;
}

.pdf_tabla-firmas td{
  height: 160px;
  vertical-align: bottom;
}

.pdf__span {
  font-size:12px;
  text-align:justify;
  width: 100%;
  border: 0.5px solid black;
  padding: 5px 10px;
  margin-top: 5px;
}

.pdf__row h6{
  /* border: 3px solid red; */
  margin: 0 !important;
}

 .footer-margin {
    margin: 1px 1px 3px 1px;
 }
* {
    text-transform: uppercase;
}
        </style>
    </head>
    <?php

    function obtenerFecha($fecha, $tipo){
      $valor ="";
      switch($tipo) {
          case 0: $valor= explode('/',$fecha)[0];;break;
          case 1: $valor= explode('/',$fecha)[1];;break;
          case 2: $valor= explode('/',$fecha)[2];;break;
      }
        return $valor;
    }
    
    function obtenerNumero($numero){
      return sprintf("%04s", $numero);
    }

    ?>
    <body>
		  <header>
        <table cellspacing="0" style="width: 100%;font-size: 9px;height: 50px;border-top:0.0px solid #AAA;">
          <tr>
            <td style="padding-top: 0px;width: 40%" rowspan="2">
              <img src="<?=base_url()?>public/images/patrimonio.png" border="0" width="350" />
            </td>
            <td style="padding-top: 0px;text-align:center;width: 60%;font-weight:bold">
              <?=$detalleAnio->anio_nombre_principal?>
            </td>
          </tr>
          <tr>
            <td style="padding-top: 0px;text-align:center;width: 60%;font-weight:bold">
              <?=$detalleAnio->anio_nombre_secundario?>
            </td>
          </tr>
        </table>
      </header>
      <footer>
          <table cellspacing="0" style="width: 100%;font-size: 10px;height: 50px;border-top:0.5px solid #AAA;">
          <tr>
            <td style="padding: 0 80px;">
              DIRECTIVA N° 059 • MINSA - V.02 “DIRECTIVA ADMINISTRATIVA PARA LA ASIGNACION EN USO Y CONTROL DE BIENES MUEBLES PATRIMONIALES DEL MINISTERIO DE SALUD”
            </td>
          </tr>
          </table>
      </footer>

        <!-- Wrap the content of your PDF inside a main tag -->
      <main>

			<table cellpadding="0" cellspacing="0" class="tabla_ubicacion" style="position:relative; margin-left:auto; right:0; width: 30%;">
        <thead>
          <tr>
            <th>N°</th>
            <th>Día</th>
            <th>Mes</th>
            <th>Año</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach($cabecera->result() as $row): ?>
            <tr>
              <td><?=obtenerNumero($row->Numero)?></td>
              <td><?=obtenerFecha($row->Emision, 0)?></td>
              <td><?=obtenerFecha($row->Emision, 1)?></td>
              <td><?=obtenerFecha($row->Emision, 2)?></td>
            </tr>
          <?php endforeach; ?>
        </tbody>
      </table>
      <br><br><br><br><br>
      <h4 style="margin:0 0 10px 0;font-size:17px;text-decoration:underline;text-align:center;font-wight: bold;">
        <strong>AUTORIZACIÓN DE DESPLAZAMIENTO DE BIENES MUEBLES PATRIMONIALES </strong>
      </h4>
      <br><br>
      <?php if($cabecera->num_rows()>0){ ?>
        <?php foreach($cabecera->result() as $row): ?>
          <div class="pdf__row">
            <h6>I. Tipo de desplazamiento</h6>
            <p class="pdf__span">
              <?=$row->Tipo_Desplazamiento?>
            </p>
          </div>
          <div class="pdf__row">
            <h6>II.	Datos del Usuario de Bien: (Apellidos y nombres)</h6>
            <p class="pdf__span">
              DR. HEBER PAUL ARMAS MELGAREJO	 
            </p>
          </div>
          <div class="pdf__row">
            <h6>III. Área y/o Oficina del Usuario del Bien</h6>
            <p class="pdf__span">
              <?=$row->Almacen?>
            </p>
          </div>
          <div class="pdf__row">
            <h6>IV.	Datos del Usuario receptor del Bien: (Apellidos y nombres)</h6>
            <p class="pdf__span">
              <?=$row->Receptor?>
            </p>
          </div>
          <div class="pdf__row">
            <h6>V. Área y/o oficina del Usuario receptor del Bien:</h6>
            <p class="pdf__span">
              <?=$row->IPRESS?>
            </p>
          </div>
        <?php endforeach; ?>
      <?php } ?>	
      <?php if($detalle->num_rows()>0){ ?>
        <h6>VI.	Relación de bienes: </h6>
        <table cellpadding="0" cellspacing="0" class="tabla_ubicacion" style="margin: auto;position: relative;">
          <thead>
            <tr>
              <th>N° ÍTEM</th>
              <th>COD. SIGA</th>
              <th>DESCRIPCIÓN DEL BIEN</th>
              <th>NÚMERO DE LOTE</th>
              <th>CANTIDAD</th>
              <th>COSTO UNITARIO</th>
              <th>FECHA DE EXPIRACIÓN</th>
              <th>SUB. TOTAL</th>
              <th>NRO. CAJA</th>
              <!-- <th>ESTADO</th> -->
            </tr>
          </thead>
          <tbody>
              <?php foreach($detalle->result() as $key=>$row): ?>
                <tr>
                  <td><?=($key + 1)?></td>
                  <td> <strong><?=$row->siga?></strong> </td>
                  <td><?=$row->Articulo?></td>
                  <td> <strong><?=$row->numero_lote?></strong> </td>
                  <td> <strong><?=$row->cantidad?></strong> </td>
                  <td> <strong><?=$row->costo_unitario?></strong> </td>
                  <td> <strong><?=$row->fecha_vencimiento?></strong> </td>
                  <td><?=$row->sub_total?></td>
                  <td><?=$row->caja?></td>
                  <!-- <td><?=$row->Condicion?></td> -->
                </tr>
              <?php endforeach; ?>
            </tbody>
          </table>
      <?php } ?>	
      <br>          
      <h6>VII. FIRMAS: </h6>
      <table cellpadding="0" cellspacing="0" class="tabla_ubicacion pdf_tabla-firmas" 
      style="margin: auto;position: relative;">
        <tbody>
          <tr>
            <td>
              _______________________ <br>
              Usuario del  <br>Bien
            </td>
            <td>
              _________________________ <br>
              Funcionario que Autoriza
            </td>
            <td>
              ______________________________ <br>
              Verificador – Unidad de<br>Patrimonio
            </td>
            <td>
              ________________________ <br>
              Usuario receptor del Bien
            </td>
          </tr>
        </tbody>
      </table>
    </main>
  </body>
</html>