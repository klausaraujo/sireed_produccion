function paciente(URI,ID_EMERGENCIA) {

	setTimeout(function() {
		$(".alert").slideUp();
	}, 3500);

	function post(path, params, method) {
		method = method || "post";

		var form = document.createElement("form");
		form.setAttribute("method", method);
		form.setAttribute("action", path);

		for ( var key in params) {
			if (params.hasOwnProperty(key)) {
				var hiddenField = document.createElement("input");
				hiddenField.setAttribute("type", "hidden");
				hiddenField.setAttribute("name", key);
				hiddenField.setAttribute("value", params[key]);

				form.appendChild(hiddenField);
			}
		}

		document.body.appendChild(form);
		form.submit();
	}

	$(document).ready(function() {

		var table = $('.tbLista').DataTable(
						{
							dom : '<"html5buttons"B>lTfgitp',
							columns : [
								{"data":"IDE"},//0
								{"data":"Tipo_Documento"},//1
								{"data":"Num_Documento"},//2
								{"data":"Apellidos"},//3
								{"data":"Nombres"},//4
								{"data":"Edad"},//5
								{"data":"Genero"},//6
								{"data":"Gestante"},//7
								{"data":"Peso"},//8
								{"data":"Talla"},//9
								{"data":"Inicio_Sintomas"},//10
								{"data":"Ingreso_Hospital"},//11
								{"data":"Ingreso_UCI"},//12
								{"data":"DM"},//13
								{"data":"HTA"},//14
								{"data":"ERC"},//15
								{"data":"VIH"},//16
								{"data":"LES"},//17
								{"data":"ASMA"},//18
								{"data":"TBC"},//19
								{"data":"NM"},//20
								{"data":"Otros"},//21
								{"data":"EDAs"},//22
								{"data":"Dias_EDAs"},//23
								{"data":"Resfrio"},//24
								{"data":"Dias_Resfrio"},//25
								{"data":"Vacunas"},//26
								{"data":"Detalle_Vacunas"},//27
								{"data":"Estancia_Horas"},//28
								{"data":"Estancia_Dias"},//29
								{"data":"VMI"},//30
								{"data":"VMI_Horas"},//31fe
								{"data":"VMI_Dias"},//32
								{"data":"Dolor_Articular"},//33
								{"data":"DFM_Miembros_Superiores"},//34
								{"data":"DFM_Miembros_Inferiores"},//35
								{"data":"Dificultad_Respiratoria"},//36
								{"data":"Dolor_Extremidades"},//37
								{"data":"Dificultad_Marcha"},//38
								{"data":"Cuadriplejia"},//39
								{"data":"Glasgow"},//40
								{"data":"UCI_Habitual"},//41
								{"data":"Cama_UCIH"},//42
								{"data":"UCI_Contingencia"},//43
								{"data":"Cama_UCIC"},//44
								{"data":"PA"},//45
								{"data":"T"},//46
								{"data":"Vasopresores_o_Inotropicos"},//47
								{"data":"Tipo_Vas_Inot"},//48
								{"data":"ROT"},//49
								{"data":"Fuerza_Muscular"},//50
								{"data":"Escala_Glasgow"},//51
								{"data":"Electromiografia"},//52
								{"data":"Fecha_Elect"},//53
								{"data":"Conclusion_1"},//54
								{"data":"Conclusion_2"},//55
								{"data":"Velocidad"},//56
								{"data":"Puncion_Lumbar"},//57
								{"data":"Fecha_PL"},//58
								{"data":"PL_Enviado"},//59
								{"data":"Tipificacion_Viral"},//60
								{"data":"Fecha_TV"},//61
								{"data":"TV_Enviado"},//62
								{"data":"Tipifacion_Bacteriana"},//63
								{"data":"Fecha_PB"},//64
								{"data":"PB_Enviado"},//65
								{"data":"Isopado_Orofaringia"},//66
								{"data":"Fecha_IO"},//67
								{"data":"IO_Enviado"},//68
								{"data":"Examen_Heces"},//69
								{"data":"Fecha_EH"},//70
								{"data":"EH_Enviado"},//71
								{"data":"CIE10A"},//72
								{"data":"CIE10A_Presuntivo"},//73
								{"data":"CIE10A_Definitivo"},//74
								{"data":"CIE10B"},//75
								{"data":"CIE10B_Presuntivo"},//76
								{"data":"CIE10B_Definitivo"},//77
								{"data":"CIE10C"},//78
								{"data":"CIE10C_Presuntivo"},//79
								{"data":"CIE10C_Definitivo"},//80
								{"data":"Inmunoglobulina"},//81
								{"data":"I_Frascos"},//82
								{"data":"I_Dias"},//83
								{"data":"I_Reacciones_Adversas"},//84
								{"data":"Plasmaferesis_Albunina"},//85
								{"data":"P_A_Frascos"},//86
								{"data":"P_A_Dias"},//87
								{"data":"P_A_Reacciones_Adversas"},//88
								{"data":"Plasmaferesis_PFC"},//89
								{"data":"P_PFC_Frascos"},//90
								{"data":"Apache_II"},//91
								{"data":"Fecha_CAF"},//92
								{"data":"Fecha_Intubacion"},//93
								{"data":"Dias_en_UCI"},//94
								{"data":"Dias_en_VMI"},//95
								{"data":"Modo_Ventilatorio"},//96
								{"data":"Fecha_Modo_Ventilatorio"},//97
								{"data":"Horas_Destete"},//98
								{"data":"Dias_Destete"},//99
								{"data":"Traqueostomia"},//100
								{"data":"Fecha_Traqueostomia"},//101
								{"data":"Fecha_Extubacion"},//102
								{"data":"Destino_Alta_UCI"},//103
								{"data":"Ultima_Actualizacion"},//104
								{"data":"ID"}//105
								],
							columnDefs : [ {
								"targets" : [ 0,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105],
								"visible" : false,
								"searchable" : false
							} ],
							"order" : [ [ 1, "asc" ] ],
							buttons : [
									{extend : 'copy',title : 'Lista Pacientes',
										exportOptions : {
											columns : [ 1,2,3,4,5,6,7,8,9,10,11,12 ]
										}},
									{extend : 'csv',title : 'Lista Pacientes',
										exportOptions : {
											columns : [ 1,2,3,4,5,6,7,8,9,10,11,12 ]
										}},
									{extend : 'excel',title : 'Lista Pacientes',
										exportOptions : {
											columns : [ 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105 ]
										}},
									{extend : 'pdf',title : 'Lista Pacientes',orientation: 'landscape',
										exportOptions : {
											columns : [ 1,2,3,4,5,6,7,8,9,10,11,12 ]
										}},
									{
										extend : 'print',
										title : 'Imprimir',
										exportOptions : {
											columns : [ 1,2,3,4,5,6,7,8,9,10,11,12 ]
										},
										customize : function(
												win) {
											$(win.document.body).addClass('white-bg');
											$(win.document.body).css('font-size','10px');

											$(win.document.body).find('table').addClass('compact').css('font-size','inherit');
										}
									} ]

						});

	$('body').on('click','.tbLista tr',function() {

		var tr = $(this);
		var row = table.row(tr);

		index = row.index();

		data = row.data();
		var estado = data.estado;
		var id = data.ID;
		console.log("ID: " + id);
		console.log(data);
		$("#btn-editar").addClass("editar");
		$("#btn-editar label").attr("rel", id);
		$("#btn-eliminar").addClass("eliminar");
		$("#deleteForm input[name=id]").val(id);
		$("#deleteForm #paciente").html(data.Nombres +', '+data.Apellidos);
		
		if ($(this).hasClass('selected')) {
			$(this).removeClass('selected');
		} else {
			table.$('tr.selected').removeClass('selected');
			$(this).addClass('selected');
		}

	});
	
	$("#btn-nuevo").on("click", function() {

		post(URI+ "emergencias/paciente/registrar",{id : ID_EMERGENCIA});
	});


	$('#btn-editar').on('click',function() {

		var ID = $("#btn-editar label").attr("rel");
		post(URI+ "emergencias/paciente/editar",{id_emergencias_registro_id : ID_EMERGENCIA, ID : ID});
	});


	$('#btn-paciente').on('click',function() {
		var id = $(this).find("label").attr("rel");
					
		post(URI+ "emergencias/paciente",{id : ID});
	});
	
	$("#deleteForm").validate({
		rules:{
			id: {required: true}
		},
		messages:{
			id : {required: "Ingrese el ID"}
		},
		submitHandler:function(form,event){

			event.preventDefault();

			$.ajax({
				data: $("#deleteForm").serialize(),
				url:URI+"emergencias/paciente/eliminar",
				method:"POST",
				dataType:"json",
				beforeSend: function(){
					$("#modalCargaGeneral").css("display","block");
                },
                error: function() {
                	$("#modalCargaGeneral").css("display","none");
                	$("#deleteModal").modal("hide");
                },
                success: function(data){
                	$("#modalCargaGeneral").css("display","none");
                	$("#deleteModal").modal("hide");
					$success = '<div class="alert alert-success"><h4 style="margin:0">Paciente eliminado exitosamente</h4></div>';
					$error = '<div class="alert alert-error"><h4 style="margin:0">El paciente no pudo ser eliminado</h4></div>';

					if(parseInt(data.status)==200) $message = $success;
					else $message = $error;

					$('html, body').animate({ scrollTop: 0 }, 'fast');
					$("#message").html($message);

					setTimeout(function(){location.reload();}, 2000);
                }
			});

		}
	});
	
});

}