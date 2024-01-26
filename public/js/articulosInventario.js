$(document).ready(function () {
  var data;
  var validate;
  var tableArticulo = $('.tableArticulo').DataTable(
    {
      pageLength: 5,
      lengthMenu: [[5, 10, 25, 50, -1], [5, 10, 25, 50, "All"]],
      columns: [{
        "data": "descripcion"
      },
      {
        "data": "marca"
      },
      {
        "data": "modelo"
      },
      {
        "data": "clasificacion"
      },
      {
        "data": "estado"
      }
      ],
      "ajax": {
        url: URI + "inventario/articulos/obtenerListaBusqueda",
        type: "POST"
      }
    });

  $('.tableArticulo tbody').on('click', 'tr', function () {
    var tr = $(this);
    var row = tableArticulo.row(tr);
    index = row.index();
    data = row.data();

    if (data) {
      const { idarticulo, descripcion, idmarca, modelo, dimensiones, peso, idcolor, idclasificacion, idunidadmedida, imagen } = data;
      $('#siga').val("");
      $('#idarticulo').val(idarticulo);
      $('#nombre').val(descripcion);
      $('#marca').val(idmarca);
      $('#modelo').val(modelo);
      $('#dimensiones').val(dimensiones);
      $('#peso').val(peso);
      $('#color').val(idcolor);
      $('#clasificacion').val(idclasificacion);
      $('#medida').val(idunidadmedida);
      $("#imagen").attr("src", URI + "public/inventarios/fotos/" + imagen);
      $("#tableArticulo").modal('hide');
    }
  });

  var table = $('#tableArticuloInventariado').DataTable({
    data: lista,
    dom: '<"html5buttons"B>lTfgitp',
    columns: [
      { data: "descripcion" },
      { data: "marca" },
      { data: "modelo" },
      { data: "clasificacion" },
      { data: "codigo_patrimonial_original" },
      { data: "codigo_patrimonial_actual" },
      { data: "condicion" }
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

  $(".btn-nuevo").on('click', function (event) {
    $("#formRegistrar")[0].reset();
    initDates();
    data = {};
    showModal(event, 'Registrar Nuevo Articulo Inventariado');
  });

  $(".btn-buscar").on('click', function (event) {
    $("#tableArticulo").modal('show');
  });

  $('#tableArticulo').on('hidden.bs.modal', function () {
    $(document.body).addClass('modal-open');
    validate.resetForm();
  });

  $(".btn-editar").on('click', function (event) {
    initDates();
    const { idarticuloregistro, idarticulo, descripcion, idmarca, modelo, dimensiones, peso,
    idcolor, idclasificacion, idunidadmedida, imagen, fecha_registro, serie, estadoInventariado, codigo_patrimonial_original, codigo_patrimonial_actual, condicion } = data;
    $('#siga').val("");
    $('#idarticuloregistro').val(idarticuloregistro);
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
    $('#serie').val(serie);
    $('#patrimonioOriginal').val(codigo_patrimonial_original);
    $('#patrimonioActual').val(codigo_patrimonial_actual);
    if(fecha_registro) $('#fechaRegistro').val(toFormatHour(fecha_registro));
    $('#condicionActual').val(condicion);
    $("#estadoInventariado").prop("checked", estadoInventariado === '1' ? true : false);
    $('.btn-buscar').attr("disabled", "disabled");
    showModal(event, 'Editar Artículo Invetariado');
  });

  validate = $("#formRegistrar").validate({
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
      var formData = ($("#formRegistrar").serializeArray());
      $.ajax({
        type: 'POST',
        url: URI + 'inventario/articulos/guardarArticuloInventariado',
        data: formData,
        dataType: 'json',
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

  $('body').on('click', '#tableArticuloInventariado tr', function () {
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

function loadData(table) {
  $.ajax({
    type: 'POST',
    url: URI + 'inventario/articulos/obtenerListaInventariado',
    data: {},
    dataType: 'json',
    success: function (response) {
      const { data: { listaArticulos } } = response;
      table.clear();
      table.rows.add(listaArticulos).draw();
    }
  });
}

function showModal(event, title) {
  $("#editarModal").modal("show");
  $("#editarModalLabel").text(title);
  event.stopPropagation();
  event.stopImmediatePropagation();
}

function initDates() {
  $('.date').each(function () {
    $(this).datetimepicker({
      format: 'DD/MM/YYYY',
      maxDate: moment(),
      useCurrent: true,
      defaultDate: moment()
    });
  });
}

function toFormatHour(data = ""){
  const dateValue = (data? data.split(' ') : [''])[0];
  const date = dateValue.split('-');
  return dateValue? date[2]+'/'+date[1]+'/'+date[0] : dateValue
}