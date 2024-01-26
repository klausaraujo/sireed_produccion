var data;
$(document).ready(function () {
  var table = $('#dt-select').DataTable({
    data: lista,
    dom: '<"html5buttons"B>lTfgitp',
    columns: [
      { data: "descripcion"},
      { data: "marca"},
      { data: "modelo"},
      { data: "clasificacion"},
      { data: "imagen"},
      { data: "ficha"},
      {
        data: "estado",
        "render": function (data, type, row, meta) 
        {
          return (data == '1' ? 'Activo' : 'Inactivo');
        }
      }
    ],
    columnDefs: [],
    dom: 'Bfrtip',
    select: true,
    buttons: [{
      extend: 'copy',
      title: 'Lista General de Almacenes',
      exportOptions: { columns: [0, 1, 2] },
    },
    {
      extend: 'csv',
      title: 'Lista General de Almacenes',
      exportOptions: { columns: [0, 1, 2] },
    },
    {
      extend: 'excel',
      title: 'Lista General de Almacenes',
      exportOptions: { columns: [0, 1, 2] },
    },
    {
      extend: 'pdf',
      title: 'Lista General de Almacenes',
      orientation: 'landscape',
      exportOptions: { columns: [0, 1, 2] },
    },

    {
      extend: 'print',
      title: 'Lista General de Almacenes',
      exportOptions: { columns: [0, 1, 2] },
      customize: function (win) {
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

        if (style.styleSheet) {
          style.styleSheet.cssText = css;
        }
        else {
          style.appendChild(win.document.createTextNode(css));
        }

        head.appendChild(style);
      }
    }]
  });

  $("#file").change(function(event) {  
	  // RecurFadeIn();
	  readURL(this);
	});
	
	$("#file").on('click',function(event){
	  RecurFadeIn();
	});

  $("#datetimepicker").datetimepicker({
    format: "DD/MM/YYYY",
    maxDate: moment()
  });

  $("#btnBuscarTitular").on('click', function (event) {
    var documentNumber = $('#numeroDniTitular').val();
    searchPerson(documentNumber, '#nombreTitular');
  });

  $("#btnBuscarSuplente").on('click', function (event) {
    var documentNumber = $('#numeroDniSuplente').val();
    searchPerson(documentNumber, '#nombreSuplente');
  });

  $(".btn-nuevo").on('click', function (event) {
    data = {};
    showModal(event, 'Registrar Nuevo Almacén');
  });

  $(".btn-editar").on('click', function (event) {
      const { idarticulo, descripcion, idmarca, modelo, dimensiones, peso,
      idcolor, idclasificacion, idunidadmedida, imagen, estado} = data;
      $('#idarticulo').val(idarticulo);
      $('#nombre').val(descripcion);
      $('#marca').val(idmarca);
      $('#modelo').val(modelo);
      $('#dimensiones').val(dimensiones);
      $('#peso').val(peso);
      $('#color').val(idcolor);
      $('#clasificacion').val(idclasificacion);
      $('#medida').val(idunidadmedida);
      $('#imagen').attr('src', URI + 'public/inventarios/fotos/' + imagen);
      $("#estado").prop("checked", estado === '1' ? true : false);
      $('.btn-buscar').attr("disabled", "disabled");
      showModal(event, 'Editar Artículo Invetariado');
  });

  $("#formRegistrar").validate({
    rules: {
      // nombre: { required: true },
      // direccion: { required: true },
      // codigoUbigeo: { required: true },
      // numeroDniTitular: { required: true },
      // nombreTitular: { required: true },
      // telefonoTitular: { required: true },
      // numeroDniSuplente: { required: true },
      // nombreSuplente: { required: true },
      // telefonoSuplente: { required: true },
      // departamento: { required: true },
      // provincia: { required: true },
      // distrito: { required: true },
    },
    messages: {
      // nombre: { required: "Campo requerido" },
      // direccion: { required: "Campo requerido" },
      // codigoUbigeo: { required: "Campo requerido" },
      // numeroDniTitular: { required: "Campo requerido" },
      // nombreTitular: { required: "Campo requerido" },
      // telefonoTitular: { required: "Campo requerido" },
      // numeroDniSuplente: { required: "Campo requerido" },
      // nombreSuplente: { required: "Campo requerido" },
      // telefonoSuplente: { required: "Campo requerido" },
      // departamento: { required: "Campo requerido" },
      // provincia: { required: "Campo requerido" },
      // distrito: { required: "Campo requerido" },
    },
    submitHandler: function (form, event) {
      var formData = new FormData(document.getElementById("formRegistrar"));
			formData.append("file", document.getElementById("file"));
			formData.append("ficha", document.getElementById("ficha"));
      // var nombreTitular = $("#nombreTitular").val();
      // var nombreSuplente = $("#nombreSuplente").val();
      // var codigoUbigeo = $("#codigoUbigeo").val();
      // var param = {
      //   id: data.idalmacen,
      //   nombreTitular,
      //   nombreSuplente,
      //   codigoUbigeo
      // };
      // formData.forEach((item, index) => {
      //   param[item.name] = item.value;
      // });

      $.ajax({
        type: 'POST',
        url: URI + 'inventario/articulos/guardarArticulo',
        data: formData,
        method:"POST",
				dataType:"json",
				cache: false,
        contentType: false,
        processData: false,
        beforeSend: function () {

        },
        success: function (response) {
          $("#editarModal").modal('hide');
          const { status } = response;
          if (status === 200) {
            $("#formRegistrar")[0].reset();
            $('.btn-editar').removeClass('active');
            loadData(table)
            $('.alert-success').fadeIn(1000);
          } else {
            $('.alert-danger').fadeIn(1000);
          }
          setTimeout(() => {
            $('.alert').fadeOut(1000);
          }, 1500);
        }
      });
    }
  });

  $("#file").change(function(event) {  
	  readURL(this);
  });
  
  $("#ficha").change(function(event) {  
	  readURL(this, false);
	});
	
	function readURL(input, isImage = true) {  
	  if (input.files && input.files[0]) {   
	    var reader = new FileReader();
	    var filename = $(input).val();
	    filename = filename.substring(filename.lastIndexOf('\\')+1);
	    reader.onload = function(e) {
	      if(isImage) $('#imagen').attr('src', e.target.result);
	      $(`${isImage?  '.custom-file-img': '.custom-file'}`).text(filename);             
	    }
	    reader.readAsDataURL(input.files[0]);    
	  } 
	  $(".alert").removeClass("loading").hide();
	}
	
	function RecurFadeIn(){ 
	  // FadeInAlert("Esperando...");  
	}

  $('body').on('click', '#dt-select tr', function () {
    var tr = $(this);
    var row = table.row(tr);
    index = row.index();
    data = row.data();
    if (data) {
      $('.btn-editar').removeClass('active');
      $('.btn-editar').addClass('active');
      if ($(this).hasClass('selected')) {
        $('.btn-editar').removeClass('active');
        $(this).removeClass('selected');
      } else {
        table.$('tr.selected').removeClass('selected');
        $(this).addClass('selected');
      }
    }
  });

});

function readURL(input) {    
  if (input.files && input.files[0]) {   
    var reader = new FileReader();
    var filename = $("#file").val();
    filename = filename.substring(filename.lastIndexOf('\\')+1);
    reader.onload = function(e) {
      $('#blah').attr('src', e.target.result);
      $('#blah').hide();
      $('#blah').fadeIn(500);
      $('.custom-file-label').text(filename);             
    }
    reader.readAsDataURL(input.files[0]);    
  } 
  $(".alert").removeClass("loading").hide();
}

function FadeInAlert(text){
  $(".alert").show();
  $(".alert").text(text).addClass("loading");  
}

function RecurFadeIn(){ 
  // FadeInAlert("Esperando...");  
}

function loadData(table) {
  $.ajax({
    type: 'POST',
    url: URI + 'inventario/articulos/obtenerLista',
    data: {},
    dataType: 'json',
    success: function (response) {
      const { data: { listaArticulos } } = response;
      table.clear();
      table.rows.add(listaArticulos).draw();
    }
  });
}

function searchPerson(documentNumber, inputName) {
  $.ajax({
    url: URI + "brigadistas/curl",
    data: {
      type: '01',
      document: documentNumber
    },
    method: 'post',
    dataType: 'json',
    beforeSend: function () {
    },
    success: function (data) {
      const { data: { attributes: { nombres, apellido_paterno, apellido_materno } } } = data;
      $(inputName).val(nombres + ' ' + apellido_paterno + ' ' + apellido_materno);
    }
  });
}

function showModal(event, title) {
  $("#editarModal").modal("show");
  $("#editarModalLabel").text(title);
  event.stopPropagation();
  event.stopImmediatePropagation();
}

function toQueryString(params) {
  const query = Object.keys(params).map(key => key + '=' + params[key]).join('&');
  return query;
};