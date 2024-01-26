function reporteContingencia(URI) {

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
		/*
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
		*/


		var table = $('.tbLista').DataTable(
			{
				dom : '<"html5buttons"B>lTfgitp',
				pageLength : 10,
				columns : [
					{
						"data" : "id"/*0*/
					},
					{
						"data" : "titulo"/*1*/
					},
					{
						"data" : "presupuesto"/*2*/
					},
					{
						"data" : "archivo"/*3*/
					},
					{
						"data" : "origenp"/*4*/
					},
					{
						"data" : "iniciovig"/*5*/
					},
					{
						"data" : "finvig"/*6*/
					},
					{
						"data" : "institucion"/*7*/
					},
					{
						"data" : "region"/*8*/
					},
					{
						"data" : "estado"/*9*/
					},
					{
						"data" : "calificacion"/*10*/
					},
					{
						"data" : "plan_file"/*11*/
					},
					{
						"data" : "resolucion_file"/*12*/
					}
				],
				"ajax" : {
					url : URI + "contingencia/reportes/listaContingencia",
					type : "POST",
					data : function(d) {
						d.tipoAtencion = document.getElementById("tipoAtencion").value,
						d.contingencias_peligros_detalle_id_natural = document.getElementById("contingencias_peligros_detalle_id_natural").value,
						d.contingencias_peligros_detalle_items_id_natural = document.getElementById("contingencias_peligros_detalle_items_id_natural").value,
						d.contingencias_peligros_detalle_id_antropico = document.getElementById("contingencias_peligros_detalle_id_antropico").value,
						d.contingencias_peligros_detalle_items_id_antropico = document.getElementById("contingencias_peligros_detalle_items_id_antropico").value,


						d.codigo_institucion = document.getElementById("codigo_institucion").value,
						d.codigo_region = document.getElementById("codigo_region").value,
						d.codigo_disa = document.getElementById("codigo_disa").value,
						d.codigo_red = document.getElementById("codigo_red").value,
						d.codigo_micro_red = document.getElementById("codigo_micro_red").value,
						d.codigo_renipress = document.getElementById("codigo_renipress").value
					}
				},
				columnDefs : [ {
					"targets" : [11, 12],
					"visible" : false,
					"searchable" : false
				} ],
				"drawCallback": function( settings ) {
					$("#btnObtenerReporte").html("Filtrar");
					$("#btnObtenerReporte").removeClass("disabled");
				},
				buttons : [
						{
							extend : 'copy',
							text : 'Copiar',
							title : 'Reportes estadísticos Consolidado',
							exportOptions : {
								columns : [  1, 2, 3, 4, 5, 6, 7, 8 , 9, 10]
							}
						},
						{
							extend : 'csv',
							title : 'Reportes estadísticos Consolidado',
							exportOptions : {
								columns : [  1, 2, 3, 4, 5, 6, 7, 8 , 9, 10]
							}
						},
						{
							extend : 'excel',
							title : 'Reportes estadísticos Consolidado',
							exportOptions : {
								columns : [  1, 2, 3, 4, 5, 6, 7, 8 , 9, 10]
							}
						},
						{
							extend : 'pdf',
							title : 'Reportes estadísticos Consolidado',
							orientation: 'landscape',
							exportOptions : {
								columns : [  1, 2, 3, 4, 5, 6, 7, 8 , 9, 10]
							}
						},

						{
							extend : 'print',
							text : 'Imprimir',
							title : 'Reportes estadísticos Consolidado',
							exportOptions : {
								columns : [  1, 2, 3, 4, 5, 6, 7, 8 , 9, 10]
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

		$("input[name=tipoAtencion]").on("change", function() {
			
			var id = $("input[name=tipoAtencion]:checked").val();
			
			console.log(id);

			if(id && id.length > 0) {
				$("#showPre").css("display", "none");
				$("#showPMA").css("display", "none");
				if (parseInt(id) === 1) {
					$("#showPre").css("display", "block");
					$("#showPMA").css("display", "none");
					$("#contingencias_peligros_detalle_id_antropico").val(0);
					$("#contingencias_peligros_detalle_items_id_antropico").val(0);
					cargaNatural();
				} else {
					$("#showPre").css("display", "none");
					$("#showPMA").css("display", "block");
					$("#contingencias_peligros_detalle_id_natural").val(0);
					$("#contingencias_peligros_detalle_items_id_natural").val(0);
					cargaAntropico();
				}
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


				/* Combos Natural */
				function cargaNatural() {
					var idnat = $("input[name=tipoAtencion]:checked").val();
					var id_naturalp = $("#contingencias_peligros_detalle_id_natural").val();
					$.ajax({
						url: URI + 'contingencia/Main/cargarPeligros',
						method: 'post',
						type: 'json',
						data: { idnat },
						error: function (xhr) { },
						beforeSend: function () {
							$("#contingencias_peligros_detalle_id_natural").html('<option value="">Cargando...</option>');
						},
						success: function (data) {
							console.log('here', data)
							$("#contingencias_peligros_detalle_id_natural").html('<option value="0">-- Seleccione --</option>');
							data = JSON.parse(data);
							$.each(data, function (i, e) {
								if (parseInt(id_naturalp) > 0) { $("#contingencias_peligros_detalle_id_natural").append('<option value="' + e.contingencias_peligros_detalle_id + '"' + (id_naturalp == e.contingencias_peligros_detalle_id ? 'selected' : "") + '>' + e.contingencias_peligros_detalle_id + ' - ' + e.contingencias_peligros_detalle_nombre + '</option>'); }
								else { $("#contingencias_peligros_detalle_id_natural").append('<option value="' + e.contingencias_peligros_detalle_id + '">' + e.contingencias_peligros_detalle_id + ' - ' + e.contingencias_peligros_detalle_nombre + '</option>'); }
							});
			
						}
					});
			
				}
		
				$("#contingencias_peligros_detalle_id_natural").on("change", function () {
					var id = $(this).val();
						//if (id.length > 0 && anio) {
							cargarDetallePeligros(1, 0, id);
							// filterAreaByYear("#formRegistrar", id);
						//}
				  });
		
				  function cargarDetallePeligros(select, codigo_detalle_peligro, codigo_peligro) {
					var codigo_detalle_peligro = codigo_detalle_peligro;
					$.ajax({
						url: URI + 'contingencia/Main/cargarPeligrosDetalle',
						method: 'post',
						type: 'json',
						data: { codigo_detalle_peligro: codigo_detalle_peligro, codigo_peligro },
						error: function (xhr) { },
						beforeSend: function () {
							$("#contingencias_peligros_detalle_items_id_natural").html('<option value="">Cargando...</option>');
						},
						success: function (data) {
							console.log('here', data)
							$("#contingencias_peligros_detalle_items_id_natural").html('<option value="0">-- Seleccione --</option>');
							data = JSON.parse(data);
							$.each(data, function (i, e) {
								if (parseInt(codigo_detalle_peligro) > 0) { $("#contingencias_peligros_detalle_items_id_natural").append('<option value="' + e.contingencias_peligros_detalle_items_id + '"' + (codigo_detalle_peligro == e.contingencias_peligros_detalle_items_id ? 'selected' : "") + '>' + e.contingencias_peligros_detalle_items_id + ' - ' + e.contingencias_peligros_detalle_items_nombre + '</option>'); }
								else { $("#contingencias_peligros_detalle_items_id_natural").append('<option value="' + e.contingencias_peligros_detalle_items_id + '">' + e.contingencias_peligros_detalle_items_id + ' - ' + e.contingencias_peligros_detalle_items_nombre + '</option>'); }
							});
			
						}
					});
			
				}
		
				/* Fin Combos Natural */
		
				/* Combos Antropico */
				function cargaAntropico() {
					var idnat = $("input[name=tipoAtencion]:checked").val();
					var id_antropicop = $("#contingencias_peligros_detalle_id_antropico").val();
					$.ajax({
						url: URI + 'contingencia/Main/cargarPeligros',
						method: 'post',
						type: 'json',
						data: { idnat },
						error: function (xhr) { },
						beforeSend: function () {
							$("#contingencias_peligros_detalle_id_antropico").html('<option value="">Cargando...</option>');
						},
						success: function (data) {
							console.log('here', data)
							$("#contingencias_peligros_detalle_id_antropico").html('<option value="0">-- Seleccione --</option>');
							data = JSON.parse(data);
							$.each(data, function (i, e) {
								if (parseInt(id_antropicop) > 0) { $("#contingencias_peligros_detalle_id_antropico").append('<option value="' + e.contingencias_peligros_detalle_id + '"' + (id_antropicop == e.contingencias_peligros_detalle_id ? 'selected' : "") + '>' + e.contingencias_peligros_detalle_id + ' - ' + e.contingencias_peligros_detalle_nombre + '</option>'); }
								else { $("#contingencias_peligros_detalle_id_antropico").append('<option value="' + e.contingencias_peligros_detalle_id + '">' + e.contingencias_peligros_detalle_id + ' - ' + e.contingencias_peligros_detalle_nombre + '</option>'); }
							});
			
						}
					});
			
				}
		
				$("#contingencias_peligros_detalle_id_antropico").on("change", function () {
					var id = $(this).val();
						//if (id.length > 0 && anio) {
							cargarDetallePeligros1(1, 0, id);
							// filterAreaByYear("#formRegistrar", id);
						//}
				  });
		
				  function cargarDetallePeligros1(select, codigo_detalle_peligro, codigo_peligro) {
					var codigo_detalle_peligro = codigo_detalle_peligro;
					$.ajax({
						url: URI + 'contingencia/Main/cargarPeligrosDetalle',
						method: 'post',
						type: 'json',
						data: { codigo_detalle_peligro: codigo_detalle_peligro, codigo_peligro },
						error: function (xhr) { },
						beforeSend: function () {
							$("#contingencias_peligros_detalle_items_id_antropico").html('<option value="">Cargando...</option>');
						},
						success: function (data) {
							console.log('here', data)
							$("#contingencias_peligros_detalle_items_id_antropico").html('<option value="0">-- Seleccione --</option>');
							data = JSON.parse(data);
							$.each(data, function (i, e) {
								if (parseInt(codigo_detalle_peligro) > 0) { $("#contingencias_peligros_detalle_items_id_antropico").append('<option value="' + e.contingencias_peligros_detalle_items_id + '"' + (codigo_detalle_peligro == e.contingencias_peligros_detalle_items_id ? 'selected' : "") + '>' + e.contingencias_peligros_detalle_items_id + ' - ' + e.contingencias_peligros_detalle_items_nombre + '</option>'); }
								else { $("#contingencias_peligros_detalle_items_id_antropico").append('<option value="' + e.contingencias_peligros_detalle_items_id + '">' + e.contingencias_peligros_detalle_items_id + ' - ' + e.contingencias_peligros_detalle_items_nombre + '</option>'); }
							});
			
						}
					});
			
				}
		
				/* Fin Combos Antropico */

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


		$("#codigo_region").on("change", function () {
			var id = $(this).val();
			console.log("entre aqui");
			//var anio = $("#formRegistrar").find("select[name=Anio_Ejecucion]").val();
				//if (id.length > 0 && anio) {
					cargarDISA(1, 0, id);
					// filterAreaByYear("#formRegistrar", id);
				//}
		  });



		  function cargarDISA(select, codigo_disa, codigo_region) {
			var id_disa = codigo_disa;
			$.ajax({
				url: URI + 'contingencia/Main/cargarDISA',
				method: 'post',
				type: 'json',
				data: { codigo_disa: codigo_disa, codigo_region },
				error: function (xhr) { },
				beforeSend: function () {codigo_disa
					$("#codigo_disa").html('<option value="">Cargando...</option>');
				},
				success: function (data) {
					console.log('here', data)
					$("#codigo_disa").html('<option value="0">-- Seleccione --</option>');
					data = JSON.parse(data);
					$.each(data, function (i, e) {
						if (parseInt(codigo_disa) > 0) { $("#codigo_disa").append('<option value="' + e.codigo_disa + '"' + (id_disa == e.codigo_disa ? 'selected' : "") + '>' + e.codigo_disa + ' - ' + e.nombre_disa + '</option>'); }
						else { $("#codigo_disa").append('<option value="' + e.codigo_disa + '">' + e.codigo_disa + ' - ' + e.nombre_disa + '</option>'); }
					});
	
				}
			});
	
		}

		$("#codigo_disa").on("change", function () {
			var id = $(this).val();
		
			//var anio = $("#formRegistrar").find("select[name=Anio_Ejecucion]").val();
				//if (id.length > 0 && anio) {
					cargarRed(1, 0, id);
					// filterAreaByYear("#formRegistrar", id);
				//}
		  });

		  function cargarRed(select, codigo_red, codigo_disa) {
			var id_red = codigo_red;
			$.ajax({
				url: URI + 'contingencia/Main/cargarRed',
				method: 'post',
				type: 'json',
				data: { codigo_red: codigo_red, codigo_disa },
				error: function (xhr) { },
				beforeSend: function () {
					$("#codigo_red").html('<option value="">Cargando...</option>');
				},
				success: function (data) {
					console.log('here', data)
					$("#codigo_red").html('<option value="0">-- Seleccione --</option>');
					data = JSON.parse(data);
					$.each(data, function (i, e) {
						if (parseInt(codigo_red) > 0) { $("#codigo_red").append('<option value="' + e.codigo_red + '"' + (id_red == e.codigo_red ? 'selected' : "") + '>' + e.codigo_red + ' - ' + e.nombre_red + '</option>'); }
						else { $("#codigo_red").append('<option value="' + e.codigo_red + '">' + e.codigo_red + ' - ' + e.nombre_red + '</option>'); }
					});
	
				}
			});
	
		}

		$("#codigo_red").on("change", function () {
			var id = $(this).val();
			var disa = $("#codigo_disa").val();
			//var anio = $("#formRegistrar").find("select[name=Anio_Ejecucion]").val();
				//if (id.length > 0 && anio) {
					cargarMicroRed(1, 0, id, disa);
					// filterAreaByYear("#formRegistrar", id);
				//}
		  });

		  function cargarMicroRed(select, codigo_micro_red, codigo_red,codigo_disa) {
			var id_microred = codigo_micro_red;
			$.ajax({
				url: URI + 'contingencia/Main/cargarMicroRed',
				method: 'post',
				type: 'json',
				data: { codigo_micro_red: codigo_micro_red, codigo_red, codigo_disa: codigo_disa },
				error: function (xhr) { },
				beforeSend: function () {
					$("#codigo_micro_red").html('<option value="">Cargando...</option>');
				},
				success: function (data) {
					console.log('here', data)
					$("#codigo_micro_red").html('<option value="0">-- Seleccione --</option>');
					data = JSON.parse(data);
					$.each(data, function (i, e) {
						if (parseInt(codigo_micro_red) > 0) { $("#codigo_micro_red").append('<option value="' + e.codigo_micro_red + '"' + (id_microred == e.codigo_micro_red ? 'selected' : "") + '>' + e.codigo_micro_red + ' - ' + e.nombre_micro_red + '</option>'); }
						else { $("#codigo_micro_red").append('<option value="' + e.codigo_micro_red + '">' + e.codigo_micro_red + ' - ' + e.nombre_micro_red + '</option>'); }
					});
	
				}
			});
	
		}

		$("#codigo_micro_red").on("change", function () {
			var id = $(this).val();
			var institucion = $("#codigo_institucion").val();
			var region = $("#codigo_region").val();
			var disa = $("#codigo_disa").val();
			var red = $("#codigo_red").val();
				//if (id.length > 0 && anio) {
					cargarIPRESS(1, 0, id,institucion,region,disa,red);
					// filterAreaByYear("#formRegistrar", id);
				//}
		  });

		  function cargarIPRESS(select, codigo_renipress, codigo_micro_red,codigo_institucion,codigo_region,codigo_disa,codigo_red) {
			var id_renipress = codigo_renipress;
			$.ajax({
				url: URI + 'contingencia/Main/cargarIPRESS',
				method: 'post',
				type: 'json',
				data: { codigo_renipress: codigo_renipress, codigo_micro_red, codigo_institucion,codigo_region,codigo_disa,codigo_red },
				error: function (xhr) { },
				beforeSend: function () {
					$("#codigo_renipress").html('<option value="">Cargando...</option>');
				},
				success: function (data) {
					console.log('here', data)
					$("#codigo_renipress").html('<option value="0">-- Seleccione --</option>');
					data = JSON.parse(data);
					$.each(data, function (i, e) {
						if (parseInt(codigo_renipress) > 0) { $("#codigo_renipress").append('<option value="' + e.codigo_renipress + '"' + (id_renipress == e.codigo_renipress ? 'selected' : "") + '>' + e.codigo_renipress + ' - ' + e.nombre + '</option>'); }
						else { $("#codigo_renipress").append('<option value="' + e.codigo_renipress + '">' + e.codigo_renipress + ' - ' + e.nombre + '</option>'); }
					});
	
				}
			});
	
		}

		$("#btnObtenerReporte").on("click",function() {
	
			var codigo_institucion = $("#codigo_institucion").val();
			/*
			var tipoEvento = $("#tipoprovincia") .val();
			var tipoEvento = $("#tipodistrito") .val();
			var tipoEvento = $("#tipoEvento") .val();
			var evento = $("#evento").val();
			var detalle = $("#detalle").val();
			var nivel = $("#nivelEmergencia") .val();
			/*
			var desde = $("#desde").val();
			var hasta = $("#hasta").val();
			/*
			if (desde.length !=10 || hasta.length !=10) {
				$("#alertaModal").modal("show");
				$("#alertaModal #tituloalerta").text("Error");
				$("#alertaModal #mensajealerta").html("Verifique las fechas");
				return false;

			} else {
				$("#activar").val(1);
			}
			*/
			$("#btnObtenerReporte").text("Cargando...");
			$("#btnObtenerReporte").addClass("disabled");
			$("#cargando").html("<i class='fa fa-refresh fa-spin fa-3x fa-fw'></i>");
			table.ajax.reload();

		});

	});

}
