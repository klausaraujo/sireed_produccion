function consolidado(URI,ID) {

	$(document).ready(function() {

		var table = $("#tbConsolidado").DataTable({
			dom :'<"html5buttons"B>lTfgitp',
		    columns: [
		    	{ "data" : "F_Atencion"},/*0*/
		    	{ "data" : "Paciente"},
		    	{ "data" : "Edad"},
		    	{ "data" : "Clasificacion"},
		    	{ "data" : "Diagnosticos"},
		    	{ "data" : "PMA_Oferta_Movil"},
		    	{ "data" : "Pais"},/*6*/
		    	{ "data" : "editar"},
		    	{ "data" : "eliminar"},
		    	{ "data" : "ID"},/*9*/
		    	{ "data" : "IDR"},
		    	{ "data" : "IDP"},
		    	{ "data" : "Medico"},
		    	{ "data" : "PreHospitalario"},
		    	{ "data" : "Entidad"},
		    	{ "data" : "Atencion_PMA"},
		    	{ "data" : "Tipo_Documento"},
		    	{ "data" : "Num_Documento"},
		    	{ "data" : "F_Nacimiento"},
		    	{ "data" : "Genero"},
		    	{ "data" : "Gestante"},
		    	{ "data" : "Discapacidad"},
		    	{ "data" : "T_Discapacidad"},
		    	{ "data" : "Apoderado"},
		    	{ "data" : "Residencia"},
		    	{ "data" : "Dias"},
		    	{ "data" : "Meses"},
		    	{ "data" : "F_Sintomas"},
		    	{ "data" : "H_Sintomas"},
		    	{ "data" : "H_Atencion"},
		    	{ "data" : "PA"},
		    	{ "data" : "FC"},
		    	{ "data" : "FR"},
		    	{ "data" : "SO2"},
		    	{ "data" : "FIO2"},
		    	{ "data" : "Dif_Respiratoria"},
		    	{ "data" : "Tos"},
		    	{ "data" : "Rinorrea"},
		    	{ "data" : "Fiebre"},
		    	{ "data" : "Nauseas"},
		    	{ "data" : "Vomitos"},
		    	{ "data" : "D_Abdominal"},
		    	{ "data" : "Diarrea"},
		    	{ "data" : "Otros"},
		    	{ "data" : "V_Influenza"},
		    	{ "data" : "V_Fiebre"},
		    	{ "data" : "V_Sarampion"},
		    	{ "data" : "V_Hepatitis"},
		    	{ "data" : "V_Tetanos"},
		    	{ "data" : "OtrasVacunas"},
		    	{ "data" : "Detalle"},
		    	{ "data" : "F_Toma"},
		    	{ "data" : "F_Envio"},
		    	{ "data" : "F_Recepcion"},
		    	{ "data" : "Resultados"},
		    	{ "data" : "Destino"},
		    	{ "data" : "Lugar_Traslado"},
		    	{ "data" : "Responsable"},
		    	{ "data" : "Condicion"},/*58*/
				{ "data" : "ObservacionesAtencion"},
				{ "data" : "Tratamiento"},
				{ "data" : "alteracion_conciencia"},
				{ "data" : "dolor_pecho"}
             ],
     		"lengthMenu": [[25, 50, 100, -1], [25, 50, 100, "Todos"]],
     	    columnDefs: [
     	        {
     	            "targets": [9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62],
     	            "visible": false,
     	            "searchable": false
     	        }
     	    ],		
     	    buttons: [
     	    	{extend: 'copy', text:'copy', title:'Consolidado',exportOptions: {columns: [ 0,1,2,3,4,5,6 ]}},
     	        {extend: 'csv', title:'Consolidado',exportOptions: {columns: [ 0,1,2,3,4,5,6 ]}},
     	        {extend: 'excel', title: 'Consolidado',exportOptions: {columns: [ 0,1,2,3,4,5,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62 ]}},
     	        {extend: 'pdf', title: 'Consolidado',orientation: 'landscape',exportOptions: {columns: [ 0,1,2,3,4,5,6 ]}},

     	        {extend: 'print',
     	         text:'Imprimir',
     	         title: 'Imprimir',
     	         exportOptions: {columns: [ 0,1,2,3,4,5,6 ]},
     	         customize: function (win){
     	                $(win.document.body).addClass('white-bg');
     	                $(win.document.body).css('font-size', '10px');

     	                $(win.document.body).find('table')
     	                        .addClass('compact')
     	                        .css('font-size', 'inherit');

     	                var css = '@page { size: landscape; }',
     	                head = win.document.head || win.document.getElementsByTagName('head')[0],
     	                style = win.document.createElement('style');

     	                style.type = 'text/css';
     	                style.media = 'print';

     	                if (style.styleSheet)
     	                {
     	                  style.styleSheet.cssText = css;
     	                }
     	                else
     	                {
     	                  style.appendChild(win.document.createTextNode(css));
     	                }

     	                head.appendChild(style);
     	        	}
     	        }
     	    ]
		});//Datatable
		/*
			$("#formConsolidado").validate({
				
				submitHandler:function(form,event){
					console.log("Ingresa");
					event.preventDefault();
					console.log($("#formConsolidado").find("input[name=evento]").val());
					console.log($("#formConsolidado").find("select[name=fecha_inicial]").val());
					console.log($("#formConsolidado").find("select[name=fecha_final]").val());

					$.ajax({
						data: {
							evento: $("#formConsolidado").find("select[name=evento]").val(),
							fecha_inicial: $("#formConsolidado").find("select[name=fecha_inicial]").val(),
							fecha_final: $("#formConsolidado").find("select[name=fecha_final]").val()
						},
						
						url:URI+"ofertamovil/main/consolidado",
						method:"POST",
						dataType:"json",
						beforeSend: function(){
							$("#cargando").html("<i class='fa fa-refresh fa-spin fa-3x fa-fw'></i>");
							$("#btnejecutar").addClass("disabled");
							$("#message").html("");
	
						},
						success: function(data){
							$("#cargando").html("<i></i>");
							$('html, body').animate({ scrollTop: 0 }, 'fast');
							
							var $message = "";
							
							if(parseInt(data.status)==200) $message = '<div class="alert alert-success"><h4 style="margin:0">La búsqueda fue exitosa.</h4></div>';
							else if(parseInt(data.status)==201) {
								$message = '<div class="alert alert-warning"><h4 style="margin:0">Hubo un error al consultar el reporte.</h4></div>';
								$("#btnejecutar").removeClass("disabled");
							}
							else {
								$message = '<div class="alert alert-error"><h4 style="margin:0">Hubo un error al consultar el reporte.</h4></div>';
								$("#btnejecutar").removeClass("disabled");
							}
	
							$("#message").html($message);
							
							if(parseInt(data.status)==200) setTimeout(function(){$("#message").slideUp();location.href=URI+"ofertamovil";},3000);
						}
					});
	
				}
			});
			*/	
	
	// ELIMINAR
			$("body").on("click",".actionDelete",function(){
				$("#deleteModal input[name=id]").val("");
				$('#deleteModal').modal('show');
			
				var tr = $(this).parents('tr');
				var row = table.row(tr);
				data = row.data();
				console.log(data.ID);
				$("#deleteModal input[name=id]").val(data.ID);
				//$("#deleteModal input[name=Evento_Ficha_Atencion_ID]").val(data.Ficha_ID);
				//$("#deleteModal input[name=Evento_Registro_Numero]").val(data.Evento_Registro_Numero);
				//$("#deleteModal #numero").text(data.Detalle_Paciente);
			
			});
				
			$(".date").datetimepicker({
				format: "DD/MM/YYYY"
			});
	});


			
	$("#combo").on("change", function() {
		
		$("#form").submit();
		
	});

	

}