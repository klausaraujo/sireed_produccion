var data;
$(document).ready(function () {
  var table = $('#dt-select').DataTable({
    data: lista,
    dom: '<"html5buttons"B>lTfgitp',
    columns: [
      {
        data: "nombre"
      },
      {
        data: "domicilio",
      },
      {
        data: "ubigeo",
      },
      {
        data: "nombre_encargado_titular",
      },
      {
        data: "estado",
        "render": function (data, type, row, meta) {
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
    $('#nombre').val(data.nombre);
    $('#direccion').val(data.domicilio);
    $('#codigoUbigeo').val(data.ubigeo);
    $('#numeroDniTitular').val(data.dni_encargado_titular);
    $('#nombreTitular').val(data.nombre_encargado_titular);
    $('#telefonoTitular').val(data.fono_encargado_titular);
    $('#numeroDniSuplente').val(data.dni_encargado_suplente);
    $('#nombreSuplente').val(data.nombre_encargado_suplente);
    $('#telefonoSuplente').val(data.fono_encargado_suplente);
    $("#estado").prop("checked", data.estado === '1' ? true : false);
    showModal(event, 'Editar Almacén');
  });

  $("#formRegistrar").validate({
    rules: {
      nombre: { required: true },
      direccion: { required: true },
      codigoUbigeo: { required: true },
      numeroDniTitular: { required: true },
      nombreTitular: { required: true },
      telefonoTitular: { required: true },
      numeroDniSuplente: { required: true },
      nombreSuplente: { required: true },
      telefonoSuplente: { required: true },
      departamento: { required: true },
      provincia: { required: true },
      distrito: { required: true },
    },
    messages: {
      nombre: { required: "Campo requerido" },
      direccion: { required: "Campo requerido" },
      codigoUbigeo: { required: "Campo requerido" },
      numeroDniTitular: { required: "Campo requerido" },
      nombreTitular: { required: "Campo requerido" },
      telefonoTitular: { required: "Campo requerido" },
      numeroDniSuplente: { required: "Campo requerido" },
      nombreSuplente: { required: "Campo requerido" },
      telefonoSuplente: { required: "Campo requerido" },
      departamento: { required: "Campo requerido" },
      provincia: { required: "Campo requerido" },
      distrito: { required: "Campo requerido" },
    },
    submitHandler: function (form, event) {
      var formData = ($("#formRegistrar").serializeArray());
      var nombreTitular = $("#nombreTitular").val();
      var nombreSuplente = $("#nombreSuplente").val();
      var codigoUbigeo = $("#codigoUbigeo").val();
      var param = {
        id: data.idalmacen,
        nombreTitular,
        nombreSuplente,
        codigoUbigeo
      };
      formData.forEach((item, index) => {
        param[item.name] = item.value;
      });

      $.ajax({
        type: 'POST',
        url: URI + 'inventario/main/guardarAlmacen',
        data: toQueryString(param),
        dataType: 'json',
        beforeSend: function () {

        },
        success: function (response) {
          $("#editarModal").modal('hide');
          const { status } = response;
          if (status === 200) {
            $("#formRegistrar")[0].reset();
            $('.btn-editar').removeClass('active');
            loadData(table);
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

  $("#departamento").change(function () {
    var id = $(this).val();
    if (id.length > 0) {
      $.ajax({
        data: {
          departamento: id
        },
        url: URI + "eventos/main/cargarProvincias",
        method: "POST",
        dataType: "json",
        beforeSend: function () {
          $("#provincia").html('<option value="">Cargando...</option>');
          $("#distrito").html('<option value="">--Elija Provincia--</option>');
        },
        success: function (data) {

          var $html = '<option value="">--Seleccione--</option>';
          $.each(data.lista, function (i, e) {

            $html += '<option value="'
              + e.Codigo_Provincia
              + '">'
              + e.Nombre
              + '</option>';
          });
          $("#provincia").html($html);

        }
      });

    }
  });

  $("#provincia")
    .change(
      function () {

        var id = $(this).val();
        var departamento = $("#departamento").val();

        if (id.length > 0 && departamento.length > 0) {

          $.ajax({
            data: {
              departamento: departamento,
              provincia: id
            },
            url: URI + "eventos/main/cargarDistritos",
            method: "POST",
            dataType: "json",
            beforeSend: function () {
              $("#distrito").html('<option value="">Cargando...</option>');
            },
            success: function (data) {

              var $html = '<option value="">--Seleccione--</option>';
              $.each(data.lista, function (i, e) {

                $html += '<option value="'
                  + e.Codigo_Distrito
                  + '">'
                  + e.Nombre
                  + '</option>';

              });
              $("#distrito").html($html);

            }
          });

        }
      });

    $("#distrito").change(function () {
      var distrito = $(this).val();
      var nombreDistrito = $(this).find('option:selected').text();
      var departamento = $("#departamento").val();
      var nombreDepartamento = $("#departamento option:selected").text();
      var provincia = $("#provincia").val();
      var nombreProvincia = $("#provincia option:selected").text();
      $("#codigoUbigeo").val(`${departamento}${provincia}${distrito}`)
      $("#nombreUbigeo").val(`${nombreDepartamento}, ${nombreProvincia}, ${nombreDistrito}`)
    });
});

function loadData(table) {
  $.ajax({
    type: 'POST',
    url: URI + 'inventario/main/obtenerAlmacenes',
    data: {},
    dataType: 'json',
    success: function (response) {
      const { data: { listaAlmacenes } } = response;
      table.clear();
      table.rows.add(listaAlmacenes).draw();
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