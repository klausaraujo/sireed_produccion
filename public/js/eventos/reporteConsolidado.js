function reporteConsolidado(URI) {

	$.fn.datepicker.dates['es'] = {
		    days: ["Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado"],
		    daysShort: ["Dom", "Lun", "Mar", "Mie", "Jue", "Vie", "Sab"],
		    daysMin: ["Do", "Lu", "Ma", "Mi", "Ju", "Vi", "Sa"],
		    months: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"],
		    monthsShort: ["Ene", "Feb", "Mar", "Abr", "May", "Jun", "Jul", "Ago", "Sep", "Oct", "Nov", "Dic"],
		    today: "Hoy",
		    clear: "Limpiar",
		    format: "mm/dd/yyyy",
		    titleFormat: "MM yyyy",
		    weekStart: 0
		};

	$('.datetimepicker').datepicker({
		format : 'dd/mm/yyyy',
		maxDate : moment(),
		language : "es",
		autoclose : true
	});
	
	function format ( d ) {
	    // `d` is the original data object for the row
		var acciones = {};
		if (d.Acciones_Descripcion != null) {
			acciones = d.Acciones_Descripcion.split("|");			
		}
		var htmlAcciones = "";
		$.each(acciones, function(i,e){
			htmlAcciones+="<li>"+e+"</li>";
		});
	    return '<div class="detailc">'+
	    		'<div class="row"><div class="col-sm-2 col-md-1">'+
				'<h5>Brigadistas</h5>'+
		    	'<ul>'+
		            '<li><strong>Regi&oacute;n / DIRIS: </strong>'+d.brigadista_region+'</li>'+
		            '<li><strong>MINSA: </strong>'+d.brigadista_minsa+'</li>'+
		            '<li><strong>Rescatistas: </strong>'+d.brigadista_rescatista+'</li>'+
		            '<li><strong>M&eacute;dicos T&aacute;cticos: </strong>'+d.brigadista_tactico+'</li>'+
		    	'</ul>'+
		    '</div>'+
		    '<div class="detailc"><div class="col-sm-2 col-md-1">'+
	    		'<h5>Equipos M&eacute;dicos(E.M.T.):</h5>'+
            	'<ul>'+
		            '<li><strong>EMT 1: </strong>'+d.emt_i+'</li>'+
		            '<li><strong>EMT 2: </strong>'+d.emt_ii+'</li>'+
		            '<li><strong>EMT 3: </strong>'+d.emt_iii+'</li>'+
		            '<li><strong>Ce. Especializada: </strong>'+d.EA_Celula_Especializada+'</li>'+		            
            	'</ul>'+
	        '</div>'+
	        '<div class="col-sm-2 col-md-1">'+
		    '<h5>Medicamentos e insumos:</h5>'+
	        	'<ul>'+
		            '<li><strong>OM Tipo 1: </strong>'+d.MI_Oferta_Movil_i+'</li>'+
		            '<li><strong>OM Tipo 2: </strong>'+d.MI_Oferta_Movil_ii+'</li>'+
		            '<li><strong>OM Tipo 3: </strong>'+d.MI_Oferta_Movil_iii+'</li>'+
		            '<li><strong>Hospital Modular: </strong>'+d.MI_Hospital_Modular+'</li>'+
		            '<li><strong>Ba&ntilde;o Qu&iacute;mico portatil: </strong>'+d.MI_Banio_Quimico_Portatil+'</li>'+
	        	'</ul>'+
        	'</div>'+
        	'<div class="col-sm-2 col-md-1">'+
        		'<h5>Personal de Salud:</h5>'+
	        		'<ul>'+
	        			'<li><strong>MINSA - SAMU: </strong>'+d.PS_Minsa_Samu+'</li>'+
	        			'<li><strong>MINSA: </strong>'+d.PS_Salud_Minsa+'</li>'+
	        			'<li><strong>ESSALUD: </strong>'+d.PS_Essalud+'</li>'+
	        			'<li><strong>Muni./GORES: </strong>'+d.PS_Municipalidades_Gores+'</li>'+
	        			'<li><strong>Voluntarios: </strong>'+d.PS_Voluntarios+'</li>'+
	        			'<li><strong>PNP / FF.AA.: </strong>'+d.PS_PNP_FFAA+'</li>'+
	        		'</ul>'+
        	'</div>'+
        	'<div class="col-sm-2 col-md-1">'+
    		'<h5>Ambulancias:</h5>'+
        		'<ul>'+
	        		'<li><strong>MINSA - SAMU: </strong>'+d.A_Minsa_Samu+'</li>'+
	    			'<li><strong>MINSA: </strong>'+d.A_Minsa+'</li>'+
	    			'<li><strong>ESSALUD: </strong>'+d.A_Essalud+'</li>'+
	    			'<li><strong>Muni./GORES: </strong>'+d.A_Municipalidades_Gores+'</li>'+
	    			'<li><strong>Bomberos: </strong>'+d.A_Bomberos+'</li>'+
	    			'<li><strong>PNP / FF.AA.: </strong>'+d.A_PNP_FFAA+'</li>'+
        			'<li><strong>Privadas: </strong>'+d.A_Privadas+'</li>'+
        		'</ul>'+
    	'</div></div>'+
        	'<hr>'+
        	'<div class="col-xs-12">'+
        	'<h5>Acciones:</h5>'+
        	'<ul class="acciones">'+
        		htmlAcciones+
        	'</ul>'+
        '</div></div>';
	}

	var table = $('.tbLista').DataTable(
					{
						dom : '<"html5buttons"B>lTfgitp',
						pageLength : 10,
						columns : [
							{
				                "className":      'details-control',
				                "orderable":      false,
				                "data":           null,
				                "defaultContent": ''
				            },
							{
								"data" : "numero"/*0*/
							},
							{
								"data" : "fecha"/*1*/
							},
							{
								"data" : "hora"/*2*/
							},
							{
								"data" : "fechaRegistro"/*3*/
							},
							{
								"data" : "horaRegistro"/*4*/
							},
							{
								"data" : "hora2"/*5*/
							},
							{
								"data" : "hora6"/*6*/
							},
							{
								"data" : "evento"/*7*/
							},
							{
								"data" : "detalle"/*8*/
							},
							{
								"data" : "nivel"/*9*/
							},
							{
								"data" : "usuario"/*10*/
							},
							{
								"data" : "cantidadAcciones"/*11*/
							},
							{
								"data" : "departamento"/*12*/
							},
							{
								"data" : "provincia"/*13*/
							},
							{
								"data" : "distrito"/*14*/
							},
							{
								"data" : "latitud"/*15*/
							},
							{
								"data" : "longitud"/*15*/
							},
							{
								"data" : "lesionados"/*16*/
							},
							{
								"data" : "fallecidos"/*17*/
							},
							{
								"data" : "desaparecidos"/*18*/
							},
							{
								"data" : "esoperativas"/*19*/
							},
							{
								"data" : "esinoperativas"/*20*/
							},
							{
								"data" : "status"/*21*/
							},
							{
								"data" : "estado"/*22*/
							},
							{
								"data" : "brigadista_region"/*23*/
							},
							{
								"data" : "brigadista_minsa"/*24*/
							},
			                {
								"data" : "brigadista_rescatista"/*25*/
			                },
			                {
			                	"data" : "brigadista_tactico"/*26*/
			                },
							{
								"data" : "emt_i"/*27*/
							},
							{
								"data" : "emt_ii"/*28*/
							},
							{
								"data" : "emt_ii"/*29*/
							},
							{
								"data" : "MI_Oferta_Movil_i"/*30*/
							},
							{
								"data" : "MI_Oferta_Movil_ii"/*31*/
							},
							{
								"data" : "MI_Oferta_Movil_ii"/*32*/
							},
							{
								"data" : "MI_Hospital_Modular"/*33*/
							},
							{
								"data" : "MI_Banio_Quimico_Portatil"/*34*/
							},
							{
								"data" : "EA_Celula_Especializada", title:"Celula Especializada"/*35*/
							},
							{
								"data" : "PS_Minsa_Samu", title:"Personal Salud Minsa/Samu"/*36*/
							},
							{
								"data" : "PS_Salud_Minsa", title:"Personal Salud  Minsa"/*37*/
							},
							{
								"data" : "PS_Essalud", title:"Personal Salud Essalud"/*38*/
							},
							{
								"data" : "PS_Municipalidades_Gores", title:"Personal Salud Municipalidades/Gores"/*39*/
							},
							{
								"data" : "PS_Voluntarios", title:"Personal Salud Voluntarios"/*40*/
							},
							{
								"data" : "PS_PNP_FFAA", title:"Personal Salud PNP/FFAA"/*41*/
							},
							{
								"data" : "A_Minsa_Samu", title:"Ambulancias Minsa/Samu"/*42*/
							},
							{
								"data" : "A_Minsa", title:"Ambulancias Minsa"/*43*/
							},
							{
								"data" : "A_Essalud", title:"Ambulancias Essalud"/*44*/
							},
							{
								"data" : "A_Bomberos", title:"Ambulancias Bomberos"/*45*/
							},
							{
								"data" : "A_Municipalidades_Gores", title:"Ambulancias Municipalidades/Gores"/*46*/
							},
							{
								"data" : "A_PNP_FFAA", title:"Ambulancias PNP/FFAA"/*47*/
							},
							{
								"data" : "A_Privadas", title:"Ambulancias Privadas"/*48*/
							},
							{
								"data" : "Acciones_Descripcion", title:"Acciones"/*49*/
							},
							{
								"data" : "pdf"/*50*/
							}
						],
						"ajax" : {
							url : URI + "eventos/reportes/listaEventosConsolidado",
							type : "POST",
							data : function(d) {
								d.departamento = document.getElementById("departamento").value,
								d.provincia = document.getElementById("provincia").value,
								d.distrito = document.getElementById("distrito").value,
								d.tipoEvento = document.getElementById("tipoEvento").value,
								d.evento = document.getElementById("evento").value,
								d.detalle = document.getElementById("detalle").value,
								d.eventoConsolidado = document.getElementById("eventoConsolidado").value,
								d.nivel = document.getElementById("nivelEmergencia").value,
								d.desde = document.getElementById("desde").value,
								d.hasta = document.getElementById("hasta").value,
								d.activar = document.getElementById("activar").value
							}
						},
						columnDefs : [ {
							"targets" : [23, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51],
							"visible" : false,
							"searchable" : false
						} ],
						"drawCallback": function( settings ) {
							$("#btnObtenerReporte").html("Obtener Reporte");
							$("#btnObtenerReporte").removeClass("disabled");
						},
						buttons : [
								{
									extend : 'copy',
									text : 'Copiar',
									title : 'Reportes estadísticos Consolidado',
									exportOptions : {
										columns : [  1, 2, 3, 4, 5, 6, 7, 8 , 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32 ,33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51 ]
									}
								},
								{
									extend : 'csv',
									title : 'Reportes estadísticos Consolidado',
									exportOptions : {
										columns : [  1, 2, 3, 4, 5, 6, 7, 8 , 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32 ,33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51 ]
									}
								},
								{
									extend : 'excel',
									title : 'Reportes estadísticos Consolidado',
									exportOptions : {
										columns : [  1, 2, 3, 4, 5, 6, 7, 8 , 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32 ,33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51 ]
									}
								},
								{
									extend : 'pdf',
									title : 'Reportes estadísticos Consolidado',
									orientation: 'landscape',
									exportOptions : {
										columns : [ 1, 2, 3, 4, 5, 6, 7 ,8 , 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 ]
									}
								},

								{
									extend : 'print',
									text : 'Imprimir',
									title : 'Reportes estadísticos Consolidado',
									exportOptions : {
										columns : [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 23, 24, 25, 26, 27, 28, 29, 30, 31 ]
									},
									customize : function(win) {
										$(win.document.body).addClass('white-bg');
										$(win.document.body).css('font-size','10px');

										$(win.document.body).find('table')
												.addClass('compact').css('font-size', 'inherit');

										var css = '@page { size: landscape; }', head = win.document.head
												|| win.document
														.getElementsByTagName('head')[0], style = win.document
												.createElement('style');

										style.type = 'text/css';
										style.media = 'print';

										if (style.styleSheet) {
											style.styleSheet.cssText = css;
										} else {
											style.appendChild(win.document
													.createTextNode(css));
										}

										head.appendChild(style);
									}
								} ]
					});

	$(document).ready(function() {
		
		$("html").on("click",".exportar",function(e){
			e.preventDefault();
			var data = $(this).attr("rel");
			data = data.split("|");
			var informeInicial = data[0];
			var informeFinal = data[0];
			
			$("#aInformeInicial").attr("href",URI+"eventos/eventos/informe/="+ informeInicial);
			$("#aInformeFinal").attr("href",URI+"eventos/eventos/informe/="+ informeFinal);
			
			$("#informeModal").modal("show");

		});
		
		$('.tbLista tbody').on('click', 'td.details-control', function () {
	        var tr = $(this).closest('tr');
	        var row = table.row( tr );
	 
	        if ( row.child.isShown() ) {
	            // This row is already open - close it
	            row.child.hide();
	            tr.removeClass('shown');
	        }
	        else {
	            // Open this row
	            row.child( format(row.data()) ).show();
	            tr.addClass('shown');
	        }
	    });

		$("#departamento").change(function(){

			var id = $(this).val();

			if(id.length>0){

        	$.ajax({
				data: {departamento:id},
				url:URI+"eventos/main/cargarProvincias",
				method:"POST",
				dataType:"json",
				beforeSend: function(){
					$("#provincia").html('<option value="">Cargando...</option>');
                	$("#distrito").html('<option value="0">-- TODOS --</option>');
                },
                success: function(data){

					var $html='<option value="0">-- TODOS --</option>';
					$.each(data.lista,function(i,e){

						$html+='<option value="'+e.Codigo_Provincia+'">'+e.Nombre+'</option>';

					});
    				$("#provincia").html($html);

                }
			});

			}
		});

		$("#provincia").change(function(){

				var id = $(this).val();
				var departamento = $("#departamento").val();

				if(id.length>0 && departamento.length>0){

	        	$.ajax({
					data: {departamento:departamento,provincia:id},
					url:URI+"eventos/main/cargarDistritos",
					method:"POST",
					dataType:"json",
					beforeSend: function(){
	                	$("#distrito").html('<option value="">Cargando...</option>');
	                },
	                success: function(data){

						var $html='<option value="0">-- TODOS --</option>';
						$.each(data.lista,function(i,e){

							$html+='<option value="'+e.Codigo_Distrito+'">'+e.Nombre+'</option>';

						});
	    				$("#distrito").html($html);

	                }
				});

			}
		});

		$("#tipoEvento").change(function() {

			id = $(this).val();

			if (id.length > 0) {

				$.ajax({
					data : {
						tipoEvento : id
					},
					url : URI
							+ "eventos/eventos/cargarEvento",
					method : "POST",
					dataType : "json",
					beforeSend : function() {
						$("#evento")
								.html(
										'<option value="">Cargando...</option>');
					},
					success : function(
							data) {

						var $html = '<option value="0">-- TODOS --</option>';
						$.each(data.lista,function(i,e) {

							$html += '<option value="' + e.Evento_Codigo + '">' + e.Evento_Nombre + '</option>';

						});
						$("#evento").html($html);

					}
				});

			}

		});// Change Evento

		$("#evento").change(function(){

			var id = $(this).val();
			var tipoEvento = $("#tipoEvento").val();

			if(id.length>0 && tipoEvento.length){

				if(id=="26" && tipoEvento=="01") $(".seismo").css("display","inline-block");
				else $(".seismo").css("display","none");

            	$.ajax({
    				data: {evento:id,tipoEvento:tipoEvento},
    				url:URI+"eventos/eventos/cargarEventoDetalle",
    				method:"POST",
    				dataType:"json",
    				beforeSend: function(){
                    	$("#detalle").html('<option value="">Cargando...</option>');
                    },
                    success: function(data){

    					var $html = '<option value="0">-- TODOS --</option>';
    					$.each(data.lista,function(i,e){

    						$html+='<option value="'+e.Evento_Detalle_Codigo+'">'+e.Evento_Detalle_Nombre+'</option>';

    					});
        				$("#detalle").html($html);

                    }
    			});

		}

    	});

		$("#btnObtenerReporte").on("click",function() {
	
			var tipoEvento = $("#departamento") .val();
			var tipoEvento = $("#tipoprovincia") .val();
			var tipoEvento = $("#tipodistrito") .val();
			var tipoEvento = $("#tipoEvento") .val();
			var evento = $("#evento").val();
			var detalle = $("#detalle").val();
			var nivel = $("#nivelEmergencia") .val();
			var desde = $("#desde").val();
			var hasta = $("#hasta").val();

			if (desde.length !=10 || hasta.length !=10) {
				$("#alertaModal").modal("show");
				$("#alertaModal #tituloalerta").text("Error");
				$("#alertaModal #mensajealerta").html("Verifique las fechas");
				return false;

			} else {
				$("#activar").val(1);
			}

			$("#btnObtenerReporte").text("Cargando...");
			$("#btnObtenerReporte").addClass("disabled");
			$("#cargando").html("<i class='fa fa-refresh fa-spin fa-3x fa-fw'></i>");
			table.ajax.reload();

		});

	});

}
