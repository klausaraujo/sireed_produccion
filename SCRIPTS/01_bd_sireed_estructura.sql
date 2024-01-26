/*
	BD_SIREED
	Creación de Tablas (Estructura Original y Limpia)
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

DROP VIEW IF EXISTS ceplan_ejecucion_tablero_mensual_actividades;
DROP VIEW IF EXISTS ceplan_ejecucion_tablero_mensual_general;
DROP VIEW IF EXISTS ceplan_ejecucion_tablero_mensual;
DROP VIEW IF EXISTS ceplan_actividades_presupuestales;
DROP VIEW IF EXISTS vista_tablero_control_05;
DROP VIEW IF EXISTS vista_tablero_control_04;
DROP VIEW IF EXISTS vista_tablero_control_03;
DROP VIEW IF EXISTS vista_tablero_control_02;
DROP VIEW IF EXISTS vista_tablero_control_01;
DROP VIEW IF EXISTS ubigeo_departamento;
DROP VIEW IF EXISTS ubigeo_provincia;
DROP VIEW IF EXISTS ubigeo_distrito;
DROP VIEW IF EXISTS programacion_tablero_semestre_01;
DROP VIEW IF EXISTS programacion_tablero_semestre_02;
DROP VIEW IF EXISTS programacion_tablero_trimestral;
DROP VIEW IF EXISTS ejecucion_tablero_semestre_01;
DROP VIEW IF EXISTS ejecucion_tablero_semestre_01_resumen;
DROP VIEW IF EXISTS ejecucion_tablero_semestre_02;
DROP VIEW IF EXISTS ejecucion_tablero_semestre_02_resumen;
DROP VIEW IF EXISTS programacion_tablero_vs_ejecucion_semestre_01;
DROP VIEW IF EXISTS programacion_tablero_vs_ejecucion_semestre_01_area;
DROP VIEW IF EXISTS programacion_tablero_vs_ejecucion_semestre_02;
DROP VIEW IF EXISTS programacion_tablero_vs_ejecucion_semestre_02_area;
DROP VIEW IF EXISTS ejecucion_tablero_trimestre_1;
DROP VIEW IF EXISTS ejecucion_tablero_trimestre_2;
DROP VIEW IF EXISTS ejecucion_tablero_trimestre_3;
DROP VIEW IF EXISTS ejecucion_tablero_trimestre_4;
DROP VIEW IF EXISTS ejecucion_tablero_trimestral;
DROP VIEW IF EXISTS ejecucion_tablero_trimestral_resumen;
DROP VIEW IF EXISTS programacion_tablero_vs_ejecucion_trimestral;
DROP VIEW IF EXISTS sobredemanda_new_porcentajes;
DROP VIEW IF EXISTS sobredemanda_new_porcentajes_top_inicial;
DROP VIEW IF EXISTS lista_items_hospitales_sobredemanda;
DROP VIEW IF EXISTS lista_items_hospitales_sobredemanda_new;
DROP VIEW IF EXISTS lista_items_hospitales_sobredemanda_reporte_lima;
DROP VIEW IF EXISTS lista_items_hospitales_sobredemanda_reporte_lima_new;
DROP VIEW IF EXISTS lista_items_hospitales_sobredemanda_reporte_regiones;
DROP VIEW IF EXISTS lista_items_hospitales_sobredemanda_reporte_regiones_new;
DROP VIEW IF EXISTS lista_eventos_cantidades_regiones;
DROP VIEW IF EXISTS lista_covid_paciente_new_examenes;
DROP VIEW IF EXISTS lista_enfermedades;
DROP VIEW IF EXISTS lista_enfermedades_preliminar;
DROP VIEW IF EXISTS lista_historiales_paciente;
DROP VIEW IF EXISTS lista_paciente_analisis;
DROP VIEW IF EXISTS lista_pacientes_basica;
DROP VIEW IF EXISTS lista_atenciones_eventos;
DROP VIEW IF EXISTS lista_paciente_estado;
DROP VIEW IF EXISTS lista_pacientes_reporte;
DROP VIEW IF EXISTS lista_paciente_casos;
DROP VIEW IF EXISTS lista_paciente_casos_fecha;
DROP VIEW IF EXISTS lista_pacientes_estados_criticos;
DROP VIEW IF EXISTS lista_ubigeo;
DROP VIEW IF EXISTS listado_basico_documentos;
DROP VIEW IF EXISTS new_dashboard_tablero_actividad_presupuestal;
DROP VIEW IF EXISTS new_dashboard_tablero_producto_presupuestal;
DROP VIEW IF EXISTS oferta_movil_tratamientos_pre;
DROP VIEW IF EXISTS oferta_movil_tratamientos_final;
DROP VIEW IF EXISTS getresumenregistrosrenarhed;
DROP VIEW IF EXISTS coe_eventos_indicador_2_horas_final;
DROP VIEW IF EXISTS coe_eventos_indicador_2_horas_pre;
DROP VIEW IF EXISTS coe_eventos_indicador_6_horas_final;
DROP VIEW IF EXISTS coe_eventos_indicador_6_horas_pre;
DROP VIEW IF EXISTS coe_eventos_indicador_eventos_pre;
DROP VIEW IF EXISTS coe_eventos_indicador_eventos_final;
DROP VIEW IF EXISTS coe_eventos_indicador_eventos_regiones;
DROP VIEW IF EXISTS coe_eventos_indicador_eventos_regiones_final_reportar;
DROP VIEW IF EXISTS coe_eventos_indicador_eventos_regiones_final;
DROP VIEW IF EXISTS coe_eventos_indicador_mayor_6_horas_final;
DROP VIEW IF EXISTS coe_eventos_indicador_mayor_6_horas_pre;
DROP VIEW IF EXISTS coe_eventos_indicador_mayor_6_horas_final_porcentual;
DROP VIEW IF EXISTS coe_eventos_indicador_6_horas_final_porcentual;
DROP VIEW IF EXISTS coe_eventos_indicador_2_horas_final_porcentual;
DROP VIEW IF EXISTS coe_eventos_indicador_agrupado_porcentual;
DROP VIEW IF EXISTS coe_eventos_indicador_agrupado;
DROP VIEW IF EXISTS coe_eventos_indicador_eventos_regiones_nivel;
DROP VIEW IF EXISTS coe_eventos_indicador_eventos_regiones_nivel_reportar;
DROP VIEW IF EXISTS coe_eventos_indicador_niveles;
DROP VIEW IF EXISTS coe_indicador_brigadistas_global;
DROP VIEW IF EXISTS coe_indicador_brigadistas_minsa_regiones;
DROP VIEW IF EXISTS coe_indicador_brigadistas_regionales_regiones_reportar;
DROP VIEW IF EXISTS coe_indicador_brigadistas_minsa_regiones_reportar;
DROP VIEW IF EXISTS coe_indicador_brigadistas_regionales_regiones;
DROP VIEW IF EXISTS lista_articulos_busqueda_farmacia;
DROP VIEW IF EXISTS lista_articulos_busqueda;
DROP VIEW IF EXISTS lista_articulos_farmacia_busqueda_is;
DROP VIEW IF EXISTS lista_articulos_inventariados_busqueda_is;
DROP VIEW IF EXISTS lista_articulos_farmacia_detalle_guia_salida;
DROP VIEW IF EXISTS lista_articulos_farmacia_busqueda;
DROP VIEW IF EXISTS lista_articulos_farmacia_busqueda_dashboard;
DROP VIEW IF EXISTS lista_articulos_farmacia_inventario;
DROP VIEW IF EXISTS lista_articulos_farmacia_inventario_final;
DROP VIEW IF EXISTS lista_articulos_general;
DROP VIEW IF EXISTS lista_articulos_farmacias_busqueda_dashboard_new;
DROP VIEW IF EXISTS lista_articulos_inventariados_busqueda;
DROP VIEW IF EXISTS lista_articulos_inventariados_busqueda_dashboard;
DROP VIEW IF EXISTS lista_articulos_inventariados_busqueda_dashboard_new;
DROP VIEW IF EXISTS lista_articulos_inventariados_detalle_guia_salida;
DROP VIEW IF EXISTS lista_articulos_ubicacion;
DROP VIEW IF EXISTS lista_articulos_ubicacion_pre;
DROP VIEW IF EXISTS lista_ingresos_detalle_ubicacion;
DROP VIEW IF EXISTS lista_articulos_inventariados;
DROP VIEW IF EXISTS lista_salidas_detalle_ubicacion;


DROP TABLE IF EXISTS anio_ejecucion;
CREATE TABLE anio_ejecucion  (
  Anio_Ejecucion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Predeterminado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  PRIMARY KEY (Anio_Ejecucion) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS brigadistas_banco;
CREATE TABLE brigadistas_banco  (
  brigadistas_banco_id int(11) NOT NULL AUTO_INCREMENT,
  banco varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (brigadistas_banco_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS brigadistas_capacitaciones;
CREATE TABLE brigadistas_capacitaciones  (
  brigadistas_capacitaciones_id int(11) NOT NULL AUTO_INCREMENT,
  brigadista_id int(11) NOT NULL,
  brigadistas_cursos_id int(11) NOT NULL,
  fecha_inicio datetime NULL DEFAULT NULL,
  fecha_fin datetime NULL DEFAULT NULL,
  horas int(11) NULL DEFAULT NULL,
  entidad varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (brigadistas_capacitaciones_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS brigadistas_carnet;
CREATE TABLE brigadistas_carnet  (
  brigadistas_carnet_id int(11) NOT NULL AUTO_INCREMENT,
  brigadista_id int(11) NULL DEFAULT NULL,
  brigadistas_certificacion_id int(11) NOT NULL,
  fecha_emision datetime NULL DEFAULT NULL,
  fecha_vencimiento datetime NULL DEFAULT NULL,
  brigadistas_profesion_id int(11) NULL DEFAULT NULL,
  brigadistas_especialidad_id int(11) NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (brigadistas_carnet_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 586 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS brigadistas_certificacion;
CREATE TABLE brigadistas_certificacion  (
  brigadistas_certificacion_id int(11) NOT NULL AUTO_INCREMENT,
  brigadista_id int(11) NOT NULL,
  tipo_certificacion char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_reconocimiento datetime NULL DEFAULT NULL,
  resolucion varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_inicio datetime NULL DEFAULT NULL,
  fecha_vencimiento datetime NULL DEFAULT NULL,
  archivo varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (brigadistas_certificacion_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 296 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS brigadistas_clusters;
CREATE TABLE brigadistas_clusters  (
  brigadistas_clusters_id int(11) NOT NULL AUTO_INCREMENT,
  brigadistas_evento_id int(11) NOT NULL,
  descripcion varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  descripcion_abreviada varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (brigadistas_clusters_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS brigadistas_contingencias;
CREATE TABLE brigadistas_contingencias  (
  brigadistas_contingencias_id int(11) NOT NULL AUTO_INCREMENT,
  brigadista_id int(11) NOT NULL,
  Evento_Registro_Numero int(11) NOT NULL,
  calificacion char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  lider char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fuerza_tarea char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  acciones_realizadas varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (brigadistas_contingencias_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS brigadistas_cursos;
CREATE TABLE brigadistas_cursos  (
  brigadistas_cursos_id int(11) NOT NULL AUTO_INCREMENT,
  nombre_curso varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (brigadistas_cursos_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS brigadistas_dependencias;
CREATE TABLE brigadistas_dependencias  (
  brigadistas_diresa_id smallint(4) NOT NULL AUTO_INCREMENT,
  diresa varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (brigadistas_diresa_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS brigadistas_detalle_especialidades;
CREATE TABLE brigadistas_detalle_especialidades  (
  brigadistas_detalle_especialidades_id int(11) NOT NULL AUTO_INCREMENT,
  brigadista_id int(11) NOT NULL,
  brigadistas_especialidad_id int(11) NOT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (brigadistas_detalle_especialidades_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 484 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS brigadistas_diresa;
CREATE TABLE brigadistas_diresa  (
  brigadistas_diresa_id smallint(4) NOT NULL AUTO_INCREMENT,
  brigadistas_diresa_nombre varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (brigadistas_diresa_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS brigadistas_emergencias;
CREATE TABLE brigadistas_emergencias  (
  brigadistas_emergencias_id int(11) NOT NULL AUTO_INCREMENT,
  brigadista_id int(11) NOT NULL,
  Evento_Registro_Numero int(11) NOT NULL,
  calificacion char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  lider char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fuerza_tarea char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  acciones_realizadas varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (brigadistas_emergencias_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS brigadistas_especialidad;
CREATE TABLE brigadistas_especialidad  (
  brigadistas_especialidad_id int(11) NOT NULL AUTO_INCREMENT,
  brigadistas_profesiones_id int(11) NULL DEFAULT NULL,
  especialidad varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (brigadistas_especialidad_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 121 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS brigadistas_eventos;
CREATE TABLE brigadistas_eventos  (
  brigadistas_evento_id int(11) NOT NULL AUTO_INCREMENT,
  descripcion varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  descripcion_abreviada varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_inicio datetime NULL DEFAULT NULL,
  fecha_fin datetime NULL DEFAULT NULL,
  activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (brigadistas_evento_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS brigadistas_laborales;
CREATE TABLE brigadistas_laborales  (
  brigadistas_laborales_id int(11) NOT NULL AUTO_INCREMENT,
  brigadista_id int(11) NOT NULL,
  brigadistas_diresa_id smallint(4) NOT NULL DEFAULT 0,
  Red varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  MicroRed varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  CodEESS varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  condicion_laboral char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  oficina varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  cargo varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  telefono_institucional varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  email_institucional varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (brigadistas_laborales_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 488 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS brigadistas_profesiones;
CREATE TABLE brigadistas_profesiones  (
  brigadistas_profesiones_id int(11) NOT NULL AUTO_INCREMENT,
  profesion varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (brigadistas_profesiones_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS brigadistas_registro;
CREATE TABLE brigadistas_registro  (
  brigadista_id int(11) NOT NULL AUTO_INCREMENT,
  apellidos varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  nombres varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Tipo_Documento_Codigo varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  documento_numero varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  genero char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_nacimiento datetime NULL DEFAULT NULL,
  edad tinyint(4) NULL DEFAULT NULL,
  estado_civil char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  foto varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  domicilio varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  ubigeo_domicilio varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  telefono_01 varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  telefono_02 varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  email varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  contacto_emergencia varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  telefono_emergencia_01 varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  telefono_emergencia_02 varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  parentesco char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  idioma_ingles char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  idioma_quechua char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  idioma_aimara char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  idioma_otros varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  grupo_sanguineo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  alergias varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  intervenciones_quirurgica varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  antecedentes_medicos varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  talla decimal(9, 2) NULL DEFAULT NULL,
  peso decimal(9, 2) NULL DEFAULT NULL,
  vacuna_tetano char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  vacuna_fiebre_amarilla char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  vacuna_hepatitis_b char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  vacuna_influenza char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  vacuna_sarampion char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  vacuna_papiloma char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  vacunas_otras varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  usuario_registro varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_registro datetime NULL DEFAULT NULL,
  usuario_actualizacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_actualizacion datetime NULL DEFAULT NULL,
  talla_casaca decimal(9, 2) NULL DEFAULT NULL,
  talla_calzado decimal(9, 2) NULL DEFAULT NULL,
  talla_polo decimal(9, 2) NULL DEFAULT NULL,
  talla_pantalon decimal(9, 2) NULL DEFAULT NULL,
  brigadistas_banco_id int(11) NOT NULL,
  numero_cuenta varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Categoria char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (brigadista_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS brigadistas_sedes;
CREATE TABLE brigadistas_sedes  (
  brigadistas_sedes_id int(11) NOT NULL AUTO_INCREMENT,
  brigadistas_evento_id int(11) NOT NULL,
  brigadistas_clusters_id int(11) NOT NULL,
  descripcion varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  descripcion_abreviada varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (brigadistas_sedes_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS brigadistas_sedes_asignacion;
CREATE TABLE brigadistas_sedes_asignacion  (
  brigadistas_sedes_asignacion_id int(11) NOT NULL AUTO_INCREMENT,
  brigadista_id int(11) NOT NULL,
  brigadistas_evento_id int(11) NOT NULL,
  brigadistas_clusters_id int(11) NOT NULL,
  brigadistas_sedes_id int(11) NOT NULL,
  activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (brigadistas_sedes_asignacion_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS chat_usuario;
CREATE TABLE chat_usuario  (
  idchat_usuario int(11) NOT NULL AUTO_INCREMENT,
  Codigo_usuario varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Nombre_Usuario varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Apellido_Usuario varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Guid varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Fecha_Creacion datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  Fecha_Actualizacion datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  Estado tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (idchat_usuario) USING BTREE,
  INDEX fk_codigo_usuario_idx(Codigo_usuario) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS cie10;
CREATE TABLE cie10  (
  Id_CIE10 varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Descripcion_CIE10 varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Grupo_CIE10 varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (Id_CIE10) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS cie10_grupos;
CREATE TABLE cie10_grupos  (
  Id_CIE10_Grupo varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  descripcion_grupo varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (Id_CIE10_Grupo) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS cie10_grupos_detalle;
CREATE TABLE cie10_grupos_detalle  (
  Id_CIE10_Grupo varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Id_CIE10_Grupo_detalle varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  descripcion_grupo_detalle varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (Id_CIE10_Grupo_detalle) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS cie10_grupos_detalle_agrupado;
CREATE TABLE cie10_grupos_detalle_agrupado  (
  Id smallint(6) NOT NULL AUTO_INCREMENT,
  Id_CIE10_Grupo varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Id_CIE10_Grupo_detalle varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Id_CIE10 varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (Id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS comando_registro;
CREATE TABLE comando_registro  (
  idcomando_registro int(11) NOT NULL AUTO_INCREMENT,
  codigo_region varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  archivo_reporte varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado int(1) NOT NULL DEFAULT 1,
  anio_ejecucion smallint(6) NULL DEFAULT NULL,
  codigo_mes varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (idcomando_registro) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS contingencias_estructura;
CREATE TABLE contingencias_estructura  (
  contingencias_estructura_id int(11) NOT NULL AUTO_INCREMENT,
  contingencias_estructura_descripcion varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (contingencias_estructura_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS contingencias_estructura_cuestionario;
CREATE TABLE contingencias_estructura_cuestionario  (
  contingencias_estructura_cuestionario_id int(11) NOT NULL AUTO_INCREMENT,
  contingencias_estructura_id int(11) NULL DEFAULT NULL,
  contingencias_estructura_cuestionario_descripcion varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  contingencias_estructura_cuestionario_valoracion decimal(9, 2) NULL DEFAULT 0.00,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (contingencias_estructura_cuestionario_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS contingencias_peligros;
CREATE TABLE contingencias_peligros  (
  contingencias_peligros_id int(11) NOT NULL AUTO_INCREMENT,
  contingencias_peligros_nombre varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (contingencias_peligros_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS contingencias_peligros_detalle;
CREATE TABLE contingencias_peligros_detalle  (
  contingencias_peligros_detalle_id int(11) NOT NULL AUTO_INCREMENT,
  contingencias_peligros_id int(11) NOT NULL,
  contingencias_peligros_detalle_nombre varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (contingencias_peligros_detalle_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS contingencias_peligros_detalle_items;
CREATE TABLE contingencias_peligros_detalle_items  (
  contingencias_peligros_detalle_items_id int(11) NOT NULL AUTO_INCREMENT,
  contingencias_peligros_detalle_id int(11) NOT NULL,
  contingencias_peligros_detalle_items_nombre varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (contingencias_peligros_detalle_items_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS contingencias_registro;
CREATE TABLE contingencias_registro  (
  contingencias_registro_id int(11) NOT NULL AUTO_INCREMENT,
  titulo varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  resolucion_numero varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  resolucion_file varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_publicacion datetime NULL DEFAULT NULL,
  presupuesto decimal(12, 2) NULL DEFAULT 0.00,
  plan_file varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  contingencias_peligros_id_natural int(11) NULL DEFAULT 0,
  contingencias_peligros_detalle_id_natural int(11) NULL DEFAULT 0,
  contingencias_peligros_detalle_items_id_natural int(11) NULL DEFAULT 0,
  contingencias_peligros_id_antropico int(11) NULL DEFAULT 0,
  contingencias_peligros_detalle_id_antropico int(11) NULL DEFAULT 0,
  contingencias_peligros_detalle_items_id_antropico int(11) NULL DEFAULT 0,
  idevento int(11) NULL DEFAULT NULL,
  vigencia_inicio datetime NULL DEFAULT NULL,
  vigencia_fin datetime NULL DEFAULT NULL,
  codigo_institucion smallint(6) NULL DEFAULT NULL,
  codigo_region varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  codigo_disa smallint(6) NULL DEFAULT NULL,
  codigo_red varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  codigo_micro_red varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  codigo_renipress varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  calificacion decimal(9, 2) NULL DEFAULT 0.00,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (contingencias_registro_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS contingencias_registro_evaluacion;
CREATE TABLE contingencias_registro_evaluacion  (
  contingencias_registro_evaluacion_id int(11) NOT NULL AUTO_INCREMENT,
  contingencias_registro_id int(11) NULL DEFAULT NULL,
  contingencias_estructura_cuestionario_id int(11) NULL DEFAULT NULL,
  contingencias_registro_evaluacion_respuesta char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  contingencias_registro_evaluacion_comentarios varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (contingencias_registro_evaluacion_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS contingencias_registro_eventos;
CREATE TABLE contingencias_registro_eventos  (
  idevento int(11) NOT NULL AUTO_INCREMENT,
  descripcion varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idevento) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS covid_examenes;
CREATE TABLE covid_examenes  (
  id_examen smallint(6) NOT NULL AUTO_INCREMENT,
  descripcion varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (id_examen) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS covid_paciente;
CREATE TABLE covid_paciente  (
  id_paciente smallint(6) NOT NULL AUTO_INCREMENT,
  id_renipress smallint(6) NOT NULL,
  id_documento char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  numero_documento varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  apellidos varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  nombres varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  sexo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  gestante char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  nacimiento datetime NULL DEFAULT NULL,
  edad smallint(6) NULL DEFAULT NULL,
  domicilio varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  dm char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  hta char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  erc char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  vih char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  les char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  asma char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  tbc char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  nm char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  icc char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  cv char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  otros_anteceentes char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  otros_antecedentes_texto varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  inicio_sintomas datetime NULL DEFAULT NULL,
  tiempo_emfermedad smallint(6) NULL DEFAULT NULL,
  fecha_hospitalizacion datetime NULL DEFAULT NULL,
  tos char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  malestar_general char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  dolor_garganta char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fiebre_escalosfrio char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  congestion_nasal char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  cefalea char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  dificultad_respiratoria char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  dolor_muscular char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  diarrea char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  dolor_articulaciones char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  nauseas_vomitos char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  dolor_pecho char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  ittitabilidad_confusion char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  dolor_abdominal char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  otros_sintomas char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  otros_sintomas_texto varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  pa varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fc smallint(6) NULL DEFAULT NULL,
  fr smallint(6) NULL DEFAULT NULL,
  so2 smallint(6) NULL DEFAULT NULL,
  fio2 smallint(6) NULL DEFAULT NULL,
  t decimal(9, 1) NULL DEFAULT NULL,
  examen_fisico varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (id_paciente) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS covid_paciente_historial;
CREATE TABLE covid_paciente_historial  (
  id_historial smallint(6) NOT NULL AUTO_INCREMENT,
  id_paciente smallint(6) NOT NULL,
  fecha datetime NULL DEFAULT NULL,
  positivo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  sospechoso char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  negativo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_muestra datetime NULL DEFAULT NULL,
  id_cie_10_1 varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  cie_10_1_descripcion varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  id_cie_10_2 varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  cie_10_2_descripcion varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  id_cie_10_3 varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  cie_10_3_descripcion varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  sala_con_oxigeno char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  sala_sin_oxigeno char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  uci_con_ventilacion char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  uci_sin_ventilacion char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  favorable char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  desfavorable char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fallecido char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  alta char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  PRIMARY KEY (id_historial) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS covid_paciente_new;
CREATE TABLE covid_paciente_new  (
  id_paciente smallint(6) NOT NULL AUTO_INCREMENT,
  id_renipress smallint(6) NOT NULL,
  numero_historia smallint(6) NULL DEFAULT 0,
  ingreso_hospital datetime NULL DEFAULT NULL,
  ingreso_uci datetime NULL DEFAULT NULL,
  id_documento char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  numero_documento varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  apellidos varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  nombres varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  sexo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  gestante char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  nacimiento datetime NULL DEFAULT NULL,
  edad smallint(6) NULL DEFAULT NULL,
  domicilio varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  idpais smallint(6) NULL DEFAULT NULL,
  ubigeo varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  telefono varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  talla smallint(6) NULL DEFAULT NULL,
  peso_ideal_vm decimal(9, 2) NULL DEFAULT NULL,
  peso_actual decimal(9, 2) NULL DEFAULT NULL,
  imc decimal(9, 1) NULL DEFAULT NULL,
  apache smallint(6) NULL DEFAULT NULL,
  sofa smallint(6) NULL DEFAULT NULL,
  tiempo_emfermedad smallint(6) NULL DEFAULT NULL,
  Evento_Registro_Numero int(11) NULL DEFAULT NULL,
  hta smallint(6) NULL DEFAULT 0,
  otras_enf_pulmonares smallint(6) NULL DEFAULT 0,
  cancer smallint(6) NULL DEFAULT 0,
  diabetes_mellitus smallint(6) NULL DEFAULT 0,
  asma smallint(6) NULL DEFAULT 0,
  acv_previo smallint(6) NULL DEFAULT 0,
  epoc_bronquiectasias smallint(6) NULL DEFAULT 0,
  falla_cardiaca smallint(6) NULL DEFAULT 0,
  fumador_cronico smallint(6) NULL DEFAULT 0,
  epid_fibrosis_pulmonar smallint(6) NULL DEFAULT 0,
  enf_renal_cronica smallint(6) NULL DEFAULT 0,
  vih smallint(6) NULL DEFAULT 0,
  viajes_pervios smallint(6) NULL DEFAULT 0,
  procedencia_viajes varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  contacto_personas_covid smallint(6) NULL DEFAULT 0,
  contacto_extranjeros smallint(6) NULL DEFAULT 0,
  procedencia_extranjeros varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  personal_salud smallint(6) NULL DEFAULT 0,
  rinorrea smallint(6) NULL DEFAULT 0,
  tos_con_flema smallint(6) NULL DEFAULT 0,
  disnea smallint(6) NULL DEFAULT 0,
  disnea_dias smallint(6) NULL DEFAULT NULL,
  fiebre smallint(6) NULL DEFAULT 0,
  fiebre_t_max decimal(9, 1) NULL DEFAULT NULL,
  fatiga smallint(6) NULL DEFAULT 0,
  escalofrios smallint(6) NULL DEFAULT 0,
  cefalea smallint(6) NULL DEFAULT 0,
  hemoptisis smallint(6) NULL DEFAULT 0,
  diarrea smallint(6) NULL DEFAULT 0,
  tos_seca smallint(6) NULL DEFAULT 0,
  mialgia_artralgia smallint(6) NULL DEFAULT 0,
  perdida_gusto smallint(6) NULL DEFAULT 0,
  perdida_olfato smallint(6) NULL DEFAULT 0,
  dolor_de_garganta smallint(6) NULL DEFAULT 0,
  hb decimal(9, 2) NULL DEFAULT NULL,
  ldh decimal(9, 2) NULL DEFAULT NULL,
  procalcitonina decimal(9, 2) NULL DEFAULT NULL,
  leucocitos decimal(9, 2) NULL DEFAULT NULL,
  tgo decimal(9, 2) NULL DEFAULT NULL,
  dimero_d decimal(9, 2) NULL DEFAULT NULL,
  linfocitos decimal(9, 2) NULL DEFAULT NULL,
  cpk decimal(9, 2) NULL DEFAULT NULL,
  plaquetas decimal(9, 2) NULL DEFAULT NULL,
  bt decimal(9, 2) NULL DEFAULT NULL,
  cpk_mb decimal(9, 2) NULL DEFAULT NULL,
  creatinina decimal(9, 2) NULL DEFAULT NULL,
  pcr decimal(9, 2) NULL DEFAULT NULL,
  troponina_t decimal(9, 2) NULL DEFAULT NULL,
  troponina_i decimal(9, 2) NULL DEFAULT NULL,
  pcr_rt_coronavirus smallint(6) NULL DEFAULT 0,
  pcr_rt_coronavirus_fecha datetime NULL DEFAULT NULL,
  pcr_rt_coronavirus_resultado varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  pcr_pt_influenza smallint(6) NULL DEFAULT 0,
  pcr_pt_influenza_fecha datetime NULL DEFAULT NULL,
  pcr_pt_influenza_resultado varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  primer_cultivo_secresion smallint(6) NULL DEFAULT 0,
  primer_cultivo_secresion_fecha datetime NULL DEFAULT NULL,
  primer_cultivo_secresion_resultado varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  filmarray_respiratorio smallint(6) NULL DEFAULT 0,
  filmarray_respiratorio_fecha datetime NULL DEFAULT NULL,
  filmarray_respiratorio_resultado varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  prueba_rapida smallint(6) NULL DEFAULT 0,
  prueba_rapida_fecha datetime NULL DEFAULT NULL,
  prueba_rapida_igg smallint(6) NULL DEFAULT 0,
  prueba_rapida_igm smallint(6) NULL DEFAULT 0,
  hemocultivo smallint(6) NULL DEFAULT 0,
  hemocultivo_fecha datetime NULL DEFAULT NULL,
  hemocultivo_resultado varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  otros_cultivos smallint(6) NULL DEFAULT 0,
  otros_cultivos_fecha datetime NULL DEFAULT NULL,
  otros_cultivos_resultado varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  ingreso_hospital_pa varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  ingreso_hospital_pam decimal(9, 2) NULL DEFAULT NULL,
  ingreso_hospital_fr decimal(9, 2) NULL DEFAULT NULL,
  ingreso_hospital_fc decimal(9, 2) NULL DEFAULT NULL,
  ingreso_hospital_t decimal(9, 2) NULL DEFAULT NULL,
  ingreso_hospital_sat02 decimal(9, 2) NULL DEFAULT NULL,
  ingreso_hospital_fio2 decimal(9, 2) NULL DEFAULT NULL,
  ingreso_hospital_pa02_fio02 decimal(9, 2) NULL DEFAULT NULL,
  ingreso_hospital_glasgow smallint(6) NULL DEFAULT NULL,
  ingreso_uci_pa varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  ingreso_uci_pam decimal(9, 2) NULL DEFAULT NULL,
  ingreso_uci_fr decimal(9, 2) NULL DEFAULT NULL,
  ingreso_uci_fc decimal(9, 2) NULL DEFAULT NULL,
  ingreso_uci_t decimal(9, 2) NULL DEFAULT NULL,
  ingreso_uci_sat02 decimal(9, 2) NULL DEFAULT NULL,
  ingreso_uci_fio2 decimal(9, 2) NULL DEFAULT NULL,
  ingreso_uci_pa02_fio02 decimal(9, 2) NULL DEFAULT NULL,
  ingreso_uci_glasgow smallint(6) NULL DEFAULT NULL,
  falla_cardiovascular smallint(6) NULL DEFAULT 0,
  falla_respiratorio smallint(6) NULL DEFAULT 0,
  falla_renal smallint(6) NULL DEFAULT 0,
  falla_hepatico smallint(6) NULL DEFAULT 0,
  falla_neurologico smallint(6) NULL DEFAULT 0,
  falla_coagulacion smallint(6) NULL DEFAULT 0,
  utilizacion_vmni smallint(6) NULL DEFAULT 0,
  utilizacion_vmni_horas decimal(9, 2) NULL DEFAULT NULL,
  utilizacion_canula smallint(6) NULL DEFAULT 0,
  utilizacion_canula_horas decimal(9, 2) NULL DEFAULT NULL,
  fecha_intubacion datetime NULL DEFAULT NULL,
  fecha_ingreso_vm datetime NULL DEFAULT NULL,
  fecha_primer_dia_prona datetime NULL DEFAULT NULL,
  dx_ards smallint(6) NULL DEFAULT NULL,
  esquema_prona_supina_horas01 decimal(9, 2) NULL DEFAULT NULL,
  esquema_prona_supina_horas02 decimal(9, 2) NULL DEFAULT NULL,
  uso_titular_peep smallint(6) NULL DEFAULT 0,
  pv_tools smallint(6) NULL DEFAULT 0,
  open_lung_tools smallint(6) NULL DEFAULT 0,
  peep_in_view smallint(6) NULL DEFAULT 0,
  otras varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  reclutamiento_alveolar smallint(6) NULL DEFAULT 0,
  peep_maximo decimal(9, 2) NULL DEFAULT NULL,
  po2_fio2_prepona decimal(9, 2) NULL DEFAULT NULL,
  pco2preprona decimal(9, 2) NULL DEFAULT NULL,
  po2_fio2_prona_4_horas decimal(9, 2) NULL DEFAULT NULL,
  po2_prona_4_horas decimal(9, 2) NULL DEFAULT NULL,
  po2_fio2_supino_4_horas decimal(9, 2) NULL DEFAULT NULL,
  pco2_supono_4_horas decimal(9, 2) NULL DEFAULT NULL,
  pam smallint(6) NULL DEFAULT 0,
  gc smallint(6) NULL DEFAULT 0,
  ic smallint(6) NULL DEFAULT 0,
  pvc smallint(6) NULL DEFAULT 0,
  ccs smallint(6) NULL DEFAULT 0,
  vpp smallint(6) NULL DEFAULT 0,
  sat02_venosa_central decimal(9, 2) NULL DEFAULT NULL,
  lactato decimal(9, 2) NULL DEFAULT NULL,
  vasopresor_inotropico varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  hemodinamia_fevi decimal(9, 2) NULL DEFAULT NULL,
  hemodinamia_ic decimal(9, 2) NULL DEFAULT NULL,
  hemodinamia_vci decimal(9, 2) NULL DEFAULT NULL,
  hemodinamia_otros_hallazgos varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  hemodinamia_sedacion varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  hemodinamia_analgesia varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  hemodinamia_relajante varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  hemodinamia_antibiotico varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  hemodinamia_antiviral varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  hidroxicloroquina smallint(6) NULL DEFAULT 0,
  hidroxicloroquina_dosis varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  descripcion_rx_torax varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_extubacion datetime NULL DEFAULT NULL,
  fecha_traqueostomia datetime NULL DEFAULT NULL,
  fecha_egreso_vm datetime NULL DEFAULT NULL,
  fecha_alta_uci datetime NULL DEFAULT NULL,
  condicion_vivo smallint(6) NULL DEFAULT 0,
  condicion_fallecido smallint(6) NULL DEFAULT 0,
  destino varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (id_paciente) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS covid_paciente_new_examenes;
CREATE TABLE covid_paciente_new_examenes  (
  id_paciente_examen smallint(6) NOT NULL AUTO_INCREMENT,
  id_paciente int(11) NOT NULL,
  id_examen int(11) NOT NULL,
  dia_1 decimal(9, 2) NULL DEFAULT NULL,
  dia_2 decimal(9, 2) NULL DEFAULT NULL,
  dia_3 decimal(9, 2) NULL DEFAULT NULL,
  dia_5 decimal(9, 2) NULL DEFAULT NULL,
  dia_7 decimal(9, 2) NULL DEFAULT NULL,
  activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (id_paciente_examen) USING BTREE,
  UNIQUE INDEX index_covid_paciente_new_examenes(id_paciente, id_examen) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS documentos_areas;
CREATE TABLE documentos_areas  (
  idarea int(11) NOT NULL AUTO_INCREMENT,
  area varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idarea) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS documentos_procedencia;
CREATE TABLE documentos_procedencia  (
  idprocedencia int(11) NOT NULL AUTO_INCREMENT,
  procedencia varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idprocedencia) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS documentos_registro;
CREATE TABLE documentos_registro  (
  idregistro int(11) NOT NULL AUTO_INCREMENT,
  anio smallint(6) NULL DEFAULT NULL,
  expediente varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  idprocedencia int(11) NOT NULL,
  fecha_recepcion datetime NULL DEFAULT NULL,
  plazo_respuesta smallint(6) NULL DEFAULT NULL,
  observaciones varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  situacion char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idregistro) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS documentos_registro_movimientos;
CREATE TABLE documentos_registro_movimientos  (
  idmovimiento int(11) NOT NULL AUTO_INCREMENT,
  idregistro int(11) NOT NULL,
  secuencia smallint(6) NULL DEFAULT NULL,
  fecha_movimiento datetime NULL DEFAULT NULL,
  observaciones varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idmovimiento) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS emergencias_registro;
CREATE TABLE emergencias_registro  (
  emergencias_registro_id int(11) NOT NULL AUTO_INCREMENT,
  titulo varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  resolucion varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  descripcion varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  region_codigos varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  region_nombres varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  usuario_registro varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  dgos char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  digerd char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  cdc char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  digesa char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  archivo varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_registro datetime NULL DEFAULT NULL,
  usuario_actualizacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_actualizacion datetime NULL DEFAULT NULL,
  usuario_cierre varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_cierre datetime NULL DEFAULT NULL,
  usuario_anulacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_anulacion datetime NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (emergencias_registro_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS emergencias_registro_atenciones;
CREATE TABLE emergencias_registro_atenciones  (
  emergencias_registro_atenciones_id int(11) NOT NULL AUTO_INCREMENT,
  emergencias_registro_id int(11) NOT NULL,
  Tipo_Documento_Codigo varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Documento_Numero varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  apellidos varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  nombres varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  edad tinyint(4) NULL DEFAULT NULL,
  sexo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  gestante char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  peso decimal(9, 2) NULL DEFAULT NULL,
  talla decimal(9, 2) NULL DEFAULT NULL,
  fecha_inicio_sintomas datetime NULL DEFAULT NULL,
  fecha_ingreso_hospital datetime NULL DEFAULT NULL,
  fecha_ingreso_uci datetime NULL DEFAULT NULL,
  DM char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  HTA char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  ERC char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  VIH char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  LES char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  asma char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  TBC char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  NM char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  otros varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  EDAs char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  EDAs_dias tinyint(4) NULL DEFAULT NULL,
  resfrio char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  resfrio_dias tinyint(4) NULL DEFAULT NULL,
  vacunas char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  vacunas_nombres varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  emergencia_horas tinyint(4) NULL DEFAULT NULL,
  emergencia_dias tinyint(4) NULL DEFAULT NULL,
  VMI char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  VMI_horas tinyint(4) NULL DEFAULT NULL,
  VMI_dias tinyint(4) NULL DEFAULT NULL,
  dolor_articular char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  dismunicion_fuerza_superior char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  dismunicion_fuerza_inferior char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  dificultad_respiratoria char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  dolor_extremidades char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  dificultad_marcha char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  cuadriplejia char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  escala_hughes char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  escala_glasgow char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  uci_habitual char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  uci_habitual_cama tinyint(4) NULL DEFAULT NULL,
  uci_contingencia char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  uci_contingencia_cama tinyint(4) NULL DEFAULT NULL,
  PAS tinyint(4) NULL DEFAULT NULL,
  PAD tinyint(4) NULL DEFAULT NULL,
  FC tinyint(4) NULL DEFAULT NULL,
  FR tinyint(4) NULL DEFAULT NULL,
  SO2 tinyint(4) NULL DEFAULT NULL,
  FIO2 tinyint(4) NULL DEFAULT NULL,
  T decimal(9, 1) NULL DEFAULT NULL,
  vasopresores_inotropicos char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  vasopresores_inotropicos_tipo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  ROT char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  fuerza_muscular char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  glasgow char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  electromiografia char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  electromiografia_fecha datetime NULL DEFAULT NULL,
  electromiografia_conclusion_1 varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  electromiografia_conclusion_2 varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  electromiografia_velocidad tinyint(4) NULL DEFAULT NULL,
  puncion_lumbar char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  puncion_lumbar_fecha datetime NULL DEFAULT NULL,
  puncion_lumbar_envio char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  tipificacion_viral char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  tipificacion_viral_fecha datetime NULL DEFAULT NULL,
  tipificacion_viral_envio char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  tipificacion_bacteriana char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  tipificacion_bacteriana_fecha datetime NULL DEFAULT NULL,
  tipificacion_bacteriana_envio char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  isopado_orofaringia char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  isopado_orofaringia_fecha datetime NULL DEFAULT NULL,
  isopado_orofaringia_envio char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  examen_heces char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  examen_heces_fecha datetime NULL DEFAULT NULL,
  examen_heces_envio char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  Na tinyint(4) NULL DEFAULT NULL,
  K decimal(9, 2) NULL DEFAULT NULL,
  Cl tinyint(4) NULL DEFAULT NULL,
  P decimal(9, 2) NULL DEFAULT NULL,
  Ca decimal(9, 2) NULL DEFAULT NULL,
  cie10_1 varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  cie10_1_presuntivo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  cie10_1_definitivo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  cie10_2 varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  cie10_2_presuntivo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  cie10_2_definitivo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  cie10_3 varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  cie10_3_presuntivo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  cie10_3_definitivo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  inmunoglobulina char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  inmunoglobulina_frascos tinyint(4) NULL DEFAULT NULL,
  inmunoglobulina_dias tinyint(4) NULL DEFAULT NULL,
  inmunoglobulina_reacciones varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  plasmaferesis_albumina char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  plasmaferesis_albumina_frascos tinyint(4) NULL DEFAULT NULL,
  plasmaferesis_albumina_dias tinyint(4) NULL DEFAULT NULL,
  plasmaferesis_albumina_reacciones varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  plasmaferesis_PFC char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  plasmaferesis_PFC_frascos tinyint(4) NULL DEFAULT NULL,
  plasmaferesis_PFC_dias tinyint(4) NULL DEFAULT NULL,
  plasmaferesis_PFC_reacciones varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Apache_II tinyint(4) NULL DEFAULT NULL,
  SOFA char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_caf datetime NULL DEFAULT NULL,
  fecha_intubacion datetime NULL DEFAULT NULL,
  dias_uci tinyint(4) NULL DEFAULT NULL,
  dias_VMI tinyint(4) NULL DEFAULT NULL,
  modo_ventilatorio char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  modo_ventilatorio_fecha datetime NULL DEFAULT NULL,
  destete_horas tinyint(4) NULL DEFAULT NULL,
  destete_dias tinyint(4) NULL DEFAULT NULL,
  traqueostomia char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  traqueostomia_fecha datetime NULL DEFAULT NULL,
  fecha_extubacion datetime NULL DEFAULT NULL,
  destino_alta_uci char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  condicion_paciente char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  usuario_registro varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_registro datetime NULL DEFAULT NULL,
  usuario_actualizacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_actualizacion datetime NULL DEFAULT NULL,
  estado_registro char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  PRIMARY KEY (emergencias_registro_atenciones_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 93 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS estado;
CREATE TABLE estado  (
  Codigo_Estado varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Descripcion_Estado varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (Codigo_Estado) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento;
CREATE TABLE evento  (
  Evento_Tipo_Codigo varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Evento_Codigo varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Evento_Nombre varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_acciones;
CREATE TABLE evento_acciones  (
  Evento_Registro_Numero int(11) NOT NULL,
  Evento_Acciones_Numero int(11) NOT NULL AUTO_INCREMENT,
  Evento_Acciones_Fecha datetime NULL DEFAULT NULL,
  Tipo_Accion_Codigo varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Tipo_Accion_Entidad_Codigo varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Evento_Acciones_Descripcion varchar(8000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Acciones_Region smallint(6) NULL DEFAULT 0,
  Evento_Acciones_Minsa smallint(6) NULL DEFAULT 0,
  Evento_Acciones_Emt_i smallint(6) NULL DEFAULT 0,
  Evento_Acciones_Emt_ii smallint(6) NULL DEFAULT 0,
  Evento_Acciones_Emt_iii smallint(6) NULL DEFAULT 0,
  Evento_Acciones_Celula_Especializada smallint(6) NULL DEFAULT 0,
  Evento_Acciones_Minsa_Samu smallint(6) NULL DEFAULT 0,
  Evento_Acciones_Salud_Minsa smallint(6) NULL DEFAULT 0,
  Evento_Acciones_Essalud smallint(6) NULL DEFAULT 0,
  Evento_Acciones_Municipalidades_Gores smallint(6) NULL DEFAULT 0,
  Evento_Acciones_Voluntarios smallint(6) NULL DEFAULT 0,
  Evento_Ambulancias_Minsa_Samu smallint(6) NULL DEFAULT 0,
  Evento_Ambulancias_Minsa smallint(6) NULL DEFAULT 0,
  Evento_Ambulancias_Essalud smallint(6) NULL DEFAULT 0,
  Evento_Ambulancias_Bomberos smallint(6) NULL DEFAULT 0,
  Evento_Ambulancias_Municipalidades_Gores smallint(6) NULL DEFAULT 0,
  Evento_Ambulancias_PNP_FFAA smallint(6) NULL DEFAULT 0,
  Evento_Ambulancianas_Privadas smallint(6) NULL DEFAULT 0,
  Evento_Maletin_Emergencias_Desastres smallint(6) NULL DEFAULT 0,
  Evento_Kit_Medicamentos_Insumos smallint(6) NULL DEFAULT 0,
  Evento_Acciones_Equipo_Biomedicos smallint(6) NULL DEFAULT 0,
  Evento_Acciones_Puesto_Comando smallint(6) NULL DEFAULT 0,
  Evento_Acciones_Ac_Victimas smallint(6) NULL DEFAULT 0,
  Evento_Acciones_Oferta_Movil_i smallint(6) NULL DEFAULT 0,
  Evento_Acciones_Oferta_Movil_ii smallint(6) NULL DEFAULT 0,
  Evento_Acciones_Oferta_Movil_iii smallint(6) NULL DEFAULT 0,
  Evento_Acciones_Hospital_Modular smallint(6) NULL DEFAULT 0,
  Evento_Banio_Quimico_Portatil smallint(6) NULL DEFAULT 0,
  Codigo_Usuario_Registro varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Fecha_Registro datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  Codigo_Usuario_Actualizacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Fecha_Actualizacion datetime NOT NULL,
  Evento_Rescatistas smallint(6) NULL DEFAULT 0,
  Evento_Medicos_Tacticos smallint(6) NULL DEFAULT 0,
  Evento_Acciones_PNP_FFAA smallint(6) NULL DEFAULT 0,
  Equipo_Tecnico_Movilizado_Diresa smallint(6) NULL DEFAULT 0,
  Equipo_Tecnico_Movilizado_Red smallint(6) NULL DEFAULT 0,
  Equipo_Tecnico_Movilizado_Diris smallint(6) NULL DEFAULT 0,
  Equipo_Tecnico_Movilizado_Ipress smallint(6) NULL DEFAULT 0,
  Equipo_Tecnico_Movilizado_Digerd smallint(6) NULL DEFAULT 0,
  Equipo_Tecnico_Movilizado_Minsa smallint(6) NULL DEFAULT 0,
  Equipo_Tecnico_Movilizado_Otros smallint(6) NULL DEFAULT 0,
  Evento_Acciones_Personal_Emt_i smallint(6) NULL DEFAULT 0,
  Evento_Acciones_Personal_Emt_ii smallint(6) NULL DEFAULT 0,
  Evento_Acciones_Personal_Emt_iii smallint(6) NULL DEFAULT 0,
  Evento_Acciones_Mochilas_Emergencia smallint(6) NULL DEFAULT 0,
  PRIMARY KEY (Evento_Acciones_Numero) USING BTREE,
  INDEX Busqueda_Acciones(Evento_Registro_Numero) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_asociado;
CREATE TABLE evento_asociado  (
  evento_asociado_id smallint(6) NOT NULL AUTO_INCREMENT,
  evento_asociado_descripcion varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  usuario_registro varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_registro datetime NULL DEFAULT NULL,
  usuario_actualizacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_actualizacion datetime NULL DEFAULT NULL,
  usuario_cierre varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_cierre datetime NULL DEFAULT NULL,
  usuario_anulacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_anulacion datetime NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (evento_asociado_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_avisos;
CREATE TABLE evento_avisos  (
  evento_avisos_id int(11) NOT NULL AUTO_INCREMENT,
  evento_avisos_numero smallint(6) NULL DEFAULT NULL,
  evento_avisos_anio smallint(6) NULL DEFAULT NULL,
  titulo varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  descripcion_general varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fuente varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  nivel_peligro char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_inicio datetime NULL DEFAULT NULL,
  fecha_fin datetime NULL DEFAULT NULL,
  enlace_url varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  archivo_adjunto varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  archivo_mapa varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  usuario_registro varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_registro datetime NULL DEFAULT NULL,
  usuario_actualizacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_actualizacion datetime NULL DEFAULT NULL,
  usuario_cierre varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_cierre datetime NULL DEFAULT NULL,
  usuario_anulacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_anulacion datetime NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  tipo_aviso char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  PRIMARY KEY (evento_avisos_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_avisos_monitoreo;
CREATE TABLE evento_avisos_monitoreo  (
  evento_avisos_monitoreo_id int(11) NOT NULL AUTO_INCREMENT,
  evento_avisos_id int(11) NULL DEFAULT NULL,
  codigo_departamento varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  codigo_renipress varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  evento_avisos_monitoreo_fecha datetime NULL DEFAULT NULL,
  evento_avisos_monitoreo_descripcion varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  evento_avisos_monitoreo_sireed varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  evento_avisos_monitoreo_sireed_anio varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  evento_avisos_tipo_accion_id int(11) NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (evento_avisos_monitoreo_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_avisos_recomendaciones;
CREATE TABLE evento_avisos_recomendaciones  (
  evento_avisos_recomndaciones_id int(11) NOT NULL AUTO_INCREMENT,
  evento_avisos_id int(11) NULL DEFAULT NULL,
  evento_avisos_direccion char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  evento_avisos_recomendacion varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (evento_avisos_recomndaciones_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 378 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_avisos_tipo_accion;
CREATE TABLE evento_avisos_tipo_accion  (
  evento_avisos_tipo_accion_id int(11) NOT NULL AUTO_INCREMENT,
  evento_avisos_tipo_accion_nombre varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (evento_avisos_tipo_accion_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_avisos_ubigeo;
CREATE TABLE evento_avisos_ubigeo  (
  evento_avisos_id_ubigeo int(11) NOT NULL AUTO_INCREMENT,
  evento_avisos_id int(11) NULL DEFAULT NULL,
  codigo_departamento varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  codigo_provincia varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (evento_avisos_id_ubigeo) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 945 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_danios;
CREATE TABLE evento_danios  (
  Evento_Registro_Numero int(11) NOT NULL,
  Evento_Danios_ID int(11) NOT NULL AUTO_INCREMENT,
  Evento_Danios_Fecha datetime NULL DEFAULT NULL,
  Evento_Danios_Fuente varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Danios_Descripcion varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Lesionados int(11) NULL DEFAULT NULL,
  Evento_Fallecidos int(11) NULL DEFAULT NULL,
  Evento_Desaparecidos int(11) NULL DEFAULT NULL,
  Evento_Viv_Afectadas int(11) NULL DEFAULT NULL,
  Evento_Viv_Inhabitables int(11) NULL DEFAULT NULL,
  Evento_Viv_Colapsadas int(11) NULL DEFAULT NULL,
  Evento_Per_Afectadas int(11) NULL DEFAULT NULL,
  Evento_Per_Damnificadas int(11) NULL DEFAULT NULL,
  Codigo_Usuario_Registro varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Fecha_Registro datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  Codigo_Usuario_Actualizacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Fecha_Actualizacion datetime NOT NULL,
  Primero char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  ultimo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  Evento_Danios_Nombre varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Danios_Institucion varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Danios_Telefono varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Danios_Correo varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (Evento_Danios_ID) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_danios_lesionados;
CREATE TABLE evento_danios_lesionados  (
  Evento_Registro_Numero int(11) NOT NULL,
  Evento_Danios_Lesionados_ID int(11) NOT NULL,
  Evento_Danios_Lesionados_Numero int(11) NOT NULL AUTO_INCREMENT,
  Evento_Danios_Lesionados_Fecha_Atencion datetime NULL DEFAULT NULL,
  Tipo_Documento_Codigo varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Lesionado_Documento_Numero varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Lesionado_Genero char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Lesionado_Gestante varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  Lesionado_Apellidos varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Lesionado_Nombres varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Lesionado_Edad tinyint(4) NULL DEFAULT NULL,
  Lesionado_Observaciones varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Nivel_Gravedad_Codigo varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Situacion_Codigo varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Lesionado_CIE10_Codigo varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Lesionado_Entidad_Salud_Codigo varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Lesionado_Entidad_Salud_Nombre varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Lesionado_Personal_Salud char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Codigo_Usuario_Registro varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Fecha_Registro datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  Codigo_Usuario_Actualizacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Fecha_Actualizacion datetime NULL DEFAULT NULL,
  ultimo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  Evento_Tipo_Entidad_Atencion_ID int(11) NULL DEFAULT NULL,
  PRIMARY KEY (Evento_Danios_Lesionados_Numero) USING BTREE,
  INDEX Busqueda_Lesionados(Evento_Registro_Numero) USING BTREE,
  CONSTRAINT fk_numero_registro_evento FOREIGN KEY (Evento_Registro_Numero) REFERENCES evento_registro (Evento_Registro_Numero) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_detalle;
CREATE TABLE evento_detalle  (
  Evento_Tipo_Codigo varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Evento_Codigo varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Evento_Detalle_Codigo varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Evento_Detalle_Nombre varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_entidad_salud;
CREATE TABLE evento_entidad_salud  (
  Evento_Registro_Numero int(11) NOT NULL,
  Evento_Entidad_salud int(11) NOT NULL AUTO_INCREMENT,
  fecha datetime NULL DEFAULT NULL,
  Evento_Entidad_Estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  CodEESS varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  agua tinyint(4) NULL DEFAULT NULL,
  desague tinyint(4) NULL DEFAULT NULL,
  energia_electrica tinyint(4) NULL DEFAULT NULL,
  conectividad tinyint(4) NULL DEFAULT NULL,
  radio tinyint(4) NULL DEFAULT NULL,
  fija tinyint(4) NULL DEFAULT NULL,
  celular tinyint(4) NULL DEFAULT NULL,
  internet tinyint(4) NULL DEFAULT NULL,
  techos char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  paredes char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  pisos char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  cercos char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  otros_lugares char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  inundacion char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  colapso char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  caida char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  goteras char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fisuras char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  otros_consecuencias char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  emergencia char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  banco char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  obstetrico char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  quirurgico char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  uci char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  diagnostico char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  esterilizacion char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  laboratorio char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  ambulancias char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  farmacia char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  consultorios char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  otros char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  recuperacion_operatividad datetime NULL DEFAULT NULL,
  continuidad_operativa char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  lugar varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  observaciones varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Codigo_Usuario_Registro varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Fecha_Registro datetime NULL DEFAULT NULL,
  Codigo_Usuario_Actualizacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Fecha_Actualizacion datetime NULL DEFAULT NULL,
  PRIMARY KEY (Evento_Entidad_salud) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 323 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_equipos;
CREATE TABLE evento_equipos  (
  evento_equipos_id int(11) NOT NULL AUTO_INCREMENT,
  evento_registro_numero int(11) NOT NULL,
  evento_equipos_descripcion varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  evento_equipos_fuente varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  evento_equipos_cantidad mediumint(9) NULL DEFAULT NULL,
  evento_equipos_prioridad char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (evento_equipos_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_estado;
CREATE TABLE evento_estado  (
  Evento_Estado_Codigo varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Evento_Estado_Descripcion varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (Evento_Estado_Codigo) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_ficha_atencion;
CREATE TABLE evento_ficha_atencion  (
  Evento_Ficha_Atencion_ID int(11) NOT NULL AUTO_INCREMENT,
  Evento_Ficha_Atencion_Fecha datetime NULL DEFAULT NULL,
  Evento_Ficha_Atencion_Hora_Cierre datetime NULL DEFAULT NULL,
  Evento_Ficha_Atencion_Usuario_Apertura varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Registro_Numero varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Evento_Ficha_Atencion_Estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Fecha_Registro datetime NOT NULL,
  Usuario_Actualizacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Fecha_Actualizacion datetime NULL DEFAULT NULL,
  PRIMARY KEY (Evento_Ficha_Atencion_ID) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_ficha_atencion_detalle;
CREATE TABLE evento_ficha_atencion_detalle  (
  Evento_Ficha_Atencion_Detalle_ID int(11) NOT NULL AUTO_INCREMENT,
  Evento_Registro_Numero int(11) NOT NULL,
  Evento_Ficha_Atencion_ID int(11) NOT NULL,
  Evento_Ficha_Atencion_Detalle_Paciente varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Tipo_Documento_Codigo varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Ficha_Atencion_Detalle_DNI varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Ficha_Atencion_Detalle_Edad int(11) NULL DEFAULT NULL,
  Evento_Ficha_Atencion_Detalle_Genero char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Ficha_Atencion_Detalle_Gestante char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Ficha_Atencion_Detalle_Personal_Salud char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Ficha_Atencion_Detalle_Procedencia varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Ficha_Atencion_Detalle_Clasificacion char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Ficha_Atencion_Detalle_Inicio_Sintomas datetime NULL DEFAULT NULL,
  Evento_Ficha_Atencion_Detalle_Diagnostico varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Ficha_Atencion_Detalle_CIE10_Codigo varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Ficha_Atencion_Detalle_Hora_Atencion datetime NULL DEFAULT NULL,
  Evento_Tipo_Entidad_Atencion_Oferta_Movil_ID int(11) NULL DEFAULT NULL,
  Evento_Ficha_Atencion_Detalle_Vacuna char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Ficha_Atencion_Detalle_Quimioprofilaxis char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Ficha_Atencion_Detalle_Medicamentos char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Ficha_Atencion_Detalle_Destino char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Ficha_Atencion_Detalle_Lugar_Traslado varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Ficha_Atencion_Detalle_Responsable varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Ficha_Atencion_Pais_Procedencia smallint(6) NOT NULL,
  Evento_Ficha_Atencion_Lugar_Residencia varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Usuario_Registro varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Fecha_Registro datetime NOT NULL,
  PRIMARY KEY (Evento_Ficha_Atencion_Detalle_ID) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1064 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_fuente;
CREATE TABLE evento_fuente  (
  Evento_Fuente_Codigo varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Evento_Fuente_Descripcion varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (Evento_Fuente_Codigo) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_medicamentos;
CREATE TABLE evento_medicamentos  (
  evento_medicamentos_id int(11) NOT NULL AUTO_INCREMENT,
  evento_registro_numero int(11) NOT NULL,
  evento_medicamentos_articulo varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  evento_medicamentos_presentacion_id smallint(6) NOT NULL,
  evento_medicamentos_cantidad mediumint(9) NULL DEFAULT NULL,
  evento_medicamentos_prioridad char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (evento_medicamentos_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_medicamentos_presentacion;
CREATE TABLE evento_medicamentos_presentacion  (
  evento_medicamentos_presentacion_id smallint(6) NOT NULL AUTO_INCREMENT,
  evento_medicamentos_presentacion varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (evento_medicamentos_presentacion_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_nivel;
CREATE TABLE evento_nivel  (
  Evento_Nivel_Codigo varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Evento_Nivel_Nombre varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Evento_Nivel_Nombre_Corto varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (Evento_Nivel_Codigo) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_recursos_humanos;
CREATE TABLE evento_recursos_humanos  (
  evento_recursos_humanos_id int(11) NOT NULL AUTO_INCREMENT,
  evento_registro_numero int(11) NOT NULL,
  evento_recursos_humanos_profesion varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  evento_recursos_humanos_especialidad varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  evento_recursos_humanos_cantidad mediumint(9) NULL DEFAULT NULL,
  evento_recursos_humanos_prioridad char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (evento_recursos_humanos_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_registro;
CREATE TABLE evento_registro  (
  Evento_Registro_Numero int(11) NOT NULL AUTO_INCREMENT,
  Evento_Secuencia smallint(6) NOT NULL DEFAULT 0,
  Evento_Tipo_Codigo varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Evento_Codigo varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Evento_Detalle_Codigo varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Evento_Nivel_Codigo varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Evento_Fuente_Codigo varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Evento_Descripcion varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Ubigeo varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Ubigeo_Descripcion varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Coordenadas varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Fecha datetime NULL DEFAULT NULL,
  Evento_Fecha_Registro datetime NULL DEFAULT CURRENT_TIMESTAMP,
  Evento_Usuario_Registro varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Fecha_Actualizacion datetime NULL DEFAULT NULL,
  Evento_Usuario_Actualizacion varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Fecha_Cierre datetime NULL DEFAULT NULL,
  Evento_Usuario_Cierre varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Fecha_Anulacion datetime NULL DEFAULT NULL,
  Evento_Usuario_Anulacion varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Latitud varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Longitud varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Latitud_Sismo varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Longitud_Sismo varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Profundidad varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Magnitud decimal(9, 1) NULL DEFAULT NULL,
  Evento_Intensidad varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Referencia varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Evento_Lugar varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Cantidad_Danio smallint(6) NULL DEFAULT 0,
  Cantidad_Lesionado int(11) NULL DEFAULT 0,
  Cantidad_Acciones smallint(6) NULL DEFAULT 0,
  Cantidad_EESS tinyint(4) NULL DEFAULT 0,
  Evento_Estado_Codigo varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  evento_consolidado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  zoom varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '13',
  evento_asociado_id smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (Evento_Registro_Numero) USING BTREE,
  FULLTEXT INDEX descripcion(Evento_Descripcion)
) ENGINE = InnoDB AUTO_INCREMENT = 4338 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_registro_files;
CREATE TABLE evento_registro_files  (
  Evento_Registro_Numero int(11) NOT NULL,
  Evento_Registro_File_Numero int(11) NOT NULL AUTO_INCREMENT,
  descripcion varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  file varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Evento_Fecha_Registro datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  Evento_Usuario_Registro varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Evento_Fecha_Actualizacion datetime NULL DEFAULT NULL,
  Evento_Usuario_Actualizacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (Evento_Registro_File_Numero) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_registro_imagen;
CREATE TABLE evento_registro_imagen  (
  Evento_Registro_Numero int(11) NOT NULL,
  Evento_Registro_Imagen_Numero int(11) NOT NULL AUTO_INCREMENT,
  descripcion varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  imagen varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Evento_Fecha_Registro datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  Evento_Usuario_Registro varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Evento_Fecha_Actualizacion datetime NULL DEFAULT NULL,
  Evento_Usuario_Actualizacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (Evento_Registro_Imagen_Numero) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1002 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_secuencia;
CREATE TABLE evento_secuencia  (
  anio smallint(6) NOT NULL,
  numero smallint(6) NOT NULL,
  super_evento smallint(6) NULL DEFAULT 1,
  numero_aviso smallint(6) NULL DEFAULT 1,
  anio_nombre_principal varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  anio_nombre_secundario varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_tipo;
CREATE TABLE evento_tipo  (
  Evento_Tipo_Codigo varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Evento_Tipo_Nombre varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (Evento_Tipo_Codigo) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_tipo_entidad_atencion;
CREATE TABLE evento_tipo_entidad_atencion  (
  Evento_Tipo_Entidad_Atencion_ID int(11) NOT NULL AUTO_INCREMENT,
  Evento_Tipo_Entidad_Atencion_Nombre varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (Evento_Tipo_Entidad_Atencion_ID) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_tipo_entidad_atencion_oferta_movil;
CREATE TABLE evento_tipo_entidad_atencion_oferta_movil  (
  Evento_Tipo_Entidad_Atencion_Oferta_Movil_ID int(11) NOT NULL AUTO_INCREMENT,
  Evento_Tipo_Entidad_Atencion_ID int(11) NOT NULL,
  Evento_Registro_Numero varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Evento_Tipo_Entidad_Atencion_Oferta_Movil_Nombre varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Usuario_Registro varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Fecha_Registro datetime NOT NULL,
  PRIMARY KEY (Evento_Tipo_Entidad_Atencion_Oferta_Movil_ID) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 163 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_tipo_entidad_atencion_registro;
CREATE TABLE evento_tipo_entidad_atencion_registro  (
  evento_tipo_entidad_atencion_registro_id int(11) NOT NULL AUTO_INCREMENT,
  evento_registro_numero int(11) NOT NULL,
  evento_tipo_entidad_atencion_registro_descripcion varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  evento_tipo_entidad_atencion_registro_prioridad smallint(6) NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (evento_tipo_entidad_atencion_registro_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_tipo_entidad_atencion_registro_atenciones;
CREATE TABLE evento_tipo_entidad_atencion_registro_atenciones  (
  Evento_Tipo_Entidad_Atencion_Registro_Atenciones_ID int(11) NOT NULL AUTO_INCREMENT,
  Evento_Tipo_Entidad_Atencion_Registro_ID int(11) NOT NULL,
  Evento_Tipo_Entidad_Atencion_Registro_Profesionales_ID int(11) NOT NULL,
  PreHospitalario char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  PreHospitalario_Entidad char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  PMA_Oferta_Movil char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  Evento_Tipo_Entidad_Atencion_Oferta_Movil_ID int(11) NULL DEFAULT NULL,
  Tipo_Documento_Codigo varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Tipo_Documento_Numero varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Paciente varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Nacimiento datetime NULL DEFAULT NULL,
  Edad smallint(6) NULL DEFAULT NULL,
  Genero char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Gestante char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  Discapacidad char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  Discapacidad_Tipo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  Apoderado varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Pais_Procedencia smallint(6) NULL DEFAULT NULL,
  Lugar_Residencia varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Enfermedad_Dias smallint(6) NULL DEFAULT 0,
  Enfermedad_Meses smallint(6) NULL DEFAULT 0,
  Fecha_Hora_Sintomas datetime NULL DEFAULT NULL,
  Fecha_Hora_Atencion datetime NULL DEFAULT NULL,
  PAS tinyint(4) NULL DEFAULT 0,
  PAD tinyint(4) NULL DEFAULT 0,
  FC tinyint(4) NULL DEFAULT 0,
  FR tinyint(4) NULL DEFAULT 0,
  SO2 tinyint(4) NULL DEFAULT 0,
  FIO2 tinyint(4) NULL DEFAULT 0,
  Dificultad_Respiratoria char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  Tos char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  Rinorrea char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  Fiebre char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  Nauseas char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  Vomitos char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  Dolor_Abdominal char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  Diarrea char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  alteracion_conciencia char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  dolor_pecho char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Otros varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Vac_Influenza char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  Vac_Fiebre char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  Vac_Sarampion char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  Vac_Hepatitis char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  Vac_Tetanos char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  Vac_Otros char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  Vac_Otros_Detalle varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Lab_Fecha_Toma datetime NULL DEFAULT NULL,
  Lab_Fecha_Envio datetime NULL DEFAULT NULL,
  Lab_Fecha_Recepcion datetime NULL DEFAULT NULL,
  Lab_Resultados varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Destino char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  Lugar_Referencia varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Responsable_Traslado varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Condicion_Alta char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  Estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  Clasificacion char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  IdCIE_10 varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  CIE10_Descripcion varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Observaciones varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  dx1_covid_01 char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  dx1_covid_02 char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  dx1_covid_03 char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  dx2_insuficiencia char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  dx2_neumonia char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  dx2_faringitis char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  dx2_shock char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  dx3_hta char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  dx3_dm char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  dx3_obesidad char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  dx3_insuficiencia_renal char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  dx3_otros char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  aislamiento char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  hospitalizacion char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  area_interna_01 char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  area_externa_01 char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  shock_trauma char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  uci char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  area_interna_02 char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  area_externa_02 char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  observacion char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  area_interna_03 char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  area_externa_03 char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (Evento_Tipo_Entidad_Atencion_Registro_Atenciones_ID) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_tipo_entidad_atencion_registro_atenciones_cie;
CREATE TABLE evento_tipo_entidad_atencion_registro_atenciones_cie  (
  evento_tipo_entidad_atencion_registro_atenciones_cie_id int(11) NOT NULL AUTO_INCREMENT,
  evento_tipo_entidad_atencion_registro_atenciones_id int(11) NOT NULL,
  id_cie10 varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  cie10_descripcion varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (evento_tipo_entidad_atencion_registro_atenciones_cie_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3343 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_tipo_entidad_atencion_registro_atenciones_tratamiento;
CREATE TABLE evento_tipo_entidad_atencion_registro_atenciones_tratamiento  (
  evento_tipo_entidad_atencion_registro_atenciones_tratamiento_id int(11) NOT NULL AUTO_INCREMENT,
  evento_tipo_entidad_atencion_registro_atenciones_id int(11) NOT NULL,
  evento_tipo_entidad_atencion_registro_medicamentos_id int(11) NOT NULL,
  total smallint(6) NULL DEFAULT NULL,
  cantidad smallint(6) NULL DEFAULT NULL,
  frecuencia char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  via smallint(6) NULL DEFAULT NULL,
  observaciones varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (evento_tipo_entidad_atencion_registro_atenciones_tratamiento_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1730 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_tipo_entidad_atencion_registro_medicamentos;
CREATE TABLE evento_tipo_entidad_atencion_registro_medicamentos  (
  evento_tipo_entidad_atencion_registro_medicamentos_id int(11) NOT NULL AUTO_INCREMENT,
  evento_tipo_entidad_atencion_registro_medicamentos_descripcion varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  evento_tipo_entidad_atencion_registro_medicamentos_unidad char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (evento_tipo_entidad_atencion_registro_medicamentos_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 320 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS evento_tipo_entidad_atencion_registro_profesionales;
CREATE TABLE evento_tipo_entidad_atencion_registro_profesionales  (
  evento_tipo_entidad_atencion_registro_profesionales_id int(11) NOT NULL AUTO_INCREMENT,
  tipo_documento_codigo varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  documento_numero varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  brigadistas_especialidad_id int(11) NULL DEFAULT NULL,
  nombre varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  colegiatura varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  rne varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  extranjero char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (evento_tipo_entidad_atencion_registro_profesionales_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 634 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS farmacia_almacen;
CREATE TABLE farmacia_almacen  (
  idalmacen int(11) NOT NULL AUTO_INCREMENT,
  nombre varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  domicilio varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  ubigeo varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  dni_encargado_titular varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  nombre_encargado_titular varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fono_encargado_titular varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  dni_encargado_suplente varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  nombre_encargado_suplente varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fono_encargado_suplente varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  coordenadas varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idalmacen) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS farmacia_articulo;
CREATE TABLE farmacia_articulo  (
  idarticulo int(11) NOT NULL AUTO_INCREMENT,
  codigo_siga varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  descripcion varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  idcategoria int(11) NOT NULL,
  idpresentacion int(11) NULL DEFAULT NULL,
  idunidadmedida int(11) NULL DEFAULT NULL,
  imagen varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  ficha varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_registro datetime NULL DEFAULT NULL,
  usuario_registro varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_actualizacion datetime NULL DEFAULT NULL,
  usuario_actualizacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idarticulo) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 219 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS farmacia_categoria;
CREATE TABLE farmacia_categoria  (
  idcategoria int(11) NOT NULL AUTO_INCREMENT,
  descripcion varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  abreviatura varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idcategoria) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS farmacia_guia_ingreso;
CREATE TABLE farmacia_guia_ingreso  (
  idingreso int(11) NOT NULL AUTO_INCREMENT,
  anio_ejecucion int(11) NULL DEFAULT NULL,
  numero_guia int(11) NULL DEFAULT NULL,
  fecha_emision datetime NULL DEFAULT NULL,
  idtipoingreso int(11) NOT NULL,
  idalmacen int(11) NOT NULL,
  fecha_ingreso datetime NULL DEFAULT NULL,
  fecha_registro datetime NULL DEFAULT CURRENT_TIMESTAMP,
  usuario_registro varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_actualizacion datetime NULL DEFAULT NULL,
  usuario_actualizacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_anulacion datetime NULL DEFAULT NULL,
  usuario_anulacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  observaciones varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  ingreso_file varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idingreso) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS farmacia_guia_ingreso_detalle;
CREATE TABLE farmacia_guia_ingreso_detalle  (
  iddetalle int(11) NOT NULL AUTO_INCREMENT,
  idingreso int(11) NOT NULL,
  idarticulo int(11) NOT NULL,
  numero_lote varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_vencimiento datetime NULL DEFAULT NULL,
  cantidad int(11) NULL DEFAULT NULL,
  costo_unitario decimal(18, 6) NULL DEFAULT 0.000000,
  observaciones varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (iddetalle) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 346 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS farmacia_guia_salida;
CREATE TABLE farmacia_guia_salida  (
  idsalida int(11) NOT NULL AUTO_INCREMENT,
  anio_ejecucion int(11) NULL DEFAULT NULL,
  numero_guia int(11) NULL DEFAULT NULL,
  fecha_emision datetime NULL DEFAULT NULL,
  idtipodesplazamiento int(11) NOT NULL,
  idalmacen int(11) NOT NULL,
  id_renipress smallint(6) NULL DEFAULT NULL,
  dni_receptor varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  nombre_receptor varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_salida datetime NULL DEFAULT NULL,
  fecha_registro datetime NULL DEFAULT NULL,
  usuario_registro varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_actualizacion datetime NULL DEFAULT NULL,
  usuario_actualizacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_anulacion datetime NULL DEFAULT NULL,
  usuario_anulacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  observaciones varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  salida_file varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  coordenadas_ipress varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  numero_sireed varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  coordenadas_sireed varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  ubigeo_sireed varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  correlativo_sireed varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idsalida) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS farmacia_guia_salida_detalle;
CREATE TABLE farmacia_guia_salida_detalle  (
  iddetalle int(11) NOT NULL AUTO_INCREMENT,
  idsalida int(11) NOT NULL,
  idarticulo int(11) NOT NULL,
  numero_lote varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_vencimiento datetime NULL DEFAULT NULL,
  cantidad int(11) NULL DEFAULT NULL,
  costo_unitario decimal(18, 6) NULL DEFAULT 0.000000,
  observaciones varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  caja int(11) NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (iddetalle) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS farmacia_presentacion;
CREATE TABLE farmacia_presentacion  (
  idpresentacion int(11) NOT NULL AUTO_INCREMENT,
  idviaadministracion int(11) NOT NULL,
  descripcion varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idpresentacion) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS farmacia_tipo_desplazamiento;
CREATE TABLE farmacia_tipo_desplazamiento  (
  idtipodesplazamiento int(11) NOT NULL AUTO_INCREMENT,
  descripcion varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idtipodesplazamiento) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS farmacia_tipo_ingreso;
CREATE TABLE farmacia_tipo_ingreso  (
  idtipoingreso int(11) NOT NULL AUTO_INCREMENT,
  descripcion varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idtipoingreso) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS farmacia_unidad_medida;
CREATE TABLE farmacia_unidad_medida  (
  idunidadmedida int(11) NOT NULL AUTO_INCREMENT,
  descripcion varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  abreviatura varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idunidadmedida) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS farmacia_via_administracion;
CREATE TABLE farmacia_via_administracion  (
  idviaadministracion int(11) NOT NULL AUTO_INCREMENT,
  descripcion varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idviaadministracion) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS foo;
CREATE TABLE foo  (
  creation_time datetime NULL DEFAULT CURRENT_TIMESTAMP,
  modification_time datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS hospitales_situaciones_emergencia;
CREATE TABLE hospitales_situaciones_emergencia  (
  hospitales_situaciones_emergencia_id int(11) NOT NULL AUTO_INCREMENT,
  hospitales_situaciones_nombre_id int(11) NOT NULL,
  dni_responsable_reporte varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  responsable_reporte varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  cmp_responsable_reporte varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  rne_responsable_reporte varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  dni_jefe_guardia varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  jefe_guardia varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  cmp_jefe_guardia varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  rne_jefe_guardia varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  telefono varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  fecha datetime NOT NULL,
  hora char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  usuario_registro varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_registro datetime NULL DEFAULT NULL,
  usuario_actualizacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_actualizacion datetime NULL DEFAULT NULL,
  nedocs_shock_trauma smallint(4) NULL DEFAULT 0,
  nedocs_medicina smallint(4) NULL DEFAULT 0,
  nedocs_cirugia smallint(4) NULL DEFAULT 0,
  nedocs_gineco_obstetricia smallint(4) NULL DEFAULT 0,
  nedocs_pedriatria smallint(4) NULL DEFAULT 0,
  nedocs_observacion_medicina smallint(4) NULL DEFAULT 0,
  nedocs_observacion_cirugia smallint(4) NULL DEFAULT 0,
  nedocs_observacion_gineco_obstetricia smallint(4) NULL DEFAULT 0,
  nedocs_observacion_pediatria smallint(4) NULL DEFAULT 0,
  nedocs_camas_emergencia_ocupadas_pasillos smallint(4) NULL DEFAULT 0,
  nedocs_camas_emergencia_ocupadas_areas_contigencia smallint(4) NULL DEFAULT 0,
  nedocs_camas_emergencia_ocupadas_emergencias_masivas_desastres smallint(4) NULL DEFAULT 0,
  nedocs_capacidad_expansion_emergencias_desastres smallint(4) NULL DEFAULT 0,
  nedocs_resultado smallint(4) NULL DEFAULT 0,
  nedocs_tiempo_espera_ensala_ultimo_paciente_llamado decimal(20, 2) NULL DEFAULT NULL,
  nedocs_tiempo_espera_mas_largo_por_cama_de_internacion decimal(20, 2) NULL DEFAULT NULL,
  nedocs_camas_ocupadas_emergencia smallint(4) NULL DEFAULT 0,
  nedocs_pacientes_espera_cama_internamiento smallint(4) NULL DEFAULT 0,
  nedocs_cantidad_total_pacientes_ventilacion smallint(4) NULL DEFAULT 0,
  nedocs_cantidad_total_camas_hospital smallint(4) NULL DEFAULT 0,
  emergencia_camas_ogti_shock_trauma smallint(4) NULL DEFAULT 0,
  emergencia_camas_ogti_medicina smallint(4) NULL DEFAULT 0,
  emergencia_camas_ogti_cirugia smallint(4) NULL DEFAULT 0,
  emergencia_camas_ogti_gineco_obstetricia smallint(4) NULL DEFAULT 0,
  emergencia_camas_ogti_pedriatria smallint(4) NULL DEFAULT 0,
  emergencia_camas_ogti_observacion_medicina smallint(4) NULL DEFAULT 0,
  emergencia_camas_ogti_observacion_cirugia smallint(4) NULL DEFAULT 0,
  emergencia_camas_ogti_observacion_gineco_obstetricia smallint(4) NULL DEFAULT 0,
  emergencia_camas_ogti_observacion_pediatria smallint(4) NULL DEFAULT 0,
  emergencia_camas_pasillos_shock_trauma smallint(4) NULL DEFAULT 0,
  emergencia_camas_pasillos_medicina smallint(4) NULL DEFAULT 0,
  emergencia_camas_pasillos_cirugia smallint(4) NULL DEFAULT 0,
  emergencia_camas_pasillos_gineco_obstetricia smallint(4) NULL DEFAULT 0,
  emergencia_camas_pasillos_pedriatria smallint(4) NULL DEFAULT 0,
  emergencia_camas_pasillos_observacion_medicina smallint(4) NULL DEFAULT 0,
  emergencia_camas_pasillos_observacion_cirugia smallint(4) NULL DEFAULT 0,
  emergencia_camas_pasillos_observacion_gineco_obstetricia smallint(4) NULL DEFAULT 0,
  emergencia_camas_pasillos_observacion_pediatria smallint(4) NULL DEFAULT 0,
  emergencia_camas_contingencia_shock_trauma smallint(4) NULL DEFAULT 0,
  emergencia_camas_contingencia_medicina smallint(4) NULL DEFAULT 0,
  emergencia_camas_contingencia_cirugia smallint(4) NULL DEFAULT 0,
  emergencia_camas_contingencia_gineco_obstetricia smallint(4) NULL DEFAULT 0,
  emergencia_camas_contingencia_pedriatria smallint(4) NULL DEFAULT 0,
  emergencia_camas_contingencia_observacion_medicina smallint(4) NULL DEFAULT 0,
  emergencia_camas_contingencia_observacion_cirugia smallint(4) NULL DEFAULT 0,
  emergencia_camas_contingencia_observacion_gineco_obstetricia smallint(4) NULL DEFAULT 0,
  emergencia_camas_contingencia_observacion_pediatria smallint(4) NULL DEFAULT 0,
  emergencia_camas_expansion_shock_trauma smallint(4) NULL DEFAULT 0,
  emergencia_camas_expansion_medicina smallint(4) NULL DEFAULT 0,
  emergencia_camas_expansion_cirugia smallint(4) NULL DEFAULT 0,
  emergencia_camas_expansion_gineco_obstetricia smallint(4) NULL DEFAULT 0,
  emergencia_camas_expansion_pedriatria smallint(4) NULL DEFAULT 0,
  emergencia_camas_expansion_observacion_medicina smallint(4) NULL DEFAULT 0,
  emergencia_camas_expansion_observacion_cirugia smallint(4) NULL DEFAULT 0,
  emergencia_camas_expansion_observacion_gineco_obstetricia smallint(4) NULL DEFAULT 0,
  emergencia_camas_expansion_observacion_pediatria smallint(4) NULL DEFAULT 0,
  emergencia_camas_desastres_shock_trauma smallint(4) NULL DEFAULT 0,
  emergencia_camas_desastres_medicina smallint(4) NULL DEFAULT 0,
  emergencia_camas_desastres_cirugia smallint(4) NULL DEFAULT 0,
  emergencia_camas_desastres_gineco_obstetricia smallint(4) NULL DEFAULT 0,
  emergencia_camas_desastres_pedriatria smallint(4) NULL DEFAULT 0,
  emergencia_camas_desastres_observacion_medicina smallint(4) NULL DEFAULT 0,
  emergencia_camas_desastres_observacion_cirugia smallint(4) NULL DEFAULT 0,
  emergencia_camas_desastres_observacion_gineco_obstetricia smallint(4) NULL DEFAULT 0,
  emergencia_camas_desastres_observacion_pediatria smallint(4) NULL DEFAULT 0,
  pedriatria_camas_ogti_uci_pedriatrica smallint(4) NULL DEFAULT 0,
  pedriatria_camas_ogti_ucin_pedriatrica smallint(4) NULL DEFAULT 0,
  pedriatria_camas_ogti_uci_neonato smallint(4) NULL DEFAULT 0,
  pedriatria_camas_ogti_ucin_neonato smallint(4) NULL DEFAULT 0,
  pedriatria_camas_ocupadas_uci_pedriatrica smallint(4) NULL DEFAULT 0,
  pedriatria_camas_ocupadas_ucin_pedriatrica smallint(4) NULL DEFAULT 0,
  pedriatria_camas_ocupadas_uci_neonato smallint(4) NULL DEFAULT 0,
  pedriatria_camas_ocupadas_ucin_neonato smallint(4) NULL DEFAULT 0,
  pedriatria_camas_pasillos_uci_pedriatrica smallint(4) NULL DEFAULT 0,
  pedriatria_camas_pasillos_ucin_pedriatrica smallint(4) NULL DEFAULT 0,
  pedriatria_camas_pasillos_uci_neonato smallint(4) NULL DEFAULT 0,
  pedriatria_camas_pasillos_ucin_neonato smallint(4) NULL DEFAULT 0,
  pedriatria_camas_contigencia_uci_pedriatrica smallint(4) NULL DEFAULT 0,
  pedriatria_camas_contigencia_ucin_pedriatrica smallint(4) NULL DEFAULT 0,
  pedriatria_camas_contigencia_uci_neonato smallint(4) NULL DEFAULT 0,
  pedriatria_camas_contigencia_ucin_neonato smallint(4) NULL DEFAULT 0,
  pedriatria_camas_expansion_uci_pedriatrica smallint(4) NULL DEFAULT 0,
  pedriatria_camas_expansion_ucin_pedriatrica smallint(4) NULL DEFAULT 0,
  pedriatria_camas_expansion_uci_neonato smallint(4) NULL DEFAULT 0,
  pedriatria_camas_expansion_ucin_neonato smallint(4) NULL DEFAULT 0,
  gineco_obstetricia_camas_ogti_uci smallint(4) NULL DEFAULT 0,
  gineco_obstetricia_camas_ogti_ucin smallint(4) NULL DEFAULT 0,
  gineco_obstetricia_camas_ocupadas_uci smallint(4) NULL DEFAULT 0,
  gineco_obstetricia_camas_ocupadas_ucin smallint(4) NULL DEFAULT 0,
  gineco_obstetricia_camas_pasillos_uci smallint(4) NULL DEFAULT 0,
  gineco_obstetricia_camas_pasillos_ucin smallint(4) NULL DEFAULT 0,
  gineco_obstetricia_camas_contingencia_uci smallint(4) NULL DEFAULT 0,
  gineco_obstetricia_camas_contingencia_ucin smallint(4) NULL DEFAULT 0,
  gineco_obstetricia_camas_expansion_uci smallint(4) NULL DEFAULT 0,
  gineco_obstetricia_camas_expansion_ucin smallint(4) NULL DEFAULT 0,
  sop_camas_disponibles_gineco_obstetrica smallint(4) NULL DEFAULT 0,
  sop_camas_disponibles_emergencia smallint(4) NULL DEFAULT 0,
  sop_camas_requeridos_gineco_obstetrica smallint(4) NULL DEFAULT 0,
  sop_camas_requeridos_emergencia smallint(4) NULL DEFAULT 0,
  sop_camas_portatiles_gineco_obstetrica smallint(4) NULL DEFAULT 0,
  sop_camas_portatiles_emergencia smallint(4) NULL DEFAULT 0,
  sop_camas_expansion_gineco_obstetrica smallint(4) NULL DEFAULT 0,
  sop_camas_expansion_emergencia smallint(4) NULL DEFAULT 0,
  personal_medico_programado_pediatria smallint(4) NULL DEFAULT 0,
  personal_medico_programado_cirugia_pediatrica smallint(4) NULL DEFAULT 0,
  personal_medico_programado_gineco_obstetricia smallint(4) NULL DEFAULT 0,
  personal_medico_programado_medicina_internista smallint(4) NULL DEFAULT 0,
  personal_medico_programado_medicina_cardiologo smallint(4) NULL DEFAULT 0,
  personal_medico_programado_medicina_nefrologo smallint(4) NULL DEFAULT 0,
  personal_medico_programado_cirugia_general smallint(4) NULL DEFAULT 0,
  personal_medico_programado_traumatologia smallint(4) NULL DEFAULT 0,
  personal_medico_programado_neurocirugia smallint(4) NULL DEFAULT 0,
  personal_medico_programado_cirugia_torax smallint(4) NULL DEFAULT 0,
  personal_medico_programado_medicina_intensiva smallint(4) NULL DEFAULT 0,
  personal_medico_programado_neonatologo smallint(4) NULL DEFAULT 0,
  personal_medico_programado_anestesiologo smallint(4) NULL DEFAULT 0,
  personal_medico_requerido_pediatria smallint(4) NULL DEFAULT 0,
  personal_medico_requerido_cirugia_pediatrica smallint(4) NULL DEFAULT 0,
  personal_medico_requerido_gineco_obstetricia smallint(4) NULL DEFAULT 0,
  personal_medico_requerido_medicina_internista smallint(4) NULL DEFAULT 0,
  personal_medico_requerido_medicina_cardiologo smallint(4) NULL DEFAULT 0,
  personal_medico_requerido_medicina_nefrologo smallint(4) NULL DEFAULT 0,
  personal_medico_requerido_cirugia_general smallint(4) NULL DEFAULT 0,
  personal_medico_requerido_traumatologia smallint(4) NULL DEFAULT 0,
  personal_medico_requerido_neurocirugia smallint(4) NULL DEFAULT 0,
  personal_medico_requerido_cirugia_torax smallint(4) NULL DEFAULT 0,
  personal_medico_requerido_medicina_intensiva smallint(4) NULL DEFAULT 0,
  personal_medico_requerido_neonatologo smallint(4) NULL DEFAULT 0,
  personal_medico_requerido_anestesiologo smallint(4) NULL DEFAULT 0,
  personal_medico_reten_pediatria smallint(4) NULL DEFAULT 0,
  personal_medico_reten_cirugia_pediatrica smallint(4) NULL DEFAULT 0,
  personal_medico_reten_gineco_obstetricia smallint(4) NULL DEFAULT 0,
  personal_medico_reten_medicina_internista smallint(4) NULL DEFAULT 0,
  personal_medico_reten_medicina_cardiologo smallint(4) NULL DEFAULT 0,
  personal_medico_reten_medicina_nefrologo smallint(4) NULL DEFAULT 0,
  personal_medico_reten_cirugia_general smallint(4) NULL DEFAULT 0,
  personal_medico_reten_traumatologia smallint(4) NULL DEFAULT 0,
  personal_medico_reten_neurocirugia smallint(4) NULL DEFAULT 0,
  personal_medico_reten_cirugia_torax smallint(4) NULL DEFAULT 0,
  personal_medico_reten_medicina_intensiva smallint(4) NULL DEFAULT 0,
  personal_medico_reten_neonatologo smallint(4) NULL DEFAULT 0,
  personal_medico_reten_anestesiologo smallint(4) NULL DEFAULT 0,
  personal_medico_portatiles_pediatria smallint(4) NULL DEFAULT 0,
  personal_medico_portatiles_cirugia_pediatrica smallint(4) NULL DEFAULT 0,
  personal_medico_portatiles_gineco_obstetricia smallint(4) NULL DEFAULT 0,
  personal_medico_portatiles_medicina_internista smallint(4) NULL DEFAULT 0,
  personal_medico_portatiles_medicina_cardiologo smallint(4) NULL DEFAULT 0,
  personal_medico_portatiles_medicina_nefrologo smallint(4) NULL DEFAULT 0,
  personal_medico_portatiles_cirugia_general smallint(4) NULL DEFAULT 0,
  personal_medico_portatiles_traumatologia smallint(4) NULL DEFAULT 0,
  personal_medico_portatiles_neurocirugia smallint(4) NULL DEFAULT 0,
  personal_medico_portatiles_cirugia_torax smallint(4) NULL DEFAULT 0,
  personal_medico_portatiles_medicina_intensiva smallint(4) NULL DEFAULT 0,
  personal_medico_portatiles_neonatologo smallint(4) NULL DEFAULT 0,
  personal_medico_portatiles_anestesiologo smallint(4) NULL DEFAULT 0,
  personal_no_medico_programado_enfermeras smallint(4) NULL DEFAULT 0,
  personal_no_medico_programado_tecnologos smallint(4) NULL DEFAULT 0,
  personal_no_medico_programado_obtetrices smallint(4) NULL DEFAULT 0,
  personal_no_medico_programado_tecnicos smallint(4) NULL DEFAULT 0,
  personal_no_medico_programado_social smallint(4) NULL DEFAULT 0,
  personal_no_medico_requerido_enfermeras smallint(4) NULL DEFAULT 0,
  personal_no_medico_requerido_tecnologos smallint(4) NULL DEFAULT 0,
  personal_no_medico_requerido_obtetrices smallint(4) NULL DEFAULT 0,
  personal_no_medico_requerido_tecnicos smallint(4) NULL DEFAULT 0,
  personal_no_medico_requerido_social smallint(4) NULL DEFAULT 0,
  personal_no_medico_reten_enfermeras smallint(4) NULL DEFAULT 0,
  personal_no_medico_reten_tecnologos smallint(4) NULL DEFAULT 0,
  personal_no_medico_reten_obtetrices smallint(4) NULL DEFAULT 0,
  personal_no_medico_reten_tecnicos smallint(4) NULL DEFAULT 0,
  personal_no_medico_reten_social smallint(4) NULL DEFAULT 0,
  personal_no_medico_portatiles_enfermeras smallint(4) NULL DEFAULT 0,
  personal_no_medico_portatiles_tecnologos smallint(4) NULL DEFAULT 0,
  personal_no_medico_portatiles_obtetrices smallint(4) NULL DEFAULT 0,
  personal_no_medico_portatiles_tecnicos smallint(4) NULL DEFAULT 0,
  personal_no_medico_portatiles_social smallint(4) NULL DEFAULT 0,
  banco_sangre_disponible_sangre smallint(4) NULL DEFAULT 0,
  banco_sangre_disponible_plasma smallint(4) NULL DEFAULT 0,
  banco_sangre_disponible_plaquetas smallint(4) NULL DEFAULT 0,
  banco_sangre_requerido_sangre smallint(4) NULL DEFAULT 0,
  banco_sangre_requerido_plasma smallint(4) NULL DEFAULT 0,
  banco_sangre_requerido_plaquetas smallint(4) NULL DEFAULT 0,
  banco_sangre_portatiles_sangre smallint(4) NULL DEFAULT 0,
  banco_sangre_portatiles_plasma smallint(4) NULL DEFAULT 0,
  banco_sangre_portatiles_plaquetas smallint(4) NULL DEFAULT 0,
  ventiladores_registrados_trauma_shock_adulto smallint(4) NULL DEFAULT 0,
  ventiladores_registrados_trauma_shock_pediatrico smallint(4) NULL DEFAULT 0,
  ventiladores_registrados_uci_adultos smallint(4) NULL DEFAULT 0,
  ventiladores_registrados_uci_pedriatrica smallint(4) NULL DEFAULT 0,
  ventiladores_registrados_uci_neonatologia smallint(4) NULL DEFAULT 0,
  ventiladores_registrados_sala_operaciones smallint(4) NULL DEFAULT 0,
  ventiladores_registrados_ucin_adulto smallint(4) NULL DEFAULT 0,
  ventiladores_registrados_ucin_pediatrico smallint(4) NULL DEFAULT 0,
  ventiladores_registrados_ucin_neonato smallint(4) NULL DEFAULT 0,
  ventiladores_registrados_uci_gineco_obstetricia smallint(4) NULL DEFAULT 0,
  ventiladores_registrados_ucin_gineco_obstetricia smallint(4) NULL DEFAULT 0,
  ventiladores_operativos_trauma_shock_adulto smallint(4) NULL DEFAULT 0,
  ventiladores_operativos_trauma_shock_pediatrico smallint(4) NULL DEFAULT 0,
  ventiladores_operativos_uci_adultos smallint(4) NULL DEFAULT 0,
  ventiladores_operativos_uci_pedriatrica smallint(4) NULL DEFAULT 0,
  ventiladores_operativos_uci_neonatologia smallint(4) NULL DEFAULT 0,
  ventiladores_operativos_sala_operaciones smallint(4) NULL DEFAULT 0,
  ventiladores_operativos_ucin_adulto smallint(4) NULL DEFAULT 0,
  ventiladores_operativos_ucin_pediatrico smallint(4) NULL DEFAULT 0,
  ventiladores_operativos_ucin_neonato smallint(4) NULL DEFAULT 0,
  ventiladores_operativos_uci_gineco_obstetricia smallint(4) NULL DEFAULT 0,
  ventiladores_operativos_ucin_gineco_obstetricia smallint(4) NULL DEFAULT 0,
  ventiladores_disponibles_trauma_shock_adulto smallint(4) NULL DEFAULT 0,
  ventiladores_disponibles_trauma_shock_pediatrico smallint(4) NULL DEFAULT 0,
  ventiladores_disponibles_uci_adultos smallint(4) NULL DEFAULT 0,
  ventiladores_disponibles_uci_pedriatrica smallint(4) NULL DEFAULT 0,
  ventiladores_disponibles_uci_neonatologia smallint(4) NULL DEFAULT 0,
  ventiladores_disponibles_sala_operaciones smallint(4) NULL DEFAULT 0,
  ventiladores_disponibles_ucin_adulto smallint(4) NULL DEFAULT 0,
  ventiladores_disponibles_ucin_pediatrico smallint(4) NULL DEFAULT 0,
  ventiladores_disponibles_ucin_neonato smallint(4) NULL DEFAULT 0,
  ventiladores_disponibles_uci_gineco_obstetricia smallint(4) NULL DEFAULT 0,
  ventiladores_disponibles_ucin_gineco_obstetricia smallint(4) NULL DEFAULT 0,
  ventiladores_alquilados_trauma_shock_adulto smallint(4) NULL DEFAULT 0,
  ventiladores_alquilados_trauma_shock_pediatrico smallint(4) NULL DEFAULT 0,
  ventiladores_alquilados_uci_adultos smallint(4) NULL DEFAULT 0,
  ventiladores_alquilados_uci_pedriatrica smallint(4) NULL DEFAULT 0,
  ventiladores_alquilados_uci_neonatologia smallint(4) NULL DEFAULT 0,
  ventiladores_alquilados_sala_operaciones smallint(4) NULL DEFAULT 0,
  ventiladores_alquilados_ucin_adulto smallint(4) NULL DEFAULT 0,
  ventiladores_alquilados_ucin_pediatrico smallint(4) NULL DEFAULT 0,
  ventiladores_alquilados_ucin_neonato smallint(4) NULL DEFAULT 0,
  ventiladores_alquilados_uci_gineco_obstetricia smallint(4) NULL DEFAULT 0,
  ventiladores_alquilados_ucin_gineco_obstetricia smallint(4) NULL DEFAULT 0,
  ventiladores_brecha_trauma_shock_adulto smallint(4) NULL DEFAULT 0,
  ventiladores_brecha_trauma_shock_pediatrico smallint(4) NULL DEFAULT 0,
  ventiladores_brecha_uci_adultos smallint(4) NULL DEFAULT 0,
  ventiladores_brecha_uci_pedriatrica smallint(4) NULL DEFAULT 0,
  ventiladores_brecha_uci_neonatologia smallint(4) NULL DEFAULT 0,
  ventiladores_brecha_sala_operaciones smallint(4) NULL DEFAULT 0,
  ventiladores_brecha_ucin_adulto smallint(4) NULL DEFAULT 0,
  ventiladores_brecha_ucin_pediatrico smallint(4) NULL DEFAULT 0,
  ventiladores_brecha_ucin_neonato smallint(4) NULL DEFAULT 0,
  ventiladores_brecha_uci_gineco_obstetricia smallint(4) NULL DEFAULT 0,
  ventiladores_brecha_ucin_gineco_obstetricia smallint(4) NULL DEFAULT 0,
  ventiladores_portatiles_trauma_shock_adulto smallint(4) NULL DEFAULT 0,
  ventiladores_portatiles_trauma_shock_pediatrico smallint(4) NULL DEFAULT 0,
  ventiladores_portatiles_uci_adultos smallint(4) NULL DEFAULT 0,
  ventiladores_portatiles_uci_pedriatrica smallint(4) NULL DEFAULT 0,
  ventiladores_portatiles_uci_neonatologia smallint(4) NULL DEFAULT 0,
  ventiladores_portatiles_sala_operaciones smallint(4) NULL DEFAULT 0,
  ventiladores_portatiles_ucin_adulto smallint(4) NULL DEFAULT 0,
  ventiladores_portatiles_ucin_pediatrico smallint(4) NULL DEFAULT 0,
  ventiladores_portatiles_ucin_neonato smallint(4) NULL DEFAULT 0,
  ventiladores_portatiles_uci_gineco_obstetricia smallint(4) NULL DEFAULT 0,
  ventiladores_portatiles_ucin_gineco_obstetricia smallint(4) NULL DEFAULT 0,
  ambulancias_tipo_i_registradas smallint(4) NULL DEFAULT 0,
  ambulancias_tipo_i_operaivas smallint(4) NULL DEFAULT 0,
  ambulancias_tipo_i_radio smallint(4) NULL DEFAULT 0,
  ambulancias_tipo_ii_registradas smallint(4) NULL DEFAULT 0,
  ambulancias_tipo_ii_operaivas smallint(4) NULL DEFAULT 0,
  ambulancias_tipo_ii_radio smallint(4) NULL DEFAULT 0,
  ambulancias_tipo_iii_registradas smallint(4) NULL DEFAULT 0,
  ambulancias_tipo_iii_operaivas smallint(4) NULL DEFAULT 0,
  ambulancias_tipo_iii_radio smallint(4) NULL DEFAULT 0,
  activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (hospitales_situaciones_emergencia_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS hospitales_situaciones_emergencia_ocurrencias;
CREATE TABLE hospitales_situaciones_emergencia_ocurrencias  (
  hospitales_situaciones_emergencia_ocurrencias_id int(11) NOT NULL AUTO_INCREMENT,
  hospitales_situaciones_emergencia_id int(11) NOT NULL,
  hospitales_situaciones_emergencia_fecha datetime NULL DEFAULT NULL,
  hospitales_situaciones_emergencia_ocurrencia varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (hospitales_situaciones_emergencia_ocurrencias_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS hospitales_situaciones_nombre;
CREATE TABLE hospitales_situaciones_nombre  (
  hospitales_situaciones_nombre_id int(11) NOT NULL AUTO_INCREMENT,
  hospitales_situaciones_nombre varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  CodEESS varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  covid char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (hospitales_situaciones_nombre_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS hospitales_sobredemanda;
CREATE TABLE hospitales_sobredemanda  (
  idsobredemanda int(11) NOT NULL AUTO_INCREMENT,
  hospitales_situaciones_nombre_id int(11) NULL DEFAULT NULL,
  codigo_region varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  emed_dni varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  emed_nombre varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  emed_ocupacion char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  emed_telefono varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  supervisor_dni varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  supervisor_nombre varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  supervisor_ocupacion char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  supervisor_telefono varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_reporte datetime NULL DEFAULT NULL,
  area_interna char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  area_externa char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  camas_hospitalizacion_covid_a smallint(6) NULL DEFAULT 0,
  camas_hospitalizacion_covid_b smallint(6) NULL DEFAULT 0,
  camas_hospitalizacion_covid_c smallint(6) NULL DEFAULT 0,
  camas_hospitalizacion_covid_total smallint(6) NULL DEFAULT 0,
  camas_uci_adultos_covid_d smallint(6) NULL DEFAULT 0,
  camas_uci_adultos_covid_e smallint(6) NULL DEFAULT 0,
  camas_uci_adultos_covid_f smallint(6) NULL DEFAULT 0,
  camas_uci_adultos_covid_total smallint(6) NULL DEFAULT 0,
  camas_uci_pediatrico_covid_h smallint(6) NULL DEFAULT 0,
  camas_uci_pediatrico_covid_i smallint(6) NULL DEFAULT 0,
  camas_uci_pediatrico_covid_j smallint(6) NULL DEFAULT 0,
  camas_uci_pediatrico_covid_total smallint(6) NULL DEFAULT 0,
  camas_uci_covid_total smallint(6) NULL DEFAULT 0,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idsobredemanda) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS hospitales_sobredemanda_fechas;
CREATE TABLE hospitales_sobredemanda_fechas  (
  idsobredemandafecha int(11) NOT NULL AUTO_INCREMENT,
  fecha_reporte datetime NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idsobredemandafecha) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 367 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS hospitales_sobredemanda_new;
CREATE TABLE hospitales_sobredemanda_new  (
  idsobredemanda int(11) NOT NULL AUTO_INCREMENT,
  hospitales_situaciones_nombre_id int(11) NULL DEFAULT 0,
  codigo_region varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00',
  emed_tipo_documento varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  emed_dni varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  emed_nombre varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  emed_ocupacion char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  emed_telefono varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  supervidor_tipo_documento varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  supervisor_dni varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  supervisor_nombre varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  supervisor_ocupacion char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  supervisor_telefono varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_reporte datetime NULL DEFAULT NULL,
  hospitalizacion_convencionales_h smallint(6) NULL DEFAULT 0,
  hospitalizacion_convencionales_u smallint(6) NULL DEFAULT 0,
  hospitalizacion_convencionales_o varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  hospitalizacion_covid_h smallint(6) NULL DEFAULT 0,
  hospitalizacion_covid_u smallint(6) NULL DEFAULT 0,
  hospitalizacion_covid_o varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  hospitalizacion_e_interna_h smallint(6) NULL DEFAULT 0,
  hospitalizacion_e_interna_u smallint(6) NULL DEFAULT 0,
  hospitalizacion_e_interna_o varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  hospitalizacion_e_externa_h smallint(6) NULL DEFAULT 0,
  hospitalizacion_e_externa_u smallint(6) NULL DEFAULT 0,
  hospitalizacion_e_externa_o varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  hospitalizacion_total_h smallint(6) NULL DEFAULT 0,
  hospitalizacion_total_u smallint(6) NULL DEFAULT 0,
  hospitalizacion_disponibles smallint(6) NULL DEFAULT 0,
  hospitalizacion_disponibles_momento smallint(6) NULL DEFAULT NULL,
  hospitalizacion_porcentaje_01 smallint(6) NULL DEFAULT 0,
  hospitalizacion_camas_01 smallint(6) NULL DEFAULT NULL,
  hospitalizacion_medicos_01 smallint(6) NULL DEFAULT NULL,
  hospitalizacion_indicador_01 decimal(9, 2) NULL DEFAULT NULL,
  hospitalizacion_observaciones_01 varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  hospitalizacion_camas_02 smallint(6) NULL DEFAULT NULL,
  hospitalizacion_enfermeras_02 smallint(6) NULL DEFAULT NULL,
  hospitalizacion_indicador_02 decimal(9, 2) NULL DEFAULT NULL,
  hospitalizacion_observaciones_02 varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  hospitalizacion_sospechosos_h_covid smallint(6) NULL DEFAULT 0,
  hospitalizacion_sospechosos_u_covid smallint(6) NULL DEFAULT 0,
  hospitalizacion_e_interna_h_covid smallint(6) NULL DEFAULT 0,
  hospitalizacion_e_interna_u_covid smallint(6) NULL DEFAULT 0,
  hospitalizacion_e_externa_h_covid smallint(6) NULL DEFAULT 0,
  hospitalizacion_e_externa_u_covid smallint(6) NULL DEFAULT 0,
  hospitalizacion_total_h_covid smallint(6) NULL DEFAULT 0,
  hospitalizacion_total_u_covid smallint(6) NULL DEFAULT 0,
  hospitalizacion_disponibles_covid smallint(6) NULL DEFAULT 0,
  hospitalizacion_porcentaje_02 smallint(6) NULL DEFAULT 0,
  emergencia_convencionales_h smallint(6) NULL DEFAULT 0,
  emergencia_convencionales_u smallint(6) NULL DEFAULT 0,
  emergencia_convencionales_o varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  emergencia_covid_h smallint(6) NULL DEFAULT 0,
  emergencia_covid_u smallint(6) NULL DEFAULT 0,
  emergencia_covid_o varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  emergencia_e_interna_h smallint(6) NULL DEFAULT 0,
  emergencia_e_interna_u smallint(6) NULL DEFAULT 0,
  emergencia_e_interna_o varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  emergencia_e_externa_h smallint(6) NULL DEFAULT 0,
  emergencia_e_externa_u smallint(6) NULL DEFAULT 0,
  emergencia_e_externa_o varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  emergencia_e_externa_02_h smallint(6) NULL DEFAULT NULL,
  emergencia_e_externa_02_u smallint(6) NULL DEFAULT NULL,
  emergencia_e_externa_o_02 varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  emergencia_e_externa_03_h smallint(6) NULL DEFAULT NULL,
  emergencia_e_externa_03_u smallint(6) NULL DEFAULT NULL,
  emergencia_e_externa_o_03 varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  emergencia_pacientes_01 smallint(6) NULL DEFAULT NULL,
  emergencia_pacientes_02 smallint(6) NULL DEFAULT NULL,
  emergencia_espera_u smallint(6) NULL DEFAULT 0,
  emergencia_espera_u_momento smallint(6) NULL DEFAULT NULL,
  emergencia_total_h smallint(6) NULL DEFAULT 0,
  emergencia_total_u smallint(6) NULL DEFAULT 0,
  emergencia_porcentaje_01 smallint(6) NULL DEFAULT 0,
  emergencia_camas_01 smallint(6) NULL DEFAULT NULL,
  emergencia_medicos_01 smallint(6) NULL DEFAULT NULL,
  emergencia_indicador_01 decimal(9, 2) NULL DEFAULT NULL,
  emergencia_observaciones_01 varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  emergencia_camas_02 smallint(6) NULL DEFAULT NULL,
  emergencia_enfermeras_02 smallint(6) NULL DEFAULT NULL,
  emergencia_indicador_02 decimal(9, 2) NULL DEFAULT NULL,
  emergencia_observaciones_02 varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  emergencia_disponibles smallint(6) NULL DEFAULT 0,
  emergencia_disponibles_momento smallint(6) NULL DEFAULT NULL,
  emergencia_sospechosos_h_covid smallint(6) NULL DEFAULT 0,
  emergencia_sospechosos_u_covid smallint(6) NULL DEFAULT 0,
  emergencia_e_interna_h_covid smallint(6) NULL DEFAULT 0,
  emergencia_e_interna_u_covid smallint(6) NULL DEFAULT 0,
  emergencia_e_externa_h_covid smallint(6) NULL DEFAULT 0,
  emergencia_e_externa_u_covid smallint(6) NULL DEFAULT 0,
  emergencia_espera_u_covid smallint(6) NULL DEFAULT 0,
  emergencia_total_h_covid smallint(6) NULL DEFAULT 0,
  emergencia_total_u_covid smallint(6) NULL DEFAULT 0,
  emergencia_disponibles_covid smallint(6) NULL DEFAULT 0,
  emergencia_porcentaje_02 smallint(6) NULL DEFAULT 0,
  criticos_convencionales_h smallint(6) NULL DEFAULT 0,
  criticos_convencionales_u smallint(6) NULL DEFAULT 0,
  criticos_convencionales_o varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  criticos_covid_h smallint(6) NULL DEFAULT 0,
  criticos_covid_u smallint(6) NULL DEFAULT 0,
  criticos_covid_o varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  criticos_e_interna_h smallint(6) NULL DEFAULT 0,
  criticos_e_interna_u smallint(6) NULL DEFAULT 0,
  criticos_e_interna_o varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  criticos_e_externa_h smallint(6) NULL DEFAULT 0,
  criticos_e_externa_u smallint(6) NULL DEFAULT 0,
  criticos_e_externa_o varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  criticos_espera_u smallint(6) NULL DEFAULT 0,
  criticos_espera_o varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  criticos_espera_u_momento smallint(6) NULL DEFAULT NULL,
  criticos_espera_u_momento_o varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  criticos_total_h smallint(6) NULL DEFAULT 0,
  criticos_total_u smallint(6) NULL DEFAULT 0,
  criticos_disponibles smallint(6) NULL DEFAULT 0,
  criticos_disponibles_momento smallint(6) NULL DEFAULT NULL,
  criticos_porcentaje_01 smallint(6) NULL DEFAULT 0,
  criticos_camas_01 smallint(6) NULL DEFAULT NULL,
  criticos_medicos_01 smallint(6) NULL DEFAULT NULL,
  criticos_indicador_01 decimal(9, 2) NULL DEFAULT NULL,
  criticos_observaciones_01 varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  criticos_camas_02 smallint(6) NULL DEFAULT NULL,
  criticos_enfermeras_02 smallint(6) NULL DEFAULT NULL,
  criticos_indicador_02 decimal(9, 2) NULL DEFAULT NULL,
  criticos_observaciones_02 varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  criticos_sospechosos_h_covid smallint(6) NULL DEFAULT 0,
  criticos_sospechosos_u_covid smallint(6) NULL DEFAULT 0,
  criticos_e_interna_h_covid smallint(6) NULL DEFAULT 0,
  criticos_e_interna_u_covid smallint(6) NULL DEFAULT 0,
  criticos_e_externa_h_covid smallint(6) NULL DEFAULT 0,
  criticos_e_externa_u_covid smallint(6) NULL DEFAULT 0,
  criticos_espera_u_covid smallint(6) NULL DEFAULT 0,
  criticos_total_h_covid smallint(6) NULL DEFAULT 0,
  criticos_total_u_covid smallint(6) NULL DEFAULT 0,
  criticos_disponibles_covid smallint(6) NULL DEFAULT 0,
  criticos_porcentaje_02 smallint(6) NULL DEFAULT 0,
  pediatricos_convencionales_h smallint(6) NULL DEFAULT 0,
  pediatricos_convencionales_u smallint(6) NULL DEFAULT 0,
  pediatricos_convencionales_o varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  pediatricos_covid_h smallint(6) NULL DEFAULT 0,
  pediatricos_covid_u smallint(6) NULL DEFAULT 0,
  pediatricos_covid_o varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  pediatricos_e_interna_h smallint(6) NULL DEFAULT 0,
  pediatricos_e_interna_u smallint(6) NULL DEFAULT 0,
  pediatricos_e_interna_o varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  pediatricos_e_externa_h smallint(6) NULL DEFAULT 0,
  pediatricos_e_externa_u smallint(6) NULL DEFAULT 0,
  pediatricos_e_externa_o varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  pediatricos_espera_u smallint(6) NULL DEFAULT 0,
  pediatricos_espera_o varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  pediatricos_espera_u_momento smallint(6) NULL DEFAULT NULL,
  pediatricos_espera_u_momento_o varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  pediatricos_paciente_01 smallint(6) NULL DEFAULT NULL,
  pediatricos_paciente_01_o varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  pediatricos_total_h smallint(6) NULL DEFAULT 0,
  pediatricos_total_u smallint(6) NULL DEFAULT 0,
  pediatricos_disponibles smallint(6) NULL DEFAULT 0,
  pediatricos_disponibles_momento smallint(6) NULL DEFAULT NULL,
  pediatricos_porcentaje_01 smallint(6) NULL DEFAULT 0,
  pediatricos_camas_01 smallint(6) NULL DEFAULT NULL,
  pediatricos_medicos_01 smallint(6) NULL DEFAULT NULL,
  pediatricos_indicador_01 decimal(9, 2) NULL DEFAULT NULL,
  pediatricos_observaciones_01 varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  pediatricos_camas_02 smallint(6) NULL DEFAULT NULL,
  pediatricos_enfermeras_02 smallint(6) NULL DEFAULT NULL,
  pediatricos_indicador_02 decimal(9, 2) NULL DEFAULT NULL,
  pediatricos_observaciones_02 varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  pediatricos_sospechosos_h_covid smallint(6) NULL DEFAULT 0,
  pediatricos_sospechosos_u_covid smallint(6) NULL DEFAULT 0,
  pediatricos_e_interna_h_covid smallint(6) NULL DEFAULT 0,
  pediatricos_e_interna_u_covid smallint(6) NULL DEFAULT 0,
  pediatricos_e_externa_h_covid smallint(6) NULL DEFAULT 0,
  pediatricos_e_externa_u_covid smallint(6) NULL DEFAULT 0,
  pediatricos_espera_u_covid smallint(6) NULL DEFAULT 0,
  pediatricos_total_h_covid smallint(6) NULL DEFAULT 0,
  pediatricos_total_u_covid smallint(6) NULL DEFAULT 0,
  pediatricos_disponibles_covid smallint(6) NULL DEFAULT 0,
  pediatricos_porcentaje_02 smallint(6) NULL DEFAULT 0,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idsobredemanda) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS indicador;
CREATE TABLE indicador  (
  Anio_Ejecucion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Indicador varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Nombre_Indicador varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Costo_Indicador decimal(18, 2) NULL DEFAULT NULL,
  Duracion_Dias int(11) NULL DEFAULT NULL,
  Fecha_Inicio datetime NULL DEFAULT NULL,
  Fecha_Fin datetime NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS indicadores_actividad;
CREATE TABLE indicadores_actividad  (
  idactividad int(11) NOT NULL AUTO_INCREMENT,
  anio_ejecucion smallint(6) NOT NULL,
  codigo_actividad varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  actividad varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idactividad) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS indicadores_ejecutora;
CREATE TABLE indicadores_ejecutora  (
  idejecutora int(11) NOT NULL AUTO_INCREMENT,
  codigo_region varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  esregion char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  codigo varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  nombre varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idejecutora) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 224 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS indicadores_matriz;
CREATE TABLE indicadores_matriz  (
  idmatriz int(11) NOT NULL AUTO_INCREMENT,
  anio_ejecucion smallint(6) NOT NULL,
  idproductoproyecto int(11) NOT NULL,
  idactividad int(11) NOT NULL,
  forma_calculo varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  accion char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idmatriz) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS indicadores_producto_proyecto;
CREATE TABLE indicadores_producto_proyecto  (
  idproductoproyecto int(11) NOT NULL AUTO_INCREMENT,
  anio_ejecucion smallint(6) NOT NULL,
  codigo_producto_proyecto varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  producto_proyecto varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idproductoproyecto) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS indicadores_registro;
CREATE TABLE indicadores_registro  (
  idregistro int(11) NOT NULL AUTO_INCREMENT,
  codigo_region varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  idejecutora int(11) NOT NULL,
  anio_ejecucion smallint(6) NOT NULL,
  codigo_mes varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_registro datetime NULL DEFAULT NULL,
  usuario_registro varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_actualizacion datetime NULL DEFAULT NULL,
  usuario_actualizacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_anulacion datetime NULL DEFAULT NULL,
  usuario_anulacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idregistro) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS indicadores_registro_detalle;
CREATE TABLE indicadores_registro_detalle  (
  idregistrodetalle int(11) NOT NULL AUTO_INCREMENT,
  idregistro int(11) NOT NULL,
  idmatriz int(11) NOT NULL,
  valor smallint(6) NULL DEFAULT NULL,
  comentarios varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idregistrodetalle) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS inventarios_almacen;
CREATE TABLE inventarios_almacen  (
  idalmacen int(11) NOT NULL AUTO_INCREMENT,
  nombre varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  domicilio varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  ubigeo varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  dni_encargado_titular varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  nombre_encargado_titular varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fono_encargado_titular varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  dni_encargado_suplente varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  nombre_encargado_suplente varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fono_encargado_suplente varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  coordenadas varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idalmacen) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS inventarios_articulo;
CREATE TABLE inventarios_articulo  (
  idarticulo int(11) NOT NULL AUTO_INCREMENT,
  codigo_siga varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  descripcion varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  idmarca int(11) NULL DEFAULT NULL,
  modelo varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  dimensiones varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  peso decimal(18, 4) NULL DEFAULT NULL,
  idcolor int(11) NULL DEFAULT NULL,
  idclasificacion int(11) NULL DEFAULT NULL,
  idunidadmedida int(11) NULL DEFAULT NULL,
  imagen varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  ficha varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_registro datetime NULL DEFAULT NULL,
  usuario_registro varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_actualizacion datetime NULL DEFAULT NULL,
  usuario_actualizacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  observaciones varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idarticulo) USING BTREE,
  INDEX idarticulo(idarticulo) USING BTREE,
  INDEX idmarca(idmarca) USING BTREE,
  INDEX idcolor(idcolor) USING BTREE,
  INDEX idclasificacion(idclasificacion) USING BTREE,
  INDEX idunidadmedida(idunidadmedida) USING BTREE,
  INDEX idunion(idarticulo, idmarca, idcolor, idclasificacion, idunidadmedida) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 697 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS inventarios_articulo_registro;
CREATE TABLE inventarios_articulo_registro  (
  idarticuloregistro int(11) NOT NULL AUTO_INCREMENT,
  idarticulo int(11) NULL DEFAULT NULL,
  serie varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  codigo_patrimonial_original varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  codigo_patrimonial_actual varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_registro datetime NULL DEFAULT NULL,
  usuario_registro varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_actualizacion datetime NULL DEFAULT NULL,
  usuario_actualizacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  condicion char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  costo_inicial decimal(18, 4) NULL DEFAULT 0.0000,
  orden int(11) NULL DEFAULT NULL,
  pecosa int(11) NULL DEFAULT NULL,
  codigo_activo varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  clasificador varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  observaciones varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  caracteristicas varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_compra datetime NULL DEFAULT NULL,
  anio_fabricacion smallint(6) NULL DEFAULT NULL,
  codigo_digerd varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  subcomponentes char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  idarticuloprincipal char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  PRIMARY KEY (idarticuloregistro) USING BTREE,
  INDEX idarticulo(idarticulo) USING BTREE,
  INDEX idarticuloregistro(idarticuloregistro) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17603 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS inventarios_articulo_registro_componentes;
CREATE TABLE inventarios_articulo_registro_componentes  (
  idarticuloregistrocomponentes int(11) NOT NULL AUTO_INCREMENT,
  idarticuloregistroprincipal int(11) NOT NULL,
  idarticuloregistrosubcomponente int(11) NOT NULL,
  PRIMARY KEY (idarticuloregistrocomponentes) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS inventarios_articulo_ubicacion;
CREATE TABLE inventarios_articulo_ubicacion  (
  idoperacion int(11) NOT NULL AUTO_INCREMENT,
  idarticuloregistro int(11) NOT NULL,
  operacion char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  anio_ejecucion smallint(6) NULL DEFAULT NULL,
  numero_guia smallint(6) NULL DEFAULT NULL,
  ubigeo varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  coordenadas varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idoperacion) USING BTREE,
  INDEX idarticuloregistro(idarticuloregistro) USING BTREE,
  INDEX idoperacion(idoperacion) USING BTREE,
  INDEX idarticuloregistro_idoperacion(idoperacion, idarticuloregistro) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17735 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS inventarios_clasificacion;
CREATE TABLE inventarios_clasificacion  (
  idclasificacion int(11) NOT NULL AUTO_INCREMENT,
  descripcion varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idclasificacion) USING BTREE,
  INDEX idclasificacion(idclasificacion) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS inventarios_color;
CREATE TABLE inventarios_color  (
  idcolor int(11) NOT NULL AUTO_INCREMENT,
  descripcion varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idcolor) USING BTREE,
  INDEX idcolor(idcolor) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS inventarios_guia_ingreso;
CREATE TABLE inventarios_guia_ingreso  (
  idingreso int(11) NOT NULL AUTO_INCREMENT,
  anio_ejecucion int(11) NULL DEFAULT NULL,
  numero_guia int(11) NULL DEFAULT NULL,
  fecha_emision datetime NULL DEFAULT NULL,
  idtipoingreso int(11) NOT NULL,
  idalmacen int(11) NOT NULL,
  fecha_ingreso datetime NULL DEFAULT NULL,
  fecha_registro datetime NULL DEFAULT CURRENT_TIMESTAMP,
  usuario_registro varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_actualizacion datetime NULL DEFAULT NULL,
  usuario_actualizacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_anulacion datetime NULL DEFAULT NULL,
  usuario_anulacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  observaciones varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  ingreso_file varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  anio_ejecucion_salida int(11) NULL DEFAULT NULL,
  numero_guia_salida int(11) NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idingreso) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 111 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS inventarios_guia_ingreso_detalle;
CREATE TABLE inventarios_guia_ingreso_detalle  (
  iddetalle int(11) NOT NULL AUTO_INCREMENT,
  idingreso int(11) NOT NULL,
  idarticuloregistro int(11) NOT NULL,
  unidad int(11) NULL DEFAULT 1,
  costo_unitario decimal(18, 5) NULL DEFAULT 0.00000,
  observaciones varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (iddetalle) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10876 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS inventarios_guia_salida;
CREATE TABLE inventarios_guia_salida  (
  idsalida int(11) NOT NULL AUTO_INCREMENT,
  anio_ejecucion int(11) NULL DEFAULT NULL,
  numero_guia int(11) NULL DEFAULT NULL,
  fecha_emision datetime NULL DEFAULT NULL,
  idtipodesplazamiento int(11) NOT NULL,
  idalmacen int(11) NOT NULL,
  id_renipress smallint(6) NULL DEFAULT NULL,
  dni_receptor varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  nombre_receptor varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_salida datetime NULL DEFAULT NULL,
  fecha_registro datetime NULL DEFAULT CURRENT_TIMESTAMP,
  usuario_registro varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_actualizacion datetime NULL DEFAULT NULL,
  usuario_actualizacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_anulacion datetime NULL DEFAULT NULL,
  usuario_anulacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  observaciones varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  salida_file varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  coordenadas_ipress varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  numero_sireed varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  coordenadas_sireed varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  ubigeo_sireed varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  devuelto char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  correlativo_sireed varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (idsalida) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS inventarios_guia_salida_detalle;
CREATE TABLE inventarios_guia_salida_detalle  (
  iddetalle int(11) NOT NULL AUTO_INCREMENT,
  idsalida int(11) NOT NULL,
  idarticuloregistro int(11) NOT NULL,
  unidad int(11) NULL DEFAULT -1,
  costo_unitario decimal(18, 5) NULL DEFAULT 0.00000,
  observaciones varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (iddetalle) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 578 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS inventarios_guia_salida_detalle_devolucion;
CREATE TABLE inventarios_guia_salida_detalle_devolucion  (
  iddetalle int(11) NOT NULL AUTO_INCREMENT,
  idsalida int(11) NOT NULL,
  idarticuloregistro int(11) NOT NULL,
  unidad int(11) NULL DEFAULT 1,
  costo_unitario decimal(18, 5) NULL DEFAULT 0.00000,
  observaciones varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (iddetalle) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS inventarios_marca;
CREATE TABLE inventarios_marca  (
  idmarca int(11) NOT NULL AUTO_INCREMENT,
  descripcion varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_registro datetime NULL DEFAULT CURRENT_TIMESTAMP,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idmarca) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18007 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS inventarios_tipo_desplazamiento;
CREATE TABLE inventarios_tipo_desplazamiento  (
  idtipodesplazamiento int(11) NOT NULL AUTO_INCREMENT,
  descripcion varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idtipodesplazamiento) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS inventarios_tipo_ingreso;
CREATE TABLE inventarios_tipo_ingreso  (
  idtipoingreso int(11) NOT NULL AUTO_INCREMENT,
  descripcion varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idtipoingreso) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS inventarios_unidad_medida;
CREATE TABLE inventarios_unidad_medida  (
  idunidadmedida int(11) NOT NULL AUTO_INCREMENT,
  descripcion varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  abreviatura varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (idunidadmedida) USING BTREE,
  INDEX idunidadmedida(idunidadmedida) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS mapa_coordenadas;
CREATE TABLE mapa_coordenadas  (
  idcoordenada smallint(6) NOT NULL AUTO_INCREMENT,
  Codigo_Region varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  latitud varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  longitud varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (idcoordenada) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS md_eess;
CREATE TABLE md_eess  (
  CodEESS varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  CodInstitucion varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Nombre varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Clasificacion varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Tipo varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  CodUbigeo varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Direccion varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  CodDISA varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  CodRED varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  CodMICRORED varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  CodUE varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  CodCategoria varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Telefono varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  TipoDocCat varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  NroDocCat varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Horario varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  InicioActividad varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Responsable varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Estado varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Situacion varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Condicion varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Inspeccion varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Norte varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Este varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Cota varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Establecimientos de Salud 141014' ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS menu;
CREATE TABLE menu  (
  idmenu tinyint(1) NOT NULL AUTO_INCREMENT,
  idmodulo tinyint(1) NOT NULL,
  descripcion varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  nivel char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  url varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  icono varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (idmenu) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS menu_detalle;
CREATE TABLE menu_detalle  (
  idmenudetalle smallint(1) NOT NULL AUTO_INCREMENT,
  idmenu tinyint(1) NOT NULL,
  descripcion varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  url varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  icono varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  orden int(1) NOT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (idmenudetalle) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS modulo;
CREATE TABLE modulo  (
  idmodulo tinyint(1) NOT NULL AUTO_INCREMENT,
  descripcion varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  menu varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  icono varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  url varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  imagen char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  mini varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  orden tinyint(4) NOT NULL,
  PRIMARY KEY (idmodulo) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS modulo_rol;
CREATE TABLE modulo_rol  (
  idmodulorol smallint(1) NOT NULL AUTO_INCREMENT,
  idmodulo tinyint(1) NOT NULL,
  Codigo_Perfil varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (idmodulorol) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS nivel_gravedad;
CREATE TABLE nivel_gravedad  (
  Nivel_Gravedad_Codigo varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Nivel_Gravedad_Descripcion varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (Nivel_Gravedad_Codigo) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS pais;
CREATE TABLE pais  (
  id smallint(6) NOT NULL AUTO_INCREMENT,
  iso char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  nombre varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  orden smallint(6) NULL DEFAULT 0,
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 241 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS perfil;
CREATE TABLE perfil  (
  Codigo_Perfil varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Descripcion_Perfil varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Activo bit(1) NULL DEFAULT b'1',
  PRIMARY KEY (Codigo_Perfil) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS permiso;
CREATE TABLE permiso  (
  idpermiso smallint(1) NOT NULL AUTO_INCREMENT,
  descripcion varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  tipo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  orden tinyint(4) NOT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  idmodulo tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (idpermiso) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS permisos_menu;
CREATE TABLE permisos_menu  (
  id int(11) NOT NULL AUTO_INCREMENT,
  idmenu tinyint(4) NOT NULL,
  idusuario varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 467 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS permisos_menu_detalle;
CREATE TABLE permisos_menu_detalle  (
  id int(11) NOT NULL AUTO_INCREMENT,
  idmenudetalle smallint(6) NOT NULL,
  idusuario varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1045 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS permisos_opcion;
CREATE TABLE permisos_opcion  (
  idpermisoopcion int(11) NOT NULL AUTO_INCREMENT,
  idpermiso smallint(6) NOT NULL,
  idusuario varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (idpermisoopcion) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1404 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS planes_registro;
CREATE TABLE planes_registro  (
  planes_registro_id smallint(4) NOT NULL AUTO_INCREMENT,
  planes_registro_anio_ejecucion varchar(4) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NULL DEFAULT NULL,
  planes_registro_tipo char(1) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  planes_fecha_inicio datetime NULL DEFAULT NULL,
  planes_fecha_fin datetime NULL DEFAULT NULL,
  planes_descripcion varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NULL DEFAULT NULL,
  planes_archivo varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NULL DEFAULT NULL,
  planes_usuario_registro varchar(4) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NULL DEFAULT NULL,
  planes_fecha_registro datetime NULL DEFAULT NULL,
  planes_usuario_actualizacion varchar(4) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NULL DEFAULT NULL,
  planes_fecha_actualizacion datetime NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NULL DEFAULT '1',
  PRIMARY KEY (planes_registro_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_spanish2_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS region;
CREATE TABLE region  (
  Codigo_Region varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Nombre_Region varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (Codigo_Region) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS renarhed_banco;
CREATE TABLE renarhed_banco  (
  idbanco smallint(6) NOT NULL AUTO_INCREMENT,
  banco varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado smallint(6) NULL DEFAULT 1,
  PRIMARY KEY (idbanco) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS renarhed_capacitaciones_personal;
CREATE TABLE renarhed_capacitaciones_personal  (
  idcapacitacion smallint(6) NOT NULL AUTO_INCREMENT,
  idrenarhed smallint(6) NOT NULL,
  tipo_capacitacion smallint(6) NULL DEFAULT NULL,
  nombre varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  institucion varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  horas smallint(6) NULL DEFAULT NULL,
  fecha_emision datetime NULL DEFAULT NULL,
  archivo_adjunto varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado smallint(6) NULL DEFAULT 1,
  PRIMARY KEY (idcapacitacion) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS renarhed_carreras_personal;
CREATE TABLE renarhed_carreras_personal  (
  idcarreras smallint(6) NOT NULL AUTO_INCREMENT,
  idrenarhed smallint(6) NOT NULL,
  idprofesion smallint(6) NOT NULL,
  idespecialidad smallint(6) NOT NULL,
  colegiatura varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  rne varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  archivo_titulo varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  archivo_especialidad varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado smallint(6) NULL DEFAULT 1,
  PRIMARY KEY (idcarreras) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS renarhed_certificaciones_personal;
CREATE TABLE renarhed_certificaciones_personal  (
  idcertificaciones smallint(6) NOT NULL AUTO_INCREMENT,
  idrenarhed smallint(6) NOT NULL,
  idinstitucion smallint(6) NOT NULL,
  idcertificacion smallint(6) NOT NULL,
  fecha_inicio datetime NULL DEFAULT NULL,
  fecha_vigencia datetime NULL DEFAULT NULL,
  archivo_adjunto varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  archivo_especialidad varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado smallint(6) NULL DEFAULT 1,
  PRIMARY KEY (idcertificaciones) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS renarhed_comisiones;
CREATE TABLE renarhed_comisiones  (
  idcomision smallint(6) NOT NULL AUTO_INCREMENT,
  codigo_region varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  tipo smallint(6) NULL DEFAULT NULL,
  codigo_tipo_evento varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  codigo_evento varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  codigo_evento_detalle varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  evento_registro_numero int(11) NULL DEFAULT NULL,
  descripcion varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_inicio datetime NULL DEFAULT NULL,
  fecha_fin datetime NULL DEFAULT NULL,
  comision_anio varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  comision_mes varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  archivo_adjunto varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  usuario_registro varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_registro datetime NULL DEFAULT CURRENT_TIMESTAMP,
  usuario_actualizacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_actualizacion datetime NULL DEFAULT NULL,
  estado smallint(6) NULL DEFAULT 1,
  PRIMARY KEY (idcomision) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS renarhed_comisiones_detalle;
CREATE TABLE renarhed_comisiones_detalle  (
  idcomisiondetalle smallint(6) NOT NULL AUTO_INCREMENT,
  idcomision smallint(6) NOT NULL,
  idrenarhed smallint(6) NOT NULL,
  idfuncion smallint(6) NOT NULL,
  rendido smallint(6) NULL DEFAULT NULL,
  estado smallint(6) NULL DEFAULT 1,
  PRIMARY KEY (idcomisiondetalle) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS renarhed_especialidad;
CREATE TABLE renarhed_especialidad  (
  idespecialidad smallint(6) NOT NULL AUTO_INCREMENT,
  idprofesion smallint(6) NOT NULL,
  especialidad varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado smallint(6) NULL DEFAULT 1,
  PRIMARY KEY (idespecialidad) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 371 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS renarhed_funcion;
CREATE TABLE renarhed_funcion  (
  idfuncion smallint(6) NOT NULL AUTO_INCREMENT,
  funcion varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado smallint(6) NULL DEFAULT 1,
  PRIMARY KEY (idfuncion) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS renarhed_idiomas;
CREATE TABLE renarhed_idiomas  (
  ididioma smallint(6) NOT NULL AUTO_INCREMENT,
  idioma varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado smallint(6) NULL DEFAULT 1,
  PRIMARY KEY (ididioma) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS renarhed_idiomas_personal;
CREATE TABLE renarhed_idiomas_personal  (
  ididiomas smallint(6) NOT NULL AUTO_INCREMENT,
  idrenarhed smallint(6) NOT NULL,
  ididioma smallint(6) NOT NULL,
  nivel smallint(6) NULL DEFAULT NULL,
  lectura smallint(6) NULL DEFAULT 0,
  escritura smallint(6) NULL DEFAULT 0,
  estado smallint(6) NULL DEFAULT 1,
  PRIMARY KEY (ididiomas) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS renarhed_inmunizaciones_personal;
CREATE TABLE renarhed_inmunizaciones_personal  (
  idinmunizacion smallint(6) NOT NULL AUTO_INCREMENT,
  idrenarhed smallint(6) NOT NULL,
  tipo_inmunizacion smallint(6) NULL DEFAULT NULL,
  nombre varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  numero_dosis smallint(6) NULL DEFAULT NULL,
  fecha_vacuna datetime NULL DEFAULT NULL,
  archivo_adjunto varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado smallint(6) NULL DEFAULT 1,
  PRIMARY KEY (idinmunizacion) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS renarhed_institucion;
CREATE TABLE renarhed_institucion  (
  idinstitucion smallint(6) NOT NULL AUTO_INCREMENT,
  nombre varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado smallint(6) NULL DEFAULT 1,
  PRIMARY KEY (idinstitucion) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS renarhed_laboral_personal;
CREATE TABLE renarhed_laboral_personal  (
  idlaboral smallint(6) NOT NULL AUTO_INCREMENT,
  idrenarhed smallint(6) NOT NULL,
  codigo_institucion smallint(6) NULL DEFAULT NULL,
  codigo_region varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  codigo_disa smallint(6) NULL DEFAULT NULL,
  codigo_red varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  codigo_micro_red varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  codigo_renipress varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  codigo_condicion smallint(6) NULL DEFAULT NULL,
  estado smallint(6) NULL DEFAULT 1,
  PRIMARY KEY (idlaboral) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS renarhed_profesion;
CREATE TABLE renarhed_profesion  (
  idprofesion smallint(6) NOT NULL AUTO_INCREMENT,
  profesion varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado smallint(6) NULL DEFAULT 1,
  PRIMARY KEY (idprofesion) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS renarhed_registro;
CREATE TABLE renarhed_registro  (
  idrenarhed smallint(6) NOT NULL AUTO_INCREMENT,
  tipo_documento smallint(6) NOT NULL,
  numero_documento varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  foto varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  apellidos varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  nombres varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  edad smallint(6) NULL DEFAULT NULL,
  sexo smallint(6) NULL DEFAULT NULL,
  fecha_nacimiento datetime NULL DEFAULT NULL,
  estado_civil smallint(6) NULL DEFAULT NULL,
  pasaporte varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  caducidad_pasaporte datetime NULL DEFAULT NULL,
  domicilio varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  ubigeo_domicilio varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  telefono_1 varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  telefono_2 varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  telefono_3 varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  email_personal varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  email_institucional varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  categoria smallint(6) NULL DEFAULT NULL,
  idinstitucion smallint(6) NULL DEFAULT NULL,
  tipo_documento_contacto varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  numero_documento_contacto varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  apellidos_contacto varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  nombres_contacto varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  telefono_1_contacto varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  telefono_2_contacto varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  telefono_3_contacto varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  parentesco_contacto smallint(6) NULL DEFAULT NULL,
  observacion varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  peso decimal(9, 2) NULL DEFAULT 0.00,
  talla decimal(9, 2) NULL DEFAULT 0.00,
  imc decimal(9, 2) NULL DEFAULT 0.00,
  grupo_sanguineo smallint(6) NULL DEFAULT NULL,
  idbanco smallint(6) NOT NULL,
  numero_cuenta varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  numero_cci varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  ididioma smallint(6) NULL DEFAULT NULL,
  fecha_renarhed datetime NULL DEFAULT NULL,
  usuario_registro varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_registro datetime NULL DEFAULT CURRENT_TIMESTAMP,
  usuario_actualizacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  fecha_actualizacion datetime NULL DEFAULT NULL,
  alergias_alimentarias varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  alergias_farmacologicas varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  tarjeta_vacunas varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado smallint(6) NULL DEFAULT 1,
  PRIMARY KEY (idrenarhed) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS renipress;
CREATE TABLE renipress  (
  id_renipress int(11) NOT NULL AUTO_INCREMENT,
  codigo_institucion smallint(6) NULL DEFAULT NULL,
  institucion varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  codigo_renipress varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  nombre varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  clasificacion varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  tipo varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  codigo_region varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  region varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  codigo_provincia varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  provincia varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  codigo_distrito varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  distrito varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  ubigeo varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  direccion varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  codigo_disa smallint(6) NULL DEFAULT NULL,
  codigo_red varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  codigo_micro_red varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  disa varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  red varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  micro_red varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  codigo_ue varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  unidad_ejecutora smallint(6) NULL DEFAULT NULL,
  categoria varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  telefono varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  tipo_doc_cat varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  numero_doc_cat varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  horario varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  inicio_actividad datetime NULL DEFAULT NULL,
  director_encargado varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  situacion varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  condicion varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  inspeccion varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  norte varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  este varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  cota varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  camas smallint(6) NULL DEFAULT NULL,
  ruc varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (id_renipress) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23198 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS renipress_disa;
CREATE TABLE renipress_disa  (
  id_disa int(11) NOT NULL AUTO_INCREMENT,
  codigo_disa smallint(6) NULL DEFAULT NULL,
  nombre_disa varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  codigo_region varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (id_disa) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS renipress_institucion;
CREATE TABLE renipress_institucion  (
  id_institucion int(11) NOT NULL AUTO_INCREMENT,
  codigo_institucion smallint(6) NULL DEFAULT NULL,
  nombre_institucion varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (id_institucion) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS renipress_micro_red;
CREATE TABLE renipress_micro_red  (
  id_micro_red int(11) NOT NULL AUTO_INCREMENT,
  codigo_disa smallint(6) NULL DEFAULT NULL,
  codigo_red varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  codigo_micro_red varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  nombre_micro_red varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (id_micro_red) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1014 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS renipress_red;
CREATE TABLE renipress_red  (
  id_red int(11) NOT NULL AUTO_INCREMENT,
  codigo_disa smallint(6) NULL DEFAULT NULL,
  codigo_red varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  nombre_red varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (id_red) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 190 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS situacion;
CREATE TABLE situacion  (
  Situacion_Codigo varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Situacion_Descripcion varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (Situacion_Codigo) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS super_evento_registro;
CREATE TABLE super_evento_registro  (
  Super_Evento_Registro_ID int(11) NOT NULL AUTO_INCREMENT,
  Super_Evento_Registro_Numero smallint(6) NULL DEFAULT NULL,
  Super_Evento_Registro_Titulo varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Super_Evento_Registro_Fecha_Registro datetime NULL DEFAULT NULL,
  Super_Evento_Registro_Fecha_Actualizacion datetime NULL DEFAULT NULL,
  Super_Evento_Registro_Nombre varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Super_Evento_Registro_Descripcion varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Super_Evento_Registro_Usuario varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Super_Evento_Registro_Eventos smallint(6) NULL DEFAULT 0,
  Super_Evento_Registro_Version smallint(6) NULL DEFAULT 1,
  Zoom varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (Super_Evento_Registro_ID) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS super_evento_registro_detalle;
CREATE TABLE super_evento_registro_detalle  (
  Super_Evento_Registro_Detalle_ID int(11) NOT NULL AUTO_INCREMENT,
  Super_Evento_Registro_ID int(11) NULL DEFAULT NULL,
  Evento_Registro_Numero int(11) NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (Super_Evento_Registro_Detalle_ID) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS tablero_actividad;
CREATE TABLE tablero_actividad  (
  Anio_Ejecucion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Actividad varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Nombre_Actividad varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS tablero_actividad_poi;
CREATE TABLE tablero_actividad_poi  (
  Id_Actividad_POI int(11) NOT NULL AUTO_INCREMENT,
  Anio_Ejecucion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Sector varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Pliego varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Ejecutora varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Centro_Costos varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Sub_Centro_Costos varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Programa_Presupuestal varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Finalidad varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Unidad_Medida varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Actividad_Proyecto varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Actividad varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Actividad_POI varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Descripcion_Actividad varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Costo_Programado decimal(18, 2) NULL DEFAULT 0.00,
  Enero int(11) NULL DEFAULT 0,
  Febrero int(11) NULL DEFAULT 0,
  Marzo int(11) NULL DEFAULT 0,
  Abril int(11) NULL DEFAULT 0,
  Mayo int(11) NULL DEFAULT 0,
  Junio int(11) NULL DEFAULT 0,
  Julio int(11) NULL DEFAULT 0,
  Agosto int(11) NULL DEFAULT 0,
  Septiembre int(11) NULL DEFAULT 0,
  Octubre int(11) NULL DEFAULT 0,
  Noviembre int(11) NULL DEFAULT 0,
  Diciembre int(11) NULL DEFAULT 0,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (Id_Actividad_POI) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 501 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS tablero_actividad_proyecto;
CREATE TABLE tablero_actividad_proyecto  (
  Anio_Ejecucion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Actividad_Proyecto varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Nombre_Actividad_Proyecto varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS tablero_area;
CREATE TABLE tablero_area  (
  Anio_Ejecucion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Sector varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Pliego varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Ejecutora varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Centro_Costos varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Sub_Centro_Costos varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Area varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Nombre_Area varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Siglas_Area varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Mostrar char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Orden char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS tablero_area_actividad_poi;
CREATE TABLE tablero_area_actividad_poi  (
  Anio_Ejecucion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Area varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Id_Actividad_POI int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS tablero_centro_costos;
CREATE TABLE tablero_centro_costos  (
  Anio_Ejecucion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Sector varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Pliego varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Ejecutora varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Centro_Costos varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Nombre_Centro_Costos varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Abreviatura varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS tablero_control;
CREATE TABLE tablero_control  (
  id_tablero_control int(11) NOT NULL AUTO_INCREMENT,
  Anio_Ejecucion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Area varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  codigo_indicador int(4) NULL DEFAULT NULL,
  Id_Actividad_POI int(4) NOT NULL,
  Codigo_Usuario varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  codigo_mes varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Cantidad int(4) NULL DEFAULT NULL,
  Costo decimal(9, 2) NULL DEFAULT 0.00,
  Archivo varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Fecha_Creacion datetime NOT NULL,
  Usuario_Actualizacion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Fecha_Actualizacion datetime NOT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  Nombre_Archivo varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Numero_Documento varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Observaciones varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Logros varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (id_tablero_control) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 364 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS tablero_dimension;
CREATE TABLE tablero_dimension  (
  IdDimension int(11) NOT NULL AUTO_INCREMENT,
  Nombre_Dimension varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (IdDimension) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS tablero_division_funcional;
CREATE TABLE tablero_division_funcional  (
  Anio_Ejecucion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Division_Funcional varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Nombre_Division_Funcional varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS tablero_ejecutora;
CREATE TABLE tablero_ejecutora  (
  Anio_Ejecucion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Sector varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Pliego varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Ejecutora varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Secuencia_Ejecutora varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Nombre_Ejecutora varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS tablero_finalidad;
CREATE TABLE tablero_finalidad  (
  Anio_Ejecucion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Finalidad varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Nombre_Finalidad varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS tablero_indicador;
CREATE TABLE tablero_indicador  (
  IdIndicador int(11) NOT NULL AUTO_INCREMENT,
  Anio_Ejecucion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Nombre_Indicador varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  IdDimension int(11) NOT NULL,
  Formula varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Justificacion varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Comentarios varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Ficha_Tecnica varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (IdIndicador) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS tablero_indicador_actividad_poi;
CREATE TABLE tablero_indicador_actividad_poi  (
  id int(11) NOT NULL AUTO_INCREMENT,
  Id_Actividad_POI int(11) NOT NULL,
  anio_ejecucion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  idindicador int(11) NOT NULL,
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS tablero_mes;
CREATE TABLE tablero_mes  (
  codigo_mes varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  nombre_mes varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  abreviatura_mes varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS tablero_pliego;
CREATE TABLE tablero_pliego  (
  Anio_Ejecucion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Sector varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Pliego varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Nombre_Pliego varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS tablero_programa_presupuestal;
CREATE TABLE tablero_programa_presupuestal  (
  Anio_Ejecucion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Programa_Presupuestal varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Nombre_Programa_Presupuestal varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS tablero_sector;
CREATE TABLE tablero_sector  (
  Anio_Ejecucion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Sector varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Nombre_Sector varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS tablero_sub_centro_costos;
CREATE TABLE tablero_sub_centro_costos  (
  Anio_Ejecucion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Sector varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Pliego varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Ejecutora varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Centro_Costos varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Sub_Centro_Costos varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Nombre_Sub_Centro_Costos varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Abreviatura varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS tablero_unidad_medida;
CREATE TABLE tablero_unidad_medida  (
  Codigo_Unidad_Medida varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Nombre_Unidad_Medida varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (Codigo_Unidad_Medida) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS tipo_accion;
CREATE TABLE tipo_accion  (
  Tipo_Accion_Codigo varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Tipo_Accion_Descripcion varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (Tipo_Accion_Codigo) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS tipo_accion_entidad;
CREATE TABLE tipo_accion_entidad  (
  Tipo_Accion_Codigo varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Tipo_Accion_Entidad_Codigo varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Tipo_Accion_Entidad_Nombre varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (Tipo_Accion_Codigo, Tipo_Accion_Entidad_Codigo) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS tipo_documento;
CREATE TABLE tipo_documento  (
  Tipo_Documento_Codigo varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Tipo_Documento_Nombre varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Tipo_Documento_Longitud int(11) NULL DEFAULT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (Tipo_Documento_Codigo) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS ubigeo;
CREATE TABLE ubigeo  (
  Codigo_Departamento varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Provincia varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Distrito varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  ubigeo varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Nombre varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Activo varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  INDEX dep(Codigo_Departamento) USING BTREE,
  INDEX pro(Codigo_Provincia) USING BTREE,
  INDEX dis(Codigo_Distrito) USING BTREE,
  INDEX dep_pro_dis(Codigo_Departamento, Codigo_Provincia, Codigo_Distrito) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS usuarios;
CREATE TABLE usuarios  (
  Codigo_Usuario varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  DNI varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  avatar varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Apellidos varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Nombres varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Usuario varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Passwd varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  Codigo_Perfil varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Region varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (Codigo_Usuario) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS usuarios_areas;
CREATE TABLE usuarios_areas  (
  Codigo_Usuario varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Anio_Ejecucion varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Sector varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Pliego varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Ejecutora varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Centro_Costos varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Sub_Centro_Costos varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Codigo_Area varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  Activo char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (Codigo_Usuario, Anio_Ejecucion, Codigo_Area) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS usuarios_hospitales;
CREATE TABLE usuarios_hospitales  (
  usuarios_hospitales_id int(11) NOT NULL AUTO_INCREMENT,
  codigo_usuario varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  hospitales_situaciones_nombre_id int(11) NULL DEFAULT NULL,
  estado char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (usuarios_hospitales_id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

DROP PROCEDURE IF EXISTS Actualizar_Indicador_Tablero_Proceso;
delimiter ;;
CREATE PROCEDURE Actualizar_Indicador_Tablero_Proceso(IN vAnio_Ejecucion VARCHAR(4), IN vCodigo_Indicador VARCHAR(2), IN vCodigo_Proceso VARCHAR(3))
BEGIN

UPDATE tablero_control Set Codigo_Indicador=vCodigo_Indicador WHERE Anio_Ejecucion=vAnio_Ejecucion AND Codigo_Proceso=vCodigo_Proceso;

END
;;
delimiter ;

DROP FUNCTION IF EXISTS fn_departamento;
delimiter ;;
CREATE FUNCTION fn_departamento(v_departamento VARCHAR(2))
 RETURNS varchar(50) CHARSET utf8
BEGIN

 DECLARE v_descripcion VARCHAR(50);
 
 SELECT Nombre INTO v_descripcion FROM ubigeo WHERE Codigo_Provincia='00' AND Codigo_Distrito='00' AND Codigo_Departamento=v_departamento;
 
 RETURN v_descripcion;

END
;;
delimiter ;

DROP FUNCTION IF EXISTS fn_distrito;
delimiter ;;
CREATE FUNCTION fn_distrito(v_departamento VARCHAR(2), v_provincia VARCHAR(2), v_distrito VARCHAR(2))
 RETURNS varchar(50) CHARSET utf8
BEGIN

 DECLARE v_descripcion VARCHAR(50);
 
 SELECT Nombre INTO v_descripcion FROM ubigeo WHERE Codigo_Distrito=v_distrito AND Codigo_Provincia=v_provincia AND Codigo_Departamento=v_departamento;
 
 RETURN v_descripcion;

END
;;
delimiter ;

DROP FUNCTION IF EXISTS fn_provincia;
delimiter ;;
CREATE FUNCTION fn_provincia(v_departamento VARCHAR(2), v_provincia VARCHAR(2))
 RETURNS varchar(50) CHARSET utf8
BEGIN

 DECLARE v_descripcion VARCHAR(50);
 
 SELECT Nombre INTO v_descripcion FROM ubigeo WHERE Codigo_Distrito='00' AND Codigo_Provincia=v_provincia AND Codigo_Departamento=v_departamento;
 
 RETURN v_descripcion;

END
;;
delimiter ;

DROP FUNCTION IF EXISTS fn_texto_by_codigo_presupuestal;
delimiter ;;
CREATE FUNCTION fn_texto_by_codigo_presupuestal(v_Tipo_Transaccion VARCHAR(1), v_Generica VARCHAR(1), v_Sub_Generica VARCHAR(2), v_Sub_Generica_Detalle VARCHAR(2), v_Especifica VARCHAR(2), v_Especifica_Detalle VARCHAR(2))
 RETURNS varchar(500) CHARSET utf8
BEGIN

 DECLARE v_descripcion VARCHAR(500);
 
 SELECT Descripcion_Especifica_Detalle INTO v_descripcion FROM especifica_detalle WHERE Tipo_Transaccion=v_Tipo_Transaccion AND Generica=v_Generica AND Sub_Generica=v_Sub_Generica AND Sub_Generica_Detalle=v_Sub_Generica_Detalle AND Especifica=v_Especifica AND Especifica_Detalle=v_Especifica_Detalle;
 
 RETURN v_descripcion;

END
;;
delimiter ;

DROP FUNCTION IF EXISTS SPLIT_STRING;
delimiter ;;
CREATE FUNCTION SPLIT_STRING(s VARCHAR(250), del CHAR(1), i INT)
 RETURNS varchar(250) CHARSET utf8
BEGIN

        DECLARE n INT ;

                SET n = LENGTH(s) - LENGTH(REPLACE(s, del, '')) + 1;

        IF i > n THEN
            RETURN NULL ;
        ELSE
            RETURN SUBSTRING_INDEX(SUBSTRING_INDEX(s, del, i) , del , -1 ) ;        
        END IF;

    END
;;
delimiter ;

DROP FUNCTION IF EXISTS total_entidades;
delimiter ;;
CREATE FUNCTION total_entidades(v_evento_registro_numero INT(11))
 RETURNS varchar(10) CHARSET utf8
BEGIN

 DECLARE v_operativo VARCHAR(5);
 DECLARE v_inoperativo VARCHAR(5);
 
 SELECT IFNULL(SUM(CASE WHEN Evento_Entidad_Estado = '1' THEN 1 END),0), 
 IFNULL(SUM(CASE WHEN Evento_Entidad_Estado = '2' THEN 1 END),0) INTO v_operativo, v_inoperativo
 FROM evento_entidad_salud WHERE Evento_Registro_Numero=v_evento_registro_numero;
 
 RETURN CONCAT_WS("|",v_operativo, v_inoperativo);

END
;;
delimiter ;

DROP FUNCTION IF EXISTS total_lesionados;
delimiter ;;
CREATE FUNCTION total_lesionados(v_evento_registro_numero INT(11))
 RETURNS varchar(24) CHARSET utf8
BEGIN

 DECLARE v_lesionados VARCHAR(8);
 DECLARE v_fallecidos VARCHAR(8);
 DECLARE v_desaparecidos VARCHAR(8);
 
 SELECT COUNT(1),IFNULL(SUM(CASE WHEN Situacion_Codigo = '04' THEN 1 END),0), 
 IFNULL(SUM(CASE WHEN Situacion_Codigo = '05' THEN 1 END),0) INTO v_lesionados, v_fallecidos, v_desaparecidos
 FROM evento_danios_lesionados WHERE Evento_Registro_Numero=v_evento_registro_numero AND ultimo=1;
 
 RETURN CONCAT_WS("|",v_lesionados, v_fallecidos, v_desaparecidos);

END
;;
delimiter ;

DROP TRIGGER IF EXISTS evento_registro_accion;
delimiter ;;
CREATE TRIGGER evento_registro_accion AFTER INSERT ON evento_acciones FOR EACH ROW BEGIN

UPDATE evento_registro SET 
Cantidad_Acciones=Cantidad_Acciones+1 WHERE Evento_Registro_Numero=new.Evento_Registro_Numero;

END
;;
delimiter ;

DROP TRIGGER IF EXISTS evento_registro_accion_delete;
delimiter ;;
CREATE TRIGGER evento_registro_accion_delete AFTER DELETE ON evento_acciones FOR EACH ROW BEGIN

UPDATE evento_registro SET 
Cantidad_Acciones=Cantidad_Acciones-1 WHERE Evento_Registro_Numero=old.Evento_Registro_Numero;

END
;;
delimiter ;

DROP TRIGGER IF EXISTS evento_registro_danio;
delimiter ;;
CREATE TRIGGER evento_registro_danio AFTER INSERT ON evento_danios FOR EACH ROW BEGIN

UPDATE evento_registro SET 
Cantidad_Danio=new.Evento_Viv_Inhabitables+new.Evento_Viv_Colapsadas WHERE Evento_Registro_Numero=new.Evento_Registro_Numero;

END
;;
delimiter ;

DROP TRIGGER IF EXISTS evento_registro_eess;
delimiter ;;
CREATE TRIGGER evento_registro_eess AFTER INSERT ON evento_entidad_salud FOR EACH ROW BEGIN

UPDATE evento_registro SET 
Cantidad_EESS=Cantidad_EESS+1 WHERE Evento_Registro_Numero=new.Evento_Registro_Numero;

END
;;
delimiter ;

DROP TRIGGER IF EXISTS evento_registro_eess_delete;
delimiter ;;
CREATE TRIGGER evento_registro_eess_delete AFTER DELETE ON evento_entidad_salud FOR EACH ROW BEGIN

UPDATE evento_registro SET 
Cantidad_EESS=Cantidad_EESS-1 WHERE Evento_Registro_Numero=old.Evento_Registro_Numero;

END
;;
delimiter ;

create view ceplan_actividades_presupuestales as
select
    ta.Anio_Ejecucion as Anio_Ejecucion,
    ta.Codigo_Actividad as Codigo_Actividad,
    ta.Nombre_Actividad as Nombre_Actividad,
    tum.Nombre_Unidad_Medida as Und_Med,
    ifnull(sum(tap.Enero), 0) as P_ENE,
    ifnull(sum(tap.Febrero), 0) as P_FEB,
    ifnull(sum(tap.Marzo), 0) as P_MAR,
    ifnull(sum(tap.Abril), 0) as P_ABR,
    ifnull(sum(tap.Mayo), 0) as P_MAY,
    ifnull(sum(tap.Junio), 0) as P_JUN,
    ifnull(sum(tap.Julio), 0) as P_JUL,
    ifnull(sum(tap.Agosto), 0) as P_AGO,
    ifnull(sum(tap.Septiembre), 0) as P_SEP,
    ifnull(sum(tap.Octubre), 0) as P_OCT,
    ifnull(sum(tap.Noviembre), 0) as P_NOV,
    ifnull(sum(tap.Diciembre), 0) as P_DIC
from
    ((tablero_actividad ta
join tablero_actividad_poi tap)
join tablero_unidad_medida tum)
where
    ((ta.Activo = '1')
        and (ta.Anio_Ejecucion = tap.Anio_Ejecucion)
            and (ta.Codigo_Actividad = tap.Codigo_Actividad)
                and (tap.Activo = '1')
                    and (tum.Codigo_Unidad_Medida = tap.Codigo_Unidad_Medida))
group by
    ta.Anio_Ejecucion,
    ta.Codigo_Actividad,
    ta.Nombre_Actividad,
    tum.Nombre_Unidad_Medida;

create view ceplan_ejecucion_tablero_mensual_general as
select
    ta.Anio_Ejecucion as anio_ejecucion,
    ta.Codigo_Actividad as Codigo_Actividad,
    tum.Nombre_Unidad_Medida as Und_Med,
    ifnull(sum(tc.Cantidad), 0) as E_ENE,
    0 as E_FEB,
    0 as E_MAR,
    0 as E_ABR,
    0 as E_MAY,
    0 as E_JUN,
    0 as E_JUL,
    0 as E_AGO,
    0 as E_SEP,
    0 as E_OCT,
    0 as E_NOV,
    0 as E_DIC
from
    (((tablero_control tc
join tablero_actividad_poi tap on
    (((tc.Id_Actividad_POI = tap.Id_Actividad_POI)
        and (tap.Anio_Ejecucion = tc.Anio_Ejecucion))))
join tablero_actividad ta on
    (((ta.Codigo_Actividad = tap.Codigo_Actividad)
        and (tap.Anio_Ejecucion = ta.Anio_Ejecucion))))
join tablero_unidad_medida tum on
    ((tum.Codigo_Unidad_Medida = tap.Codigo_Unidad_Medida)))
where
    ((tc.codigo_mes = '01')
        and (tc.Activo = '1'))
group by
    ta.Anio_Ejecucion,
    ta.Codigo_Actividad,
    tum.Nombre_Unidad_Medida
union all
select
    ta.Anio_Ejecucion as anio_ejecucion,
    ta.Codigo_Actividad as Codigo_Actividad,
    tum.Nombre_Unidad_Medida as Und_Med,
    0 as E_ENE,
    ifnull(sum(tc.Cantidad), 0) as E_FEB,
    0 as E_MAR,
    0 as E_ABR,
    0 as E_MAY,
    0 as E_JUN,
    0 as E_JUL,
    0 as E_AGO,
    0 as E_SEP,
    0 as E_OCT,
    0 as E_NOV,
    0 as E_DIC
from
    (((tablero_control tc
join tablero_actividad_poi tap on
    (((tc.Id_Actividad_POI = tap.Id_Actividad_POI)
        and (tap.Anio_Ejecucion = tc.Anio_Ejecucion))))
join tablero_actividad ta on
    (((ta.Codigo_Actividad = tap.Codigo_Actividad)
        and (tap.Anio_Ejecucion = ta.Anio_Ejecucion))))
join tablero_unidad_medida tum on
    ((tum.Codigo_Unidad_Medida = tap.Codigo_Unidad_Medida)))
where
    ((tc.codigo_mes = '02')
        and (tc.Activo = '1'))
group by
    ta.Anio_Ejecucion,
    ta.Codigo_Actividad,
    tum.Nombre_Unidad_Medida
union all
select
    ta.Anio_Ejecucion as anio_ejecucion,
    ta.Codigo_Actividad as Codigo_Actividad,
    tum.Nombre_Unidad_Medida as Und_Med,
    0 as E_ENE,
    0 as E_FEB,
    ifnull(sum(tc.Cantidad), 0) as E_MAR,
    0 as E_ABR,
    0 as E_MAY,
    0 as E_JUN,
    0 as E_JUL,
    0 as E_AGO,
    0 as E_SEP,
    0 as E_OCT,
    0 as E_NOV,
    0 as E_DIC
from
    (((tablero_control tc
join tablero_actividad_poi tap on
    (((tc.Id_Actividad_POI = tap.Id_Actividad_POI)
        and (tap.Anio_Ejecucion = tc.Anio_Ejecucion))))
join tablero_actividad ta on
    (((ta.Codigo_Actividad = tap.Codigo_Actividad)
        and (tap.Anio_Ejecucion = ta.Anio_Ejecucion))))
join tablero_unidad_medida tum on
    ((tum.Codigo_Unidad_Medida = tap.Codigo_Unidad_Medida)))
where
    ((tc.codigo_mes = '03')
        and (tc.Activo = '1'))
group by
    ta.Anio_Ejecucion,
    ta.Codigo_Actividad,
    tum.Nombre_Unidad_Medida
union all
select
    ta.Anio_Ejecucion as anio_ejecucion,
    ta.Codigo_Actividad as Codigo_Actividad,
    tum.Nombre_Unidad_Medida as Und_Med,
    0 as E_ENE,
    0 as E_FEB,
    0 as E_MAR,
    ifnull(sum(tc.Cantidad), 0) as E_ABR,
    0 as E_MAY,
    0 as E_JUN,
    0 as E_JUL,
    0 as E_AGO,
    0 as E_SEP,
    0 as E_OCT,
    0 as E_NOV,
    0 as E_DIC
from
    (((tablero_control tc
join tablero_actividad_poi tap on
    (((tc.Id_Actividad_POI = tap.Id_Actividad_POI)
        and (tap.Anio_Ejecucion = tc.Anio_Ejecucion))))
join tablero_actividad ta on
    (((ta.Codigo_Actividad = tap.Codigo_Actividad)
        and (tap.Anio_Ejecucion = ta.Anio_Ejecucion))))
join tablero_unidad_medida tum on
    ((tum.Codigo_Unidad_Medida = tap.Codigo_Unidad_Medida)))
where
    ((tc.codigo_mes = '04')
        and (tc.Activo = '1'))
group by
    ta.Anio_Ejecucion,
    ta.Codigo_Actividad,
    tum.Nombre_Unidad_Medida
union all
select
    ta.Anio_Ejecucion as anio_ejecucion,
    ta.Codigo_Actividad as Codigo_Actividad,
    tum.Nombre_Unidad_Medida as Und_Med,
    0 as E_ENE,
    0 as E_FEB,
    0 as E_MAR,
    0 as E_ABR,
    ifnull(sum(tc.Cantidad), 0) as E_MAY,
    0 as E_JUN,
    0 as E_JUL,
    0 as E_AGO,
    0 as E_SEP,
    0 as E_OCT,
    0 as E_NOV,
    0 as E_DIC
from
    (((tablero_control tc
join tablero_actividad_poi tap on
    (((tc.Id_Actividad_POI = tap.Id_Actividad_POI)
        and (tap.Anio_Ejecucion = tc.Anio_Ejecucion))))
join tablero_actividad ta on
    (((ta.Codigo_Actividad = tap.Codigo_Actividad)
        and (tap.Anio_Ejecucion = ta.Anio_Ejecucion))))
join tablero_unidad_medida tum on
    ((tum.Codigo_Unidad_Medida = tap.Codigo_Unidad_Medida)))
where
    ((tc.codigo_mes = '05')
        and (tc.Activo = '1'))
group by
    ta.Anio_Ejecucion,
    ta.Codigo_Actividad,
    tum.Nombre_Unidad_Medida
union all
select
    ta.Anio_Ejecucion as anio_ejecucion,
    ta.Codigo_Actividad as Codigo_Actividad,
    tum.Nombre_Unidad_Medida as Und_Med,
    0 as E_ENE,
    0 as E_FEB,
    0 as E_MAR,
    0 as E_ABR,
    0 as E_MAY,
    ifnull(sum(tc.Cantidad), 0) as E_JUN,
    0 as E_JUL,
    0 as E_AGO,
    0 as E_SEP,
    0 as E_OCT,
    0 as E_NOV,
    0 as E_DIC
from
    (((tablero_control tc
join tablero_actividad_poi tap on
    (((tc.Id_Actividad_POI = tap.Id_Actividad_POI)
        and (tap.Anio_Ejecucion = tc.Anio_Ejecucion))))
join tablero_actividad ta on
    (((ta.Codigo_Actividad = tap.Codigo_Actividad)
        and (tap.Anio_Ejecucion = ta.Anio_Ejecucion))))
join tablero_unidad_medida tum on
    ((tum.Codigo_Unidad_Medida = tap.Codigo_Unidad_Medida)))
where
    ((tc.codigo_mes = '06')
        and (tc.Activo = '1'))
group by
    ta.Anio_Ejecucion,
    ta.Codigo_Actividad,
    tum.Nombre_Unidad_Medida
union all
select
    ta.Anio_Ejecucion as anio_ejecucion,
    ta.Codigo_Actividad as Codigo_Actividad,
    tum.Nombre_Unidad_Medida as Und_Med,
    0 as E_ENE,
    0 as E_FEB,
    0 as E_MAR,
    0 as E_ABR,
    0 as E_MAY,
    0 as E_JUN,
    ifnull(sum(tc.Cantidad), 0) as E_JUL,
    0 as E_AGO,
    0 as E_SEP,
    0 as E_OCT,
    0 as E_NOV,
    0 as E_DIC
from
    (((tablero_control tc
join tablero_actividad_poi tap on
    (((tc.Id_Actividad_POI = tap.Id_Actividad_POI)
        and (tap.Anio_Ejecucion = tc.Anio_Ejecucion))))
join tablero_actividad ta on
    (((ta.Codigo_Actividad = tap.Codigo_Actividad)
        and (tap.Anio_Ejecucion = ta.Anio_Ejecucion))))
join tablero_unidad_medida tum on
    ((tum.Codigo_Unidad_Medida = tap.Codigo_Unidad_Medida)))
where
    ((tc.codigo_mes = '07')
        and (tc.Activo = '1'))
group by
    ta.Anio_Ejecucion,
    ta.Codigo_Actividad,
    tum.Nombre_Unidad_Medida
union all
select
    ta.Anio_Ejecucion as anio_ejecucion,
    ta.Codigo_Actividad as Codigo_Actividad,
    tum.Nombre_Unidad_Medida as Und_Med,
    0 as E_ENE,
    0 as E_FEB,
    0 as E_MAR,
    0 as E_ABR,
    0 as E_MAY,
    0 as E_JUN,
    0 as E_JUL,
    ifnull(sum(tc.Cantidad), 0) as E_AGO,
    0 as E_SEP,
    0 as E_OCT,
    0 as E_NOV,
    0 as E_DIC
from
    (((tablero_control tc
join tablero_actividad_poi tap on
    (((tc.Id_Actividad_POI = tap.Id_Actividad_POI)
        and (tap.Anio_Ejecucion = tc.Anio_Ejecucion))))
join tablero_actividad ta on
    (((ta.Codigo_Actividad = tap.Codigo_Actividad)
        and (tap.Anio_Ejecucion = ta.Anio_Ejecucion))))
join tablero_unidad_medida tum on
    ((tum.Codigo_Unidad_Medida = tap.Codigo_Unidad_Medida)))
where
    ((tc.codigo_mes = '08')
        and (tc.Activo = '1'))
group by
    ta.Anio_Ejecucion,
    ta.Codigo_Actividad,
    tum.Nombre_Unidad_Medida
union all
select
    ta.Anio_Ejecucion as anio_ejecucion,
    ta.Codigo_Actividad as Codigo_Actividad,
    tum.Nombre_Unidad_Medida as Und_Med,
    0 as E_ENE,
    0 as E_FEB,
    0 as E_MAR,
    0 as E_ABR,
    0 as E_MAY,
    0 as E_JUN,
    0 as E_JUL,
    0 as E_AGO,
    ifnull(sum(tc.Cantidad), 0) as E_SEP,
    0 as E_OCT,
    0 as E_NOV,
    0 as E_DIC
from
    (((tablero_control tc
join tablero_actividad_poi tap on
    (((tc.Id_Actividad_POI = tap.Id_Actividad_POI)
        and (tap.Anio_Ejecucion = tc.Anio_Ejecucion))))
join tablero_actividad ta on
    (((ta.Codigo_Actividad = tap.Codigo_Actividad)
        and (tap.Anio_Ejecucion = ta.Anio_Ejecucion))))
join tablero_unidad_medida tum on
    ((tum.Codigo_Unidad_Medida = tap.Codigo_Unidad_Medida)))
where
    ((tc.codigo_mes = '09')
        and (tc.Activo = '1'))
group by
    ta.Anio_Ejecucion,
    ta.Codigo_Actividad,
    tum.Nombre_Unidad_Medida
union all
select
    ta.Anio_Ejecucion as anio_ejecucion,
    ta.Codigo_Actividad as Codigo_Actividad,
    tum.Nombre_Unidad_Medida as Und_Med,
    0 as E_ENE,
    0 as E_FEB,
    0 as E_MAR,
    0 as E_ABR,
    0 as E_MAY,
    0 as E_JUN,
    0 as E_JUL,
    0 as E_AGO,
    0 as E_SEP,
    ifnull(sum(tc.Cantidad), 0) as E_OCT,
    0 as E_NOV,
    0 as E_DIC
from
    (((tablero_control tc
join tablero_actividad_poi tap on
    (((tc.Id_Actividad_POI = tap.Id_Actividad_POI)
        and (tap.Anio_Ejecucion = tc.Anio_Ejecucion))))
join tablero_actividad ta on
    (((ta.Codigo_Actividad = tap.Codigo_Actividad)
        and (tap.Anio_Ejecucion = ta.Anio_Ejecucion))))
join tablero_unidad_medida tum on
    ((tum.Codigo_Unidad_Medida = tap.Codigo_Unidad_Medida)))
where
    ((tc.codigo_mes = '10')
        and (tc.Activo = '1'))
group by
    ta.Anio_Ejecucion,
    ta.Codigo_Actividad,
    tum.Nombre_Unidad_Medida
union all
select
    ta.Anio_Ejecucion as anio_ejecucion,
    ta.Codigo_Actividad as Codigo_Actividad,
    tum.Nombre_Unidad_Medida as Und_Med,
    0 as E_ENE,
    0 as E_FEB,
    0 as E_MAR,
    0 as E_ABR,
    0 as E_MAY,
    0 as E_JUN,
    0 as E_JUL,
    0 as E_AGO,
    0 as E_SEP,
    0 as E_OCT,
    ifnull(sum(tc.Cantidad), 0) as E_NOV,
    0 as E_DIC
from
    (((tablero_control tc
join tablero_actividad_poi tap on
    (((tc.Id_Actividad_POI = tap.Id_Actividad_POI)
        and (tap.Anio_Ejecucion = tc.Anio_Ejecucion))))
join tablero_actividad ta on
    (((ta.Codigo_Actividad = tap.Codigo_Actividad)
        and (tap.Anio_Ejecucion = ta.Anio_Ejecucion))))
join tablero_unidad_medida tum on
    ((tum.Codigo_Unidad_Medida = tap.Codigo_Unidad_Medida)))
where
    ((tc.codigo_mes = '11')
        and (tc.Activo = '1'))
group by
    ta.Anio_Ejecucion,
    ta.Codigo_Actividad,
    tum.Nombre_Unidad_Medida
union all
select
    ta.Anio_Ejecucion as anio_ejecucion,
    ta.Codigo_Actividad as Codigo_Actividad,
    tum.Nombre_Unidad_Medida as Und_Med,
    0 as E_ENE,
    0 as E_FEB,
    0 as E_MAR,
    0 as E_ABR,
    0 as E_MAY,
    0 as E_JUN,
    0 as E_JUL,
    0 as E_AGO,
    0 as E_SEP,
    0 as E_OCT,
    0 as E_NOV,
    ifnull(sum(tc.Cantidad), 0) as E_DIC
from
    (((tablero_control tc
join tablero_actividad_poi tap on
    (((tc.Id_Actividad_POI = tap.Id_Actividad_POI)
        and (tap.Anio_Ejecucion = tc.Anio_Ejecucion))))
join tablero_actividad ta on
    (((ta.Codigo_Actividad = tap.Codigo_Actividad)
        and (tap.Anio_Ejecucion = ta.Anio_Ejecucion))))
join tablero_unidad_medida tum on
    ((tum.Codigo_Unidad_Medida = tap.Codigo_Unidad_Medida)))
where
    ((tc.codigo_mes = '12')
        and (tc.Activo = '1'))
group by
    ta.Anio_Ejecucion,
    ta.Codigo_Actividad,
    tum.Nombre_Unidad_Medida;

create view ceplan_ejecucion_tablero_mensual as
select
    ceplan_ejecucion_tablero_mensual_general.anio_ejecucion as anio_ejecucion,
    ceplan_ejecucion_tablero_mensual_general.Codigo_Actividad as Codigo_Actividad,
    ceplan_ejecucion_tablero_mensual_general.Und_Med as Und_Med,
    sum(ceplan_ejecucion_tablero_mensual_general.E_ENE) as E_ENE,
    sum(ceplan_ejecucion_tablero_mensual_general.E_FEB) as E_FEB,
    sum(ceplan_ejecucion_tablero_mensual_general.E_MAR) as E_MAR,
    sum(ceplan_ejecucion_tablero_mensual_general.E_ABR) as E_ABR,
    sum(ceplan_ejecucion_tablero_mensual_general.E_MAY) as E_MAY,
    sum(ceplan_ejecucion_tablero_mensual_general.E_JUN) as E_JUN,
    sum(ceplan_ejecucion_tablero_mensual_general.E_JUL) as E_JUL,
    sum(ceplan_ejecucion_tablero_mensual_general.E_AGO) as E_AGO,
    sum(ceplan_ejecucion_tablero_mensual_general.E_SEP) as E_SEP,
    sum(ceplan_ejecucion_tablero_mensual_general.E_OCT) as E_OCT,
    sum(ceplan_ejecucion_tablero_mensual_general.E_NOV) as E_NOV,
    sum(ceplan_ejecucion_tablero_mensual_general.E_DIC) as E_DIC
from
    ceplan_ejecucion_tablero_mensual_general
group by
    ceplan_ejecucion_tablero_mensual_general.anio_ejecucion,
    ceplan_ejecucion_tablero_mensual_general.Codigo_Actividad,
    ceplan_ejecucion_tablero_mensual_general.Und_Med;

create view ceplan_ejecucion_tablero_mensual_actividades as
select
    cap.Anio_Ejecucion as Anio_Ejecucion,
    cap.Codigo_Actividad as Codigo_Actividad,
    cap.Nombre_Actividad as Nombre_Actividad,
    cap.Und_Med as Und_Med,
    ifnull(sum(cap.P_ENE), 0) as P_ENE,
    ifnull(sum(cetm.E_ENE), 0) as E_ENE,
    ifnull(sum(cap.P_FEB), 0) as P_FEB,
    ifnull(sum(cetm.E_FEB), 0) as E_FEB,
    ifnull(sum(cap.P_MAR), 0) as P_MAR,
    ifnull(sum(cetm.E_MAR), 0) as E_MAR,
    ifnull(sum(cap.P_ABR), 0) as P_ABR,
    ifnull(sum(cetm.E_ABR), 0) as E_ABR,
    ifnull(sum(cap.P_MAY), 0) as P_MAY,
    ifnull(sum(cetm.E_MAY), 0) as E_MAY,
    ifnull(sum(cap.P_JUN), 0) as P_JUN,
    ifnull(sum(cetm.E_JUN), 0) as E_JUN,
    ifnull(sum(cap.P_JUL), 0) as P_JUL,
    ifnull(sum(cetm.E_JUL), 0) as E_JUL,
    ifnull(sum(cap.P_AGO), 0) as P_AGO,
    ifnull(sum(cetm.E_AGO), 0) as E_AGO,
    ifnull(sum(cap.P_SEP), 0) as P_SEP,
    ifnull(sum(cetm.E_SEP), 0) as E_SEP,
    ifnull(sum(cap.P_OCT), 0) as P_OCT,
    ifnull(sum(cetm.E_OCT), 0) as E_OCT,
    ifnull(sum(cap.P_NOV), 0) as P_NOV,
    ifnull(sum(cetm.E_NOV), 0) as E_NOV,
    ifnull(sum(cap.P_DIC), 0) as P_DIC,
    ifnull(sum(cetm.E_DIC), 0) as E_DIC
from
    (ceplan_actividades_presupuestales cap
left join ceplan_ejecucion_tablero_mensual cetm on
    (((cetm.anio_ejecucion = cap.Anio_Ejecucion)
        and (cetm.Codigo_Actividad = cap.Codigo_Actividad)
            and (cap.Und_Med = cetm.Und_Med))))
group by
    cap.Anio_Ejecucion,
    cap.Codigo_Actividad,
    cap.Nombre_Actividad,
    cap.Und_Med;

create view vista_tablero_control_01 as
select
    tablero_control.Anio_Ejecucion as Anio_Ejecucion,
    tablero_control.Id_Actividad_POI as Id_Actividad_POI,
    tablero_control.Codigo_Area as Codigo_Area,
    sum(tablero_control.Cantidad) as Cantidad,
    sum(tablero_control.Costo) as Costo
from
    tablero_control
where
    (tablero_control.Activo = '1')
group by
    tablero_control.Anio_Ejecucion,
    tablero_control.Id_Actividad_POI,
    tablero_control.Codigo_Area;

create view vista_tablero_control_02 as
select
    actividad.Anio_Ejecucion as Anio_Ejecucion,
    actividad.Id_Actividad_POI as Id_Actividad_POI,
    area.Codigo_Area as Codigo_Area,
    (((((((((((actividad.Enero + actividad.Febrero) + actividad.Marzo) + actividad.Abril) + actividad.Mayo) + actividad.Junio) + actividad.Julio) + actividad.Agosto) + actividad.Septiembre) + actividad.Octubre) + actividad.Noviembre) + actividad.Diciembre) as Cantidad,
    actividad.Costo_Programado as Costo
from
    (tablero_actividad_poi actividad
left join tablero_area_actividad_poi area on
    ((actividad.Id_Actividad_POI = area.Id_Actividad_POI)));

create view vista_tablero_control_03 as
select
    vista_tablero_control_02.Anio_Ejecucion as Anio_Ejecucion,
    vista_tablero_control_02.Id_Actividad_POI as Id_Actividad_POI,
    ifnull(vista_tablero_control_02.Codigo_Area, '00') as Codigo_Area,
    vista_tablero_control_02.Cantidad as Cantidad,
    vista_tablero_control_02.Costo as Costo,
    ifnull(vista_tablero_control_01.Cantidad, 0) as Ejecutado,
    ifnull(vista_tablero_control_01.Costo, 0) as Gastado
from
    (vista_tablero_control_02
left join vista_tablero_control_01 on
    (((vista_tablero_control_02.Anio_Ejecucion = vista_tablero_control_01.Anio_Ejecucion)
        and (vista_tablero_control_02.Id_Actividad_POI = vista_tablero_control_01.Id_Actividad_POI)
            and (vista_tablero_control_02.Codigo_Area = vista_tablero_control_01.Codigo_Area))));

create view vista_tablero_control_04 as
select
    tablero_area.Anio_Ejecucion as Anio_Ejecucion,
    tablero_area.Codigo_Sector as Codigo_Sector,
    tablero_area.Codigo_Pliego as Codigo_Pliego,
    tablero_area.Codigo_Ejecutora as Codigo_Ejecutora,
    tablero_area.Codigo_Centro_Costos as Codigo_Centro_Costos,
    tablero_area.Codigo_Sub_Centro_Costos as Codigo_Sub_Centro_Costos,
    tablero_area.Codigo_Area as Codigo_Area,
    tablero_area.Nombre_Area as Nombre_Area,
    tablero_area.Siglas_Area as Siglas_Area,
    tablero_area.Mostrar as Mostrar,
    tablero_area.Orden as Orden,
    tablero_area.Activo as Activo
from
    tablero_area
where
    (tablero_area.Codigo_Area <> '00');

create view vista_tablero_control_05 as
select
    area.Anio_Ejecucion as Anio_Ejecucion,
    area.Codigo_Area as Codigo_Area,
    area.Nombre_Area as Nombre_Area,
    area.Siglas_Area as Siglas_Area,
    sum(ifnull(tablero.Cantidad, 0)) as Cantidad,
    sum(ifnull(tablero.Ejecutado, 0)) as Ejecutado,
    sum(ifnull(tablero.Costo, 0)) as Costo,
    sum(ifnull(tablero.Gastado, 0)) as Invertido,
    ifnull(format(((sum(ifnull(tablero.Ejecutado, 0)) * 100) / sum(ifnull(tablero.Cantidad, 0))), 2), 0) as P_Ejecutado,
    ifnull(format(((sum(ifnull(tablero.Gastado, 0)) * 100) / sum(ifnull(tablero.Costo, 0))), 2), 0) as P_Invertido
from
    (vista_tablero_control_04 area
left join vista_tablero_control_03 tablero on
    (((tablero.Anio_Ejecucion = area.Anio_Ejecucion)
        and (tablero.Codigo_Area = area.Codigo_Area))))
group by
    area.Anio_Ejecucion,
    area.Codigo_Area,
    area.Nombre_Area,
    area.Siglas_Area;

create view ubigeo_departamento as
select
    ubigeo.Codigo_Departamento as Codigo_Departamento,
    ubigeo.Nombre as Nombre,
    ubigeo.Codigo_Provincia as Codigo_Provincia,
    ubigeo.Codigo_Distrito as Codigo_Distrito
from
    ubigeo
where
    ((ubigeo.Codigo_Provincia = '00')
        and (ubigeo.Codigo_Distrito = '00'));

create view ubigeo_distrito as
select
    ubigeo.Codigo_Departamento as Codigo_Departamento,
    ubigeo.Codigo_Provincia as Codigo_Provincia,
    ubigeo.Codigo_Distrito as Codigo_Distrito,
    ubigeo.Nombre as Nombre
from
    ubigeo
where
    (ubigeo.Codigo_Distrito <> '00');

create view ubigeo_provincia as
select
    ubigeo.Codigo_Departamento as Codigo_Departamento,
    ubigeo.Codigo_Provincia as Codigo_Provincia,
    ubigeo.Nombre as Nombre,
    ubigeo.Codigo_Distrito as Codigo_Distrito
from
    ubigeo
where
    ((ubigeo.Codigo_Distrito = '00')
        and (ubigeo.Codigo_Provincia <> '00'));

create view programacion_tablero_semestre_01 as
select
    tablero_actividad_poi.Anio_Ejecucion as Anio,
    tablero_actividad_poi.Id_Actividad_POI as ID,
    tablero_actividad_poi.Descripcion_Actividad as Actividad_POI,
    coalesce(tablero_actividad_poi.Enero, 0) as P_ENE,
    coalesce(tablero_actividad_poi.Febrero, 0) as P_FEB,
    coalesce(tablero_actividad_poi.Marzo, 0) as P_MAR,
    coalesce(tablero_actividad_poi.Abril, 0) as P_ABR,
    coalesce(tablero_actividad_poi.Mayo, 0) as P_MAY,
    coalesce(tablero_actividad_poi.Junio, 0) as P_JUN
from
    tablero_actividad_poi;

create view programacion_tablero_semestre_02 as
select
    tablero_actividad_poi.Anio_Ejecucion as Anio,
    tablero_actividad_poi.Id_Actividad_POI as ID,
    tablero_actividad_poi.Descripcion_Actividad as Actividad_POI,
    coalesce(tablero_actividad_poi.Julio, 0) as P_JUL,
    coalesce(tablero_actividad_poi.Agosto, 0) as P_AGO,
    coalesce(tablero_actividad_poi.Septiembre, 0) as P_SEP,
    coalesce(tablero_actividad_poi.Octubre, 0) as P_OCT,
    coalesce(tablero_actividad_poi.Noviembre, 0) as P_NOV,
    coalesce(tablero_actividad_poi.Diciembre, 0) as P_DIC
from
    tablero_actividad_poi;

create view programacion_tablero_trimestral as
select
    tablero_actividad_poi.Anio_Ejecucion as Anio,
    tablero_actividad_poi.Id_Actividad_POI as ID,
    tablero_actividad_poi.Descripcion_Actividad as Actividad_POI,
    ((tablero_actividad_poi.Enero + tablero_actividad_poi.Febrero) + tablero_actividad_poi.Marzo) as P_I_Trim,
    ((tablero_actividad_poi.Abril + tablero_actividad_poi.Mayo) + tablero_actividad_poi.Junio) as P_II_Trim,
    ((tablero_actividad_poi.Julio + tablero_actividad_poi.Agosto) + tablero_actividad_poi.Septiembre) as P_III_Trim,
    ((tablero_actividad_poi.Octubre + tablero_actividad_poi.Noviembre) + tablero_actividad_poi.Diciembre) as P_IV_Trim
from
    tablero_actividad_poi;

create view ejecucion_tablero_semestre_01 as
select
    tc.Anio_Ejecucion as Anio,
    ap.Id_Actividad_POI as ID,
    ap.Descripcion_Actividad as Actividad_POI,
    coalesce(sum(tc.Cantidad), 0) as ENE,
    0 as FEB,
    0 as MAR,
    0 as ABR,
    0 as MAY,
    0 as JUN
from
    (tablero_control tc
join tablero_actividad_poi ap on
    (((tc.Anio_Ejecucion = ap.Anio_Ejecucion)
        and (tc.Id_Actividad_POI = ap.Id_Actividad_POI))))
where
    ((tc.codigo_mes = '01')
        and (tc.Activo = '1'))
group by
    tc.Anio_Ejecucion,
    ap.Id_Actividad_POI,
    ap.Descripcion_Actividad
union all
select
    tc.Anio_Ejecucion as Anio,
    ap.Id_Actividad_POI as ID,
    ap.Descripcion_Actividad as Actividad_POI,
    0 as ENE,
    coalesce(sum(tc.Cantidad), 0) as FEB,
    0 as MAR,
    0 as ABR,
    0 as MAY,
    0 as JUN
from
    (tablero_control tc
join tablero_actividad_poi ap on
    (((tc.Anio_Ejecucion = ap.Anio_Ejecucion)
        and (tc.Id_Actividad_POI = ap.Id_Actividad_POI))))
where
    ((tc.codigo_mes = '02')
        and (tc.Activo = '1'))
group by
    tc.Anio_Ejecucion,
    ap.Id_Actividad_POI,
    ap.Descripcion_Actividad
union all
select
    tc.Anio_Ejecucion as Anio,
    ap.Id_Actividad_POI as ID,
    ap.Descripcion_Actividad as Actividad_POI,
    0 as ENE,
    0 as FEB,
    coalesce(sum(tc.Cantidad), 0) as MAR,
    0 as ABR,
    0 as MAY,
    0 as JUN
from
    (tablero_control tc
join tablero_actividad_poi ap on
    (((tc.Anio_Ejecucion = ap.Anio_Ejecucion)
        and (tc.Id_Actividad_POI = ap.Id_Actividad_POI))))
where
    ((tc.codigo_mes = '03')
        and (tc.Activo = '1'))
group by
    tc.Anio_Ejecucion,
    ap.Id_Actividad_POI,
    ap.Descripcion_Actividad
union all
select
    tc.Anio_Ejecucion as Anio,
    ap.Id_Actividad_POI as ID,
    ap.Descripcion_Actividad as Actividad_POI,
    0 as ENE,
    0 as FEB,
    0 as MAR,
    coalesce(sum(tc.Cantidad), 0) as ABR,
    0 as MAY,
    0 as JUN
from
    (tablero_control tc
join tablero_actividad_poi ap on
    (((tc.Anio_Ejecucion = ap.Anio_Ejecucion)
        and (tc.Id_Actividad_POI = ap.Id_Actividad_POI))))
where
    ((tc.codigo_mes = '04')
        and (tc.Activo = '1'))
group by
    tc.Anio_Ejecucion,
    ap.Id_Actividad_POI,
    ap.Descripcion_Actividad
union all
select
    tc.Anio_Ejecucion as Anio,
    ap.Id_Actividad_POI as ID,
    ap.Descripcion_Actividad as Actividad_POI,
    0 as ENE,
    0 as FEB,
    0 as MAR,
    0 as ABR,
    coalesce(sum(tc.Cantidad), 0) as MAY,
    0 as JUN
from
    (tablero_control tc
join tablero_actividad_poi ap on
    (((tc.Anio_Ejecucion = ap.Anio_Ejecucion)
        and (tc.Id_Actividad_POI = ap.Id_Actividad_POI))))
where
    ((tc.codigo_mes = '05')
        and (tc.Activo = '1'))
group by
    tc.Anio_Ejecucion,
    ap.Id_Actividad_POI,
    ap.Descripcion_Actividad
union all
select
    tc.Anio_Ejecucion as Anio,
    ap.Id_Actividad_POI as ID,
    ap.Descripcion_Actividad as Actividad_POI,
    0 as ENE,
    0 as FEB,
    0 as MAR,
    0 as ABR,
    0 as MAY,
    coalesce(sum(tc.Cantidad), 0) as JUN
from
    (tablero_control tc
join tablero_actividad_poi ap on
    (((tc.Anio_Ejecucion = ap.Anio_Ejecucion)
        and (tc.Id_Actividad_POI = ap.Id_Actividad_POI))))
where
    ((tc.codigo_mes = '06')
        and (tc.Activo = '1'))
group by
    tc.Anio_Ejecucion,
    ap.Id_Actividad_POI,
    ap.Descripcion_Actividad;
	
create view ejecucion_tablero_semestre_01_resumen as
select
    ejecucion_tablero_semestre_01.Anio as Anio,
    ejecucion_tablero_semestre_01.ID as ID,
    ejecucion_tablero_semestre_01.Actividad_POI as Actividad_POI,
    sum(ejecucion_tablero_semestre_01.ENE) as E_ENE,
    sum(ejecucion_tablero_semestre_01.FEB) as E_FEB,
    sum(ejecucion_tablero_semestre_01.MAR) as E_MAR,
    sum(ejecucion_tablero_semestre_01.ABR) as E_ABR,
    sum(ejecucion_tablero_semestre_01.MAY) as E_MAY,
    sum(ejecucion_tablero_semestre_01.JUN) as E_JUN
from
    ejecucion_tablero_semestre_01
group by
    ejecucion_tablero_semestre_01.Anio,
    ejecucion_tablero_semestre_01.ID,
    ejecucion_tablero_semestre_01.Actividad_POI;

create view ejecucion_tablero_semestre_02 as
select
    tc.Anio_Ejecucion as Anio,
    ap.Id_Actividad_POI as ID,
    ap.Descripcion_Actividad as Actividad_POI,
    coalesce(sum(tc.Cantidad), 0) as JUL,
    0 as AGO,
    0 as SEP,
    0 as OCT,
    0 as NOV,
    0 as DIC
from
    (tablero_control tc
join tablero_actividad_poi ap on
    (((tc.Anio_Ejecucion = ap.Anio_Ejecucion)
        and (tc.Id_Actividad_POI = ap.Id_Actividad_POI))))
where
    ((tc.codigo_mes = '07')
        and (tc.Activo = '1'))
group by
    tc.Anio_Ejecucion,
    ap.Id_Actividad_POI,
    ap.Descripcion_Actividad
union all
select
    tc.Anio_Ejecucion as Anio,
    ap.Id_Actividad_POI as ID,
    ap.Descripcion_Actividad as Actividad_POI,
    0 as JUL,
    coalesce(sum(tc.Cantidad), 0) as AGO,
    0 as SEP,
    0 as OCT,
    0 as NOV,
    0 as DIC
from
    (tablero_control tc
join tablero_actividad_poi ap on
    (((tc.Anio_Ejecucion = ap.Anio_Ejecucion)
        and (tc.Id_Actividad_POI = ap.Id_Actividad_POI))))
where
    ((tc.codigo_mes = '08')
        and (tc.Activo = '1'))
group by
    tc.Anio_Ejecucion,
    ap.Id_Actividad_POI,
    ap.Descripcion_Actividad
union all
select
    tc.Anio_Ejecucion as Anio,
    ap.Id_Actividad_POI as ID,
    ap.Descripcion_Actividad as Actividad_POI,
    0 as JUL,
    0 as AGO,
    coalesce(sum(tc.Cantidad), 0) as SEP,
    0 as OCT,
    0 as NOV,
    0 as DIC
from
    (tablero_control tc
join tablero_actividad_poi ap on
    (((tc.Anio_Ejecucion = ap.Anio_Ejecucion)
        and (tc.Id_Actividad_POI = ap.Id_Actividad_POI))))
where
    ((tc.codigo_mes = '09')
        and (tc.Activo = '1'))
group by
    tc.Anio_Ejecucion,
    ap.Id_Actividad_POI,
    ap.Descripcion_Actividad
union all
select
    tc.Anio_Ejecucion as Anio,
    ap.Id_Actividad_POI as ID,
    ap.Descripcion_Actividad as Actividad_POI,
    0 as JUL,
    0 as AGO,
    0 as SEP,
    coalesce(sum(tc.Cantidad), 0) as OCT,
    0 as NOV,
    0 as DIC
from
    (tablero_control tc
join tablero_actividad_poi ap on
    (((tc.Anio_Ejecucion = ap.Anio_Ejecucion)
        and (tc.Id_Actividad_POI = ap.Id_Actividad_POI))))
where
    ((tc.codigo_mes = '10')
        and (tc.Activo = '1'))
group by
    tc.Anio_Ejecucion,
    ap.Id_Actividad_POI,
    ap.Descripcion_Actividad
union all
select
    tc.Anio_Ejecucion as Anio,
    ap.Id_Actividad_POI as ID,
    ap.Descripcion_Actividad as Actividad_POI,
    0 as JUL,
    0 as AGO,
    0 as SEP,
    0 as OCT,
    coalesce(sum(tc.Cantidad), 0) as NOV,
    0 as DIC
from
    (tablero_control tc
join tablero_actividad_poi ap on
    (((tc.Anio_Ejecucion = ap.Anio_Ejecucion)
        and (tc.Id_Actividad_POI = ap.Id_Actividad_POI))))
where
    ((tc.codigo_mes = '11')
        and (tc.Activo = '1'))
group by
    tc.Anio_Ejecucion,
    ap.Id_Actividad_POI,
    ap.Descripcion_Actividad
union all
select
    tc.Anio_Ejecucion as Anio,
    ap.Id_Actividad_POI as ID,
    ap.Descripcion_Actividad as Actividad_POI,
    0 as JUL,
    0 as AGO,
    0 as SEP,
    0 as OCT,
    0 as NOV,
    coalesce(sum(tc.Cantidad), 0) as DIC
from
    (tablero_control tc
join tablero_actividad_poi ap on
    (((tc.Anio_Ejecucion = ap.Anio_Ejecucion)
        and (tc.Id_Actividad_POI = ap.Id_Actividad_POI))))
where
    ((tc.codigo_mes = '12')
        and (tc.Activo = '1'))
group by
    tc.Anio_Ejecucion,
    ap.Id_Actividad_POI,
    ap.Descripcion_Actividad;

create view ejecucion_tablero_semestre_02_resumen as
select
    ejecucion_tablero_semestre_02.Anio as Anio,
    ejecucion_tablero_semestre_02.ID as ID,
    ejecucion_tablero_semestre_02.Actividad_POI as Actividad_POI,
    sum(ejecucion_tablero_semestre_02.JUL) as E_JUL,
    sum(ejecucion_tablero_semestre_02.AGO) as E_AGO,
    sum(ejecucion_tablero_semestre_02.SEP) as E_SEP,
    sum(ejecucion_tablero_semestre_02.OCT) as E_OCT,
    sum(ejecucion_tablero_semestre_02.NOV) as E_NOV,
    sum(ejecucion_tablero_semestre_02.DIC) as E_DIC
from
    ejecucion_tablero_semestre_02
group by
    ejecucion_tablero_semestre_02.Anio,
    ejecucion_tablero_semestre_02.ID,
    ejecucion_tablero_semestre_02.Actividad_POI;

create view programacion_tablero_vs_ejecucion_semestre_01 as
select
    pts1.Anio as Anio,
    pts1.ID as ID,
    pts1.Actividad_POI as Actividad_POI,
    pts1.P_ENE as P_ENE,
    coalesce(ets1.E_ENE, 0) as E_ENE,
    pts1.P_FEB as P_FEB,
    coalesce(ets1.E_FEB, 0) as E_FEB,
    pts1.P_MAR as P_MAR,
    coalesce(ets1.E_MAR, 0) as E_MAR,
    pts1.P_ABR as P_ABR,
    coalesce(ets1.E_ABR, 0) as E_ABR,
    pts1.P_MAY as P_MAY,
    coalesce(ets1.E_MAY, 0) as E_MAY,
    pts1.P_JUN as P_JUN,
    coalesce(ets1.E_JUN, 0) as E_JUN
from
    (programacion_tablero_semestre_01 pts1
left join ejecucion_tablero_semestre_01_resumen ets1 on
    (((pts1.Anio = ets1.Anio)
        and (pts1.ID = ets1.ID))));

create view ejecucion_tablero_trimestre_1 as
select
    tc.Anio_Ejecucion as Anio,
    ap.Id_Actividad_POI as ID,
    ap.Descripcion_Actividad as Actividad_POI,
    sum(tc.Cantidad) as I_Trim
from
    (tablero_control tc
join tablero_actividad_poi ap on
    (((tc.Anio_Ejecucion = ap.Anio_Ejecucion)
        and (tc.Id_Actividad_POI = ap.Id_Actividad_POI))))
where
    ((tc.codigo_mes in ('01', '02', '03'))
        and (tc.Activo = '1'))
group by
    tc.Anio_Ejecucion,
    ap.Id_Actividad_POI,
    ap.Descripcion_Actividad;

create view ejecucion_tablero_trimestre_2 as
select
    tc.Anio_Ejecucion as Anio,
    ap.Id_Actividad_POI as ID,
    ap.Descripcion_Actividad as Actividad_POI,
    sum(tc.Cantidad) as II_Trim
from
    (tablero_control tc
join tablero_actividad_poi ap on
    (((tc.Anio_Ejecucion = ap.Anio_Ejecucion)
        and (tc.Id_Actividad_POI = ap.Id_Actividad_POI))))
where
    ((tc.codigo_mes in ('04', '05', '06'))
        and (tc.Activo = '1'))
group by
    tc.Anio_Ejecucion,
    ap.Id_Actividad_POI,
    ap.Descripcion_Actividad;

create view ejecucion_tablero_trimestre_3 as
select
    tc.Anio_Ejecucion as Anio,
    ap.Id_Actividad_POI as ID,
    ap.Descripcion_Actividad as Actividad_POI,
    sum(tc.Cantidad) as III_Trim
from
    (tablero_control tc
join tablero_actividad_poi ap on
    (((tc.Anio_Ejecucion = ap.Anio_Ejecucion)
        and (tc.Id_Actividad_POI = ap.Id_Actividad_POI))))
where
    ((tc.codigo_mes in ('07', '08', '09'))
        and (tc.Activo = '1'))
group by
    tc.Anio_Ejecucion,
    ap.Id_Actividad_POI,
    ap.Descripcion_Actividad;

create view ejecucion_tablero_trimestre_4 as
select
    tc.Anio_Ejecucion as Anio,
    ap.Id_Actividad_POI as ID,
    ap.Descripcion_Actividad as Actividad_POI,
    sum(tc.Cantidad) as IV_Trim
from
    (tablero_control tc
join tablero_actividad_poi ap on
    (((tc.Anio_Ejecucion = ap.Anio_Ejecucion)
        and (tc.Id_Actividad_POI = ap.Id_Actividad_POI))))
where
    ((tc.codigo_mes in ('10', '11', '12'))
        and (tc.Activo = '1'))
group by
    tc.Anio_Ejecucion,
    ap.Id_Actividad_POI,
    ap.Descripcion_Actividad;

create view ejecucion_tablero_trimestral as
select
    ett1.Anio as Anio,
    ett1.ID as ID,
    ett1.Actividad_POI as Actividad_POI,
    ett1.I_Trim as I_Trim,
    0 as II_Trim,
    0 as III_Trim,
    0 as IV_Trim
from
    ejecucion_tablero_trimestre_1 ett1
union all
select
    ett2.Anio as Anio,
    ett2.ID as ID,
    ett2.Actividad_POI as Actividad_POI,
    0 as I_Trim,
    ett2.II_Trim as II_Trim,
    0 as III_Trim,
    0 as IV_Trim
from
    ejecucion_tablero_trimestre_2 ett2
union all
select
    ett3.Anio as Anio,
    ett3.ID as ID,
    ett3.Actividad_POI as Actividad_POI,
    0 as I_Trim,
    0 as II_Trim,
    ett3.III_Trim as III_Trim,
    0 as IV_Trim
from
    ejecucion_tablero_trimestre_3 ett3
union all
select
    ett4.Anio as Anio,
    ett4.ID as ID,
    ett4.Actividad_POI as Actividad_POI,
    0 as I_Trim,
    0 as II_Trim,
    0 as III_Trim,
    ett4.IV_Trim as IV_Trim
from
    ejecucion_tablero_trimestre_4 ett4;

create view ejecucion_tablero_trimestral_resumen as
select
    ejecucion_tablero_trimestral.Anio as Anio,
    ejecucion_tablero_trimestral.ID as ID,
    ejecucion_tablero_trimestral.Actividad_POI as Actividad_POI,
    sum(ejecucion_tablero_trimestral.I_Trim) as I_Trim,
    sum(ejecucion_tablero_trimestral.II_Trim) as II_Trim,
    sum(ejecucion_tablero_trimestral.III_Trim) as III_Trim,
    sum(ejecucion_tablero_trimestral.IV_Trim) as IV_Trim
from
    ejecucion_tablero_trimestral
group by
    ejecucion_tablero_trimestral.Anio,
    ejecucion_tablero_trimestral.ID,
    ejecucion_tablero_trimestral.Actividad_POI;

create view programacion_tablero_vs_ejecucion_semestre_01_area as
select
    ptvses01.Anio as Anio,
    taap.Codigo_Area as codigo_area,
    ptvses01.ID as ID,
    ptvses01.Actividad_POI as Actividad_POI,
    ptvses01.P_ENE as P_ENE,
    ptvses01.E_ENE as E_ENE,
    ptvses01.P_FEB as P_FEB,
    ptvses01.E_FEB as E_FEB,
    ptvses01.P_MAR as P_MAR,
    ptvses01.E_MAR as E_MAR,
    ptvses01.P_ABR as P_ABR,
    ptvses01.E_ABR as E_ABR,
    ptvses01.P_MAY as P_MAY,
    ptvses01.E_MAY as E_MAY,
    ptvses01.P_JUN as P_JUN,
    ptvses01.E_JUN as E_JUN
from
    (programacion_tablero_vs_ejecucion_semestre_01 ptvses01
join tablero_area_actividad_poi taap on
    (((ptvses01.Anio = taap.Anio_Ejecucion)
        and (ptvses01.ID = taap.Id_Actividad_POI))));
		
create view programacion_tablero_vs_ejecucion_semestre_02 as
select
    pts2.Anio as Anio,
    pts2.ID as ID,
    pts2.Actividad_POI as Actividad_POI,
    pts2.P_JUL as P_JUL,
    coalesce(ets2.E_JUL, 0) as E_JUL,
    pts2.P_AGO as P_AGO,
    coalesce(ets2.E_AGO, 0) as E_AGO,
    pts2.P_SEP as P_SEP,
    coalesce(ets2.E_SEP, 0) as E_SEP,
    pts2.P_OCT as P_OCT,
    coalesce(ets2.E_OCT, 0) as E_OCT,
    pts2.P_NOV as P_NOV,
    coalesce(ets2.E_NOV, 0) as E_NOV,
    pts2.P_DIC as P_DIC,
    coalesce(ets2.E_DIC, 0) as E_DIC
from
    (programacion_tablero_semestre_02 pts2
left join ejecucion_tablero_semestre_02_resumen ets2 on
    (((pts2.Anio = ets2.Anio)
        and (pts2.ID = ets2.ID))));

create view programacion_tablero_vs_ejecucion_semestre_02_area as
select
    ptvses02.Anio as Anio,
    taap.Codigo_Area as codigo_area,
    ptvses02.ID as ID,
    ptvses02.Actividad_POI as Actividad_POI,
    ptvses02.P_JUL as P_JUL,
    ptvses02.E_JUL as E_JUL,
    ptvses02.P_AGO as P_AGO,
    ptvses02.E_AGO as E_AGO,
    ptvses02.P_SEP as P_SEP,
    ptvses02.E_SEP as E_SEP,
    ptvses02.P_OCT as P_OCT,
    ptvses02.E_OCT as E_OCT,
    ptvses02.P_NOV as P_NOV,
    ptvses02.E_NOV as E_NOV,
    ptvses02.P_DIC as P_DIC,
    ptvses02.E_DIC as E_DIC
from
    (programacion_tablero_vs_ejecucion_semestre_02 ptvses02
join tablero_area_actividad_poi taap on
    (((ptvses02.Anio = taap.Anio_Ejecucion)
        and (ptvses02.ID = taap.Id_Actividad_POI))));

create view programacion_tablero_vs_ejecucion_trimestral as
select
    ptt.Anio as Anio,
    ptt.ID as ID,
    ptt.Actividad_POI as Actividad_POI,
    ptt.P_I_Trim as P_I_Trim,
    coalesce(ett.I_Trim, 0) as E_I_Trim,
    ptt.P_II_Trim as P_II_Trim,
    coalesce(ett.II_Trim, 0) as E_II_Trim,
    ptt.P_III_Trim as P_III_Trim,
    coalesce(ett.III_Trim, 0) as E_III_Trim,
    ptt.P_IV_Trim as P_IV_Trim,
    coalesce(ett.IV_Trim, 0) as E_IV_Trim
from
    (programacion_tablero_trimestral ptt
left join ejecucion_tablero_trimestral_resumen ett on
    (((ptt.Anio = ett.Anio)
        and (ptt.ID = ett.ID))));

create view sobredemanda_new_porcentajes as
select
    ficha.idsobredemanda as ID,
    ficha.hospitales_situaciones_nombre_id as hospitales_situaciones_nombre_id,
    ifnull(hospital.hospitales_situaciones_nombre, '[N/A]') as IPRESS,
    ficha.codigo_region as codigo_region,
    ifnull(region.Nombre_Region, '[N/A]') as Region,
    date_format(ficha.fecha_reporte, '%d/%m/%Y') as Fecha,
    ficha.hospitalizacion_porcentaje_01 as Hospitalizacion,
    ficha.emergencia_porcentaje_01 as Emergencia,
    ficha.criticos_porcentaje_01 as Criticos,
    ficha.pediatricos_porcentaje_01 as Pediatricos,
    (case
        ficha.estado when '1' then 'Activo'
        when '0' then 'Anulado'
    end) as Activo
from
    ((hospitales_sobredemanda_new ficha
left join hospitales_situaciones_nombre hospital on
    ((ficha.hospitales_situaciones_nombre_id = hospital.hospitales_situaciones_nombre_id)))
left join region on
    ((region.Codigo_Region = ficha.codigo_region)))
where
    (ficha.estado = '1');

create view sobredemanda_new_porcentajes_top_inicial as
select
    sobredemanda_new_porcentajes.hospitales_situaciones_nombre_id as hospitales_situaciones_nombre_id,
    sobredemanda_new_porcentajes.IPRESS as IPRESS,
    sobredemanda_new_porcentajes.codigo_region as codigo_region,
    sobredemanda_new_porcentajes.Region as Region,
    format(avg(sobredemanda_new_porcentajes.Hospitalizacion), 2) as Hospitalizacion,
    format(avg(sobredemanda_new_porcentajes.Emergencia), 2) as Emergencia,
    format(avg(sobredemanda_new_porcentajes.Criticos), 2) as Criticos,
    format(avg(sobredemanda_new_porcentajes.Pediatricos), 2) as Pedriatricos
from
    sobredemanda_new_porcentajes
group by
    sobredemanda_new_porcentajes.hospitales_situaciones_nombre_id,
    sobredemanda_new_porcentajes.IPRESS,
    sobredemanda_new_porcentajes.codigo_region,
    sobredemanda_new_porcentajes.Region
limit 0,
5;

create view lista_items_hospitales_sobredemanda as
select
    s.idsobredemanda as ID,
    s.hospitales_situaciones_nombre_id as hospitales_situaciones_nombre_id,
    if((s.hospitales_situaciones_nombre_id = 0),
    'DATA REGION',
    'DATA LIMA') as Tip_Reporte,
    ifnull(n.hospitales_situaciones_nombre, '[N/A]') as Hospital,
    s.codigo_region as codigo_region,
    ifnull(r.Nombre_Region, '[N/A]') as Region,
    s.emed_dni as emed_dni,
    s.emed_nombre as Encargado_EMED,
    s.emed_ocupacion as emed_ocupacion,
    s.emed_telefono as emed_telefono,
    s.supervisor_dni as supervisor_dni,
    s.supervisor_nombre as Supervisor,
    s.supervisor_ocupacion as supervisor_ocupacion,
    s.supervisor_telefono as supervisor_telefono,
    date_format(s.fecha_reporte, '%d/%m/%Y') as Fecha,
    s.area_interna as area_interna,
    s.area_externa as area_externa,
    s.camas_hospitalizacion_covid_a as camas_hospitalizacion_covid_a,
    s.camas_hospitalizacion_covid_b as camas_hospitalizacion_covid_b,
    s.camas_hospitalizacion_covid_c as camas_hospitalizacion_covid_c,
    s.camas_hospitalizacion_covid_total as Total_Hospitalizacion,
    s.camas_uci_adultos_covid_d as camas_uci_adultos_covid_d,
    s.camas_uci_adultos_covid_e as camas_uci_adultos_covid_e,
    s.camas_uci_adultos_covid_f as camas_uci_adultos_covid_f,
    s.camas_uci_adultos_covid_total as Total_UCI_Adultos,
    s.camas_uci_pediatrico_covid_h as camas_uci_pediatrico_covid_h,
    s.camas_uci_pediatrico_covid_i as camas_uci_pediatrico_covid_i,
    s.camas_uci_pediatrico_covid_j as camas_uci_pediatrico_covid_j,
    s.camas_uci_pediatrico_covid_total as Total_UCI_Pedriatrico,
    s.camas_uci_covid_total as Total_UCI,
    (case
        s.estado when '1' then 'Activo'
        when '0' then 'Anulado'
    end) as estado
from
    ((hospitales_sobredemanda s
left join region r on
    ((r.Codigo_Region = s.codigo_region)))
left join hospitales_situaciones_nombre n on
    ((s.hospitales_situaciones_nombre_id = n.hospitales_situaciones_nombre_id)));

create view lista_items_hospitales_sobredemanda_new as
select
    s.idsobredemanda as ID,
    s.hospitales_situaciones_nombre_id as hospitales_situaciones_nombre_id,
    if((s.hospitales_situaciones_nombre_id = 0),
    'DATA REGION',
    'DATA LIMA') as Tip_Reporte,
    ifnull(n.hospitales_situaciones_nombre, '[N/A]') as Hospital,
    s.codigo_region as codigo_region,
    ifnull(r.Nombre_Region, '[N/A]') as Region,
    s.emed_dni as emed_dni,
    s.emed_nombre as Encargado_EMED,
    s.emed_ocupacion as emed_ocupacion,
    s.emed_telefono as emed_telefono,
    s.supervisor_dni as supervisor_dni,
    s.supervisor_nombre as Supervisor,
    s.supervisor_ocupacion as supervisor_ocupacion,
    s.supervisor_telefono as supervisor_telefono,
    date_format(s.fecha_reporte, '%d/%m/%Y') as Fecha,
    s.hospitalizacion_porcentaje_01 as Hospitalizacion_01,
    s.hospitalizacion_porcentaje_02 as Hospitalizacion_02,
    s.emergencia_porcentaje_01 as Emergencia_01,
    s.emergencia_porcentaje_02 as Emergencia_02,
    s.criticos_porcentaje_01 as Criticos_01,
    s.criticos_porcentaje_02 as Criticos_02,
    s.pediatricos_porcentaje_01 as Pediatricos_01,
    s.pediatricos_porcentaje_02 as Pediatricos_02,
    (case
        s.estado when '1' then 'Activo'
        when '0' then 'Anulado'
    end) as estado
from
    ((hospitales_sobredemanda_new s
left join region r on
    ((r.Codigo_Region = s.codigo_region)))
left join hospitales_situaciones_nombre n on
    ((s.hospitales_situaciones_nombre_id = n.hospitales_situaciones_nombre_id)));

create view lista_items_hospitales_sobredemanda_reporte_lima as
select
    date_format(fecha.fecha_reporte, '%d/%m/%Y') as Fecha,
    ifnull(lista.Hospital, '[No Reportado]') as Hospital,
    ifnull(lista.camas_hospitalizacion_covid_a, 0) as Camas_Covid_H,
    ifnull(lista.camas_hospitalizacion_covid_b, 0) as Camas_Covid_EI,
    ifnull(lista.camas_hospitalizacion_covid_c, 0) as Camas_Covid_EE,
    ifnull(lista.Total_Hospitalizacion, 0) as Camas_Covid_H_Totales,
    ifnull(lista.camas_uci_adultos_covid_d, 0) as Camas_Covid_UCI_A,
    ifnull(lista.camas_uci_adultos_covid_e, 0) as Camas_Covid_UCI_A_EI,
    ifnull(lista.camas_uci_adultos_covid_f, 0) as Camas_Covid_UCI_A_EE,
    ifnull(lista.Total_UCI_Adultos, 0) as Camas_Totales_UCI_Adultos,
    ifnull(lista.camas_uci_pediatrico_covid_h, 0) as Camas_Covid_UCI_P,
    ifnull(lista.camas_uci_pediatrico_covid_i, 0) as Camas_Covid_UCI_P_EI,
    ifnull(lista.camas_uci_pediatrico_covid_j, 0) as Camas_Covid_UCI_P_EE,
    ifnull(lista.Total_UCI_Pedriatrico, 0) as Camas_Totales_UCI_Pediatrico,
    ifnull(lista.Total_UCI, 0) as Camas_Totales_UCI
from
    (hospitales_sobredemanda_fechas fecha
left join lista_items_hospitales_sobredemanda lista on
    (((date_format(fecha.fecha_reporte, '%d/%m/%Y') = lista.Fecha)
        and (lista.codigo_region = '00'))));

create view lista_items_hospitales_sobredemanda_reporte_lima_new as
select
    date_format(fecha.fecha_reporte, '%d/%m/%Y') as Fecha,
    ifnull(lista.Region, '[No Reportado]') as Region,
    ifnull(lista.Hospital, '[No Reportado]') as Hospital,
    ifnull(lista.Hospitalizacion_01, 0) as Hospitalizacion_01,
    ifnull(lista.Hospitalizacion_02, 0) as Hospitalizacion_02,
    ifnull(lista.Emergencia_01, 0) as Emergencia_01,
    ifnull(lista.Emergencia_02, 0) as Emergencia_02,
    ifnull(lista.Criticos_01, 0) as Criticos_01,
    ifnull(lista.Criticos_02, 0) as Criticos_02,
    ifnull(lista.Pediatricos_01, 0) as Pediatricos_01,
    ifnull(lista.Pediatricos_02, 0) as Pediatricos_02
from
    (hospitales_sobredemanda_fechas fecha
left join lista_items_hospitales_sobredemanda_new lista on
    (((date_format(fecha.fecha_reporte, '%d/%m/%Y') = lista.Fecha)
        and (lista.codigo_region = '00'))));

create view lista_items_hospitales_sobredemanda_reporte_regiones as
select
    date_format(fecha.fecha_reporte, '%d/%m/%Y') as Fecha,
    ifnull(lista.Region, '[No Reportado]') as Region,
    ifnull(lista.camas_hospitalizacion_covid_a, 0) as Camas_Covid_H,
    ifnull(lista.camas_hospitalizacion_covid_b, 0) as Camas_Covid_EI,
    ifnull(lista.camas_hospitalizacion_covid_c, 0) as Camas_Covid_EE,
    ifnull(lista.Total_Hospitalizacion, 0) as Camas_Covid_H_Totales,
    ifnull(lista.camas_uci_adultos_covid_d, 0) as Camas_Covid_UCI_A,
    ifnull(lista.camas_uci_adultos_covid_e, 0) as Camas_Covid_UCI_A_EI,
    ifnull(lista.camas_uci_adultos_covid_f, 0) as Camas_Covid_UCI_A_EE,
    ifnull(lista.Total_UCI_Adultos, 0) as Camas_Totales_UCI_Adultos,
    ifnull(lista.camas_uci_pediatrico_covid_h, 0) as Camas_Covid_UCI_P,
    ifnull(lista.camas_uci_pediatrico_covid_i, 0) as Camas_Covid_UCI_P_EI,
    ifnull(lista.camas_uci_pediatrico_covid_j, 0) as Camas_Covid_UCI_P_EE,
    ifnull(lista.Total_UCI_Pedriatrico, 0) as Camas_Totales_UCI_Pediatrico,
    ifnull(lista.Total_UCI, 0) as Camas_Totales_UCI
from
    (hospitales_sobredemanda_fechas fecha
left join lista_items_hospitales_sobredemanda lista on
    (((date_format(fecha.fecha_reporte, '%d/%m/%Y') = lista.Fecha)
        and (lista.codigo_region <> '00'))));

create view lista_items_hospitales_sobredemanda_reporte_regiones_new as
select
    date_format(fecha.fecha_reporte, '%d/%m/%Y') as Fecha,
    ifnull(lista.Region, '[No Reportado]') as Region,
    ifnull(lista.Hospital, '[No Reportado]') as Hospital,
    ifnull(lista.Hospitalizacion_01, 0) as Hospitalizacion_01,
    ifnull(lista.Hospitalizacion_02, 0) as Hospitalizacion_02,
    ifnull(lista.Emergencia_01, 0) as Emergencia_01,
    ifnull(lista.Emergencia_02, 0) as Emergencia_02,
    ifnull(lista.Criticos_01, 0) as Criticos_01,
    ifnull(lista.Criticos_02, 0) as Criticos_02,
    ifnull(lista.Pediatricos_01, 0) as Pediatricos_01,
    ifnull(lista.Pediatricos_02, 0) as Pediatricos_02
from
    (hospitales_sobredemanda_fechas fecha
left join lista_items_hospitales_sobredemanda_new lista on
    (((date_format(fecha.fecha_reporte, '%d/%m/%Y') = lista.Fecha)
        and (lista.codigo_region <> '00'))));

create view lista_eventos_cantidades_regiones as
select
    count(0) as Cantidad,
    '01' as Codigo_Region,
    evento_registro.Evento_Estado_Codigo as Evento_Estado_Codigo
from
    evento_registro
where
    (left(evento_registro.Evento_Ubigeo,
    2) = '01')
union all
select
    count(0) as Cantidad,
    '02' as Codigo_Region,
    evento_registro.Evento_Estado_Codigo as Evento_Estado_Codigo
from
    evento_registro
where
    (left(evento_registro.Evento_Ubigeo,
    2) = '02')
union all
select
    count(0) as Cantidad,
    '03' as Codigo_Region,
    evento_registro.Evento_Estado_Codigo as Evento_Estado_Codigo
from
    evento_registro
where
    (left(evento_registro.Evento_Ubigeo,
    2) = '03')
union all
select
    count(0) as Cantidad,
    '04' as Codigo_Region,
    evento_registro.Evento_Estado_Codigo as Evento_Estado_Codigo
from
    evento_registro
where
    (left(evento_registro.Evento_Ubigeo,
    2) = '04')
union all
select
    count(0) as Cantidad,
    '05' as Codigo_Region,
    evento_registro.Evento_Estado_Codigo as Evento_Estado_Codigo
from
    evento_registro
where
    (left(evento_registro.Evento_Ubigeo,
    2) = '05')
union all
select
    count(0) as Cantidad,
    '06' as Codigo_Region,
    evento_registro.Evento_Estado_Codigo as Evento_Estado_Codigo
from
    evento_registro
where
    (left(evento_registro.Evento_Ubigeo,
    2) = '06')
union all
select
    count(0) as Cantidad,
    '07' as Codigo_Region,
    evento_registro.Evento_Estado_Codigo as Evento_Estado_Codigo
from
    evento_registro
where
    (left(evento_registro.Evento_Ubigeo,
    2) = '07')
union all
select
    count(0) as Cantidad,
    '08' as Codigo_Region,
    evento_registro.Evento_Estado_Codigo as Evento_Estado_Codigo
from
    evento_registro
where
    (left(evento_registro.Evento_Ubigeo,
    2) = '08')
union all
select
    count(0) as Cantidad,
    '09' as Codigo_Region,
    evento_registro.Evento_Estado_Codigo as Evento_Estado_Codigo
from
    evento_registro
where
    (left(evento_registro.Evento_Ubigeo,
    2) = '09')
union all
select
    count(0) as Cantidad,
    '10' as Codigo_Region,
    evento_registro.Evento_Estado_Codigo as Evento_Estado_Codigo
from
    evento_registro
where
    (left(evento_registro.Evento_Ubigeo,
    2) = '10')
union all
select
    count(0) as Cantidad,
    '11' as Codigo_Region,
    evento_registro.Evento_Estado_Codigo as Evento_Estado_Codigo
from
    evento_registro
where
    (left(evento_registro.Evento_Ubigeo,
    2) = '11')
union all
select
    count(0) as Cantidad,
    '12' as Codigo_Region,
    evento_registro.Evento_Estado_Codigo as Evento_Estado_Codigo
from
    evento_registro
where
    (left(evento_registro.Evento_Ubigeo,
    2) = '12')
union all
select
    count(0) as Cantidad,
    '13' as Codigo_Region,
    evento_registro.Evento_Estado_Codigo as Evento_Estado_Codigo
from
    evento_registro
where
    (left(evento_registro.Evento_Ubigeo,
    2) = '13')
union all
select
    count(0) as Cantidad,
    '14' as Codigo_Region,
    evento_registro.Evento_Estado_Codigo as Evento_Estado_Codigo
from
    evento_registro
where
    (left(evento_registro.Evento_Ubigeo,
    2) = '14')
union all
select
    count(0) as Cantidad,
    '15' as Codigo_Region,
    evento_registro.Evento_Estado_Codigo as Evento_Estado_Codigo
from
    evento_registro
where
    (left(evento_registro.Evento_Ubigeo,
    2) = '15')
union all
select
    count(0) as Cantidad,
    '16' as Codigo_Region,
    evento_registro.Evento_Estado_Codigo as Evento_Estado_Codigo
from
    evento_registro
where
    (left(evento_registro.Evento_Ubigeo,
    2) = '16')
union all
select
    count(0) as Cantidad,
    '17' as Codigo_Region,
    evento_registro.Evento_Estado_Codigo as Evento_Estado_Codigo
from
    evento_registro
where
    (left(evento_registro.Evento_Ubigeo,
    2) = '17')
union all
select
    count(0) as Cantidad,
    '18' as Codigo_Region,
    evento_registro.Evento_Estado_Codigo as Evento_Estado_Codigo
from
    evento_registro
where
    (left(evento_registro.Evento_Ubigeo,
    2) = '18')
union all
select
    count(0) as Cantidad,
    '19' as Codigo_Region,
    evento_registro.Evento_Estado_Codigo as Evento_Estado_Codigo
from
    evento_registro
where
    (left(evento_registro.Evento_Ubigeo,
    2) = '19')
union all
select
    count(0) as Cantidad,
    '20' as Codigo_Region,
    evento_registro.Evento_Estado_Codigo as Evento_Estado_Codigo
from
    evento_registro
where
    (left(evento_registro.Evento_Ubigeo,
    2) = '20')
union all
select
    count(0) as Cantidad,
    '21' as Codigo_Region,
    evento_registro.Evento_Estado_Codigo as Evento_Estado_Codigo
from
    evento_registro
where
    (left(evento_registro.Evento_Ubigeo,
    2) = '21')
union all
select
    count(0) as Cantidad,
    '22' as Codigo_Region,
    evento_registro.Evento_Estado_Codigo as Evento_Estado_Codigo
from
    evento_registro
where
    (left(evento_registro.Evento_Ubigeo,
    2) = '22')
union all
select
    count(0) as Cantidad,
    '23' as Codigo_Region,
    evento_registro.Evento_Estado_Codigo as Evento_Estado_Codigo
from
    evento_registro
where
    (left(evento_registro.Evento_Ubigeo,
    2) = '23')
union all
select
    count(0) as Cantidad,
    '24' as Codigo_Region,
    evento_registro.Evento_Estado_Codigo as Evento_Estado_Codigo
from
    evento_registro
where
    (left(evento_registro.Evento_Ubigeo,
    2) = '24')
union all
select
    count(0) as Cantidad,
    '25' as Codigo_Region,
    evento_registro.Evento_Estado_Codigo as Evento_Estado_Codigo
from
    evento_registro
where
    (left(evento_registro.Evento_Ubigeo,
    2) = '25');

create view lista_covid_paciente_new_examenes as
select
    paciente.id_paciente as id_paciente,
    paciente.id_renipress as id_renipress,
    paciente.numero_historia as numero_historia,
    paciente.ingreso_hospital as ingreso_hospital,
    paciente.ingreso_uci as ingreso_uci,
    paciente.numero_documento as numero_documento,
    paciente.apellidos as apellidos,
    paciente.nombres as nombres,
    paciente.sexo as sexo,
    paciente.gestante as gestante,
    paciente.nacimiento as nacimiento,
    paciente.edad as edad,
    paciente.domicilio as domicilio,
    paciente.idpais as idpais,
    paciente.ubigeo as ubigeo,
    paciente.telefono as telefono,
    paciente.talla as talla,
    paciente.peso_ideal_vm as peso_ideal_vm,
    paciente.peso_actual as peso_actual,
    paciente.imc as imc,
    paciente.apache as apache,
    paciente.sofa as sofa,
    paciente.tiempo_emfermedad as tiempo_emfermedad,
    paciente.hta as hta,
    paciente.otras_enf_pulmonares as otras_enf_pulmonares,
    paciente.cancer as cancer,
    paciente.diabetes_mellitus as diabetes_mellitus,
    paciente.asma as asma,
    paciente.acv_previo as acv_previo,
    paciente.epoc_bronquiectasias as epoc_bronquiectasias,
    paciente.falla_cardiaca as falla_cardiaca,
    paciente.fumador_cronico as fumador_cronico,
    paciente.epid_fibrosis_pulmonar as epid_fibrosis_pulmonar,
    paciente.enf_renal_cronica as enf_renal_cronica,
    paciente.vih as vih,
    paciente.viajes_pervios as viajes_pervios,
    paciente.procedencia_viajes as procedencia_viajes,
    paciente.contacto_personas_covid as contacto_personas_covid,
    paciente.contacto_extranjeros as contacto_extranjeros,
    paciente.procedencia_extranjeros as procedencia_extranjeros,
    paciente.personal_salud as personal_salud,
    paciente.rinorrea as rinorrea,
    paciente.tos_con_flema as tos_con_flema,
    paciente.disnea as disnea,
    paciente.disnea_dias as disnea_dias,
    paciente.fiebre as fiebre,
    paciente.fiebre_t_max as fiebre_t_max,
    paciente.fatiga as fatiga,
    paciente.escalofrios as escalofrios,
    paciente.cefalea as cefalea,
    paciente.hemoptisis as hemoptisis,
    paciente.diarrea as diarrea,
    paciente.tos_seca as tos_seca,
    paciente.mialgia_artralgia as mialgia_artralgia,
    paciente.dolor_de_garganta as dolor_de_garganta,
    paciente.hb as hb,
    paciente.ldh as ldh,
    paciente.procalcitonina as procalcitonina,
    paciente.leucocitos as leucocitos,
    paciente.tgo as tgo,
    paciente.dimero_d as dimero_d,
    paciente.linfocitos as linfocitos,
    paciente.cpk as cpk,
    paciente.plaquetas as plaquetas,
    paciente.bt as bt,
    paciente.cpk_mb as cpk_mb,
    paciente.creatinina as creatinina,
    paciente.pcr as pcr,
    paciente.troponina_t as troponina_t,
    paciente.troponina_i as troponina_i,
    paciente.pcr_rt_coronavirus as pcr_rt_coronavirus,
    paciente.pcr_rt_coronavirus_fecha as pcr_rt_coronavirus_fecha,
    paciente.pcr_rt_coronavirus_resultado as pcr_rt_coronavirus_resultado,
    paciente.pcr_pt_influenza as pcr_pt_influenza,
    paciente.pcr_pt_influenza_fecha as pcr_pt_influenza_fecha,
    paciente.pcr_pt_influenza_resultado as pcr_pt_influenza_resultado,
    paciente.primer_cultivo_secresion as primer_cultivo_secresion,
    paciente.primer_cultivo_secresion_fecha as primer_cultivo_secresion_fecha,
    paciente.primer_cultivo_secresion_resultado as primer_cultivo_secresion_resultado,
    paciente.filmarray_respiratorio as filmarray_respiratorio,
    paciente.filmarray_respiratorio_fecha as filmarray_respiratorio_fecha,
    paciente.filmarray_respiratorio_resultado as filmarray_respiratorio_resultado,
    paciente.otros_cultivos as otros_cultivos,
    paciente.otros_cultivos_fecha as otros_cultivos_fecha,
    paciente.otros_cultivos_resultado as otros_cultivos_resultado,
    paciente.ingreso_hospital_pa as ingreso_hospital_pa,
    paciente.ingreso_hospital_pam as ingreso_hospital_pam,
    paciente.ingreso_hospital_fr as ingreso_hospital_fr,
    paciente.ingreso_hospital_fc as ingreso_hospital_fc,
    paciente.ingreso_hospital_t as ingreso_hospital_t,
    paciente.ingreso_hospital_sat02 as ingreso_hospital_sat02,
    paciente.ingreso_hospital_fio2 as ingreso_hospital_fio2,
    paciente.ingreso_hospital_pa02_fio02 as ingreso_hospital_pa02_fio02,
    paciente.ingreso_hospital_glasgow as ingreso_hospital_glasgow,
    paciente.ingreso_uci_pa as ingreso_uci_pa,
    paciente.ingreso_uci_pam as ingreso_uci_pam,
    paciente.ingreso_uci_fr as ingreso_uci_fr,
    paciente.ingreso_uci_fc as ingreso_uci_fc,
    paciente.ingreso_uci_t as ingreso_uci_t,
    paciente.ingreso_uci_sat02 as ingreso_uci_sat02,
    paciente.ingreso_uci_fio2 as ingreso_uci_fio2,
    paciente.ingreso_uci_pa02_fio02 as ingreso_uci_pa02_fio02,
    paciente.ingreso_uci_glasgow as ingreso_uci_glasgow,
    paciente.falla_cardiovascular as falla_cardiovascular,
    paciente.falla_respiratorio as falla_respiratorio,
    paciente.falla_renal as falla_renal,
    paciente.falla_hepatico as falla_hepatico,
    paciente.falla_neurologico as falla_neurologico,
    paciente.falla_coagulacion as falla_coagulacion,
    paciente.utilizacion_vmni as utilizacion_vmni,
    paciente.utilizacion_vmni_horas as utilizacion_vmni_horas,
    paciente.utilizacion_canula as utilizacion_canula,
    paciente.utilizacion_canula_horas as utilizacion_canula_horas,
    paciente.fecha_intubacion as fecha_intubacion,
    paciente.fecha_ingreso_vm as fecha_ingreso_vm,
    paciente.fecha_primer_dia_prona as fecha_primer_dia_prona,
    paciente.dx_ards as dx_ards,
    paciente.esquema_prona_supina_horas01 as esquema_prona_supina_horas01,
    paciente.esquema_prona_supina_horas02 as esquema_prona_supina_horas02,
    paciente_examenes.id_examen as id_examen,
    examenes.descripcion as descripcion,
    paciente_examenes.dia_1 as dia_1,
    paciente_examenes.dia_2 as dia_2,
    paciente_examenes.dia_3 as dia_3,
    paciente_examenes.dia_5 as dia_5,
    paciente_examenes.dia_7 as dia_7,
    paciente.uso_titular_peep as uso_titular_peep,
    paciente.pv_tools as pv_tools,
    paciente.open_lung_tools as open_lung_tools,
    paciente.peep_in_view as peep_in_view,
    paciente.otras as otras,
    paciente.reclutamiento_alveolar as reclutamiento_alveolar,
    paciente.peep_maximo as peep_maximo,
    paciente.po2_fio2_prepona as po2_fio2_prepona,
    paciente.pco2preprona as pco2preprona,
    paciente.po2_fio2_prona_4_horas as po2_fio2_prona_4_horas,
    paciente.po2_prona_4_horas as po2_prona_4_horas,
    paciente.po2_fio2_supino_4_horas as po2_fio2_supino_4_horas,
    paciente.pco2_supono_4_horas as pco2_supono_4_horas,
    paciente.pam as pam,
    paciente.gc as gc,
    paciente.ic as ic,
    paciente.pvc as pvc,
    paciente.ccs as ccs,
    paciente.vpp as vpp,
    paciente.sat02_venosa_central as sat02_venosa_central,
    paciente.lactato as lactato,
    paciente.vasopresor_inotropico as vasopresor_inotropico,
    paciente.hemodinamia_fevi as hemodinamia_fevi,
    paciente.hemodinamia_ic as hemodinamia_ic,
    paciente.hemodinamia_vci as hemodinamia_vci,
    paciente.hemodinamia_otros_hallazgos as hemodinamia_otros_hallazgos,
    paciente.hemodinamia_sedacion as hemodinamia_sedacion,
    paciente.hemodinamia_analgesia as hemodinamia_analgesia,
    paciente.hemodinamia_relajante as hemodinamia_relajante,
    paciente.hemodinamia_antibiotico as hemodinamia_antibiotico,
    paciente.hemodinamia_antiviral as hemodinamia_antiviral,
    paciente.hidroxicloroquina as hidroxicloroquina,
    paciente.hidroxicloroquina_dosis as hidroxicloroquina_dosis,
    paciente.descripcion_rx_torax as descripcion_rx_torax,
    paciente.fecha_extubacion as fecha_extubacion,
    paciente.fecha_traqueostomia as fecha_traqueostomia,
    paciente.fecha_egreso_vm as fecha_egreso_vm,
    paciente.fecha_alta_uci as fecha_alta_uci,
    paciente.condicion_vivo as condicion_vivo,
    paciente.condicion_fallecido as condicion_fallecido,
    paciente.destino as destino,
    paciente.activo as activo
from
    ((covid_paciente_new paciente
join covid_paciente_new_examenes paciente_examenes on
    ((paciente_examenes.id_paciente = paciente.id_paciente)))
join covid_examenes examenes on
    ((paciente_examenes.id_examen = examenes.id_examen)));

create view lista_enfermedades as
select
    cie10.Id_CIE10 as Codigo,
    cie10.Descripcion_CIE10 as Descripcion,
    concat_ws(' - ', cie10.Id_CIE10, cie10.Descripcion_CIE10) as Diagnostico
from
    cie10
where
    ((char_length(cie10.Id_CIE10) in (3, 4))
        and (substr(cie10.Id_CIE10, 1, 1) <> '|'));

create view lista_enfermedades_preliminar as
select
    cie10.Id_CIE10 as Codigo,
    cie10.Descripcion_CIE10 as Descripcion,
    concat_ws(' - ', cie10.Id_CIE10, cie10.Descripcion_CIE10) as Diagnostico
from
    cie10
where
    isnull(cie10.Grupo_CIE10)
union all
select
    cie10.Id_CIE10 as Codigo,
    cie10.Descripcion_CIE10 as Descripcion,
    concat_ws(' - ', cie10.Id_CIE10, cie10.Descripcion_CIE10) as Diagnostico
from
    cie10
where
    ((char_length(cie10.Id_CIE10) = 3)
        and (substr(cie10.Id_CIE10, 1, 1) <> '|'));

create view lista_atenciones_eventos as
select
    evento_ficha_atencion.Evento_Ficha_Atencion_ID as Evento_Ficha_Atencion_ID,
    evento_ficha_atencion_detalle.Evento_Ficha_Atencion_Detalle_ID as evento_ficha_atencion_detalle_ID,
    evento_ficha_atencion.Evento_Ficha_Atencion_Fecha as Evento_Ficha_Atencion_Fecha,
    evento_ficha_atencion.Evento_Ficha_Atencion_Hora_Cierre as Evento_Ficha_Atencion_Hora_Cierre,
    evento_ficha_atencion.Evento_Ficha_Atencion_Usuario_Apertura as Evento_Ficha_Atencion_Usuario_Apertura,
    evento_ficha_atencion.Evento_Registro_Numero as Evento_Registro_Numero,
    evento_ficha_atencion.Evento_Ficha_Atencion_Estado as Evento_Ficha_Atencion_Estado,
    evento_ficha_atencion_detalle.Evento_Ficha_Atencion_Detalle_Paciente as Evento_Ficha_Atencion_Detalle_Paciente,
    evento_ficha_atencion_detalle.Evento_Ficha_Atencion_Detalle_DNI as Evento_Ficha_Atencion_Detalle_DNI,
    evento_ficha_atencion_detalle.Evento_Ficha_Atencion_Detalle_Edad as Evento_Ficha_Atencion_Detalle_Edad,
    (case
        when (evento_ficha_atencion_detalle.Evento_Ficha_Atencion_Detalle_Genero = '1') then 'Masculino'
        when (evento_ficha_atencion_detalle.Evento_Ficha_Atencion_Detalle_Genero = '2') then 'Femenino'
    end) as Genero,
    evento_ficha_atencion_detalle.Evento_Ficha_Atencion_Detalle_Gestante as Evento_Ficha_Atencion_Detalle_Gestante,
    evento_ficha_atencion_detalle.Evento_Ficha_Atencion_Detalle_Personal_Salud as Evento_Ficha_Atencion_Detalle_Personal_Salud,
    evento_ficha_atencion_detalle.Evento_Ficha_Atencion_Detalle_Procedencia as Evento_Ficha_Atencion_Detalle_Procedencia,
    (case
        when (evento_ficha_atencion_detalle.Evento_Ficha_Atencion_Detalle_Clasificacion = '1') then 'I-Rojo'
        when (evento_ficha_atencion_detalle.Evento_Ficha_Atencion_Detalle_Clasificacion = '2') then 'II-Amarillo'
        when (evento_ficha_atencion_detalle.Evento_Ficha_Atencion_Detalle_Clasificacion = '3') then 'III y IV-Verde'
        when (evento_ficha_atencion_detalle.Evento_Ficha_Atencion_Detalle_Clasificacion = '4') then '0 - Fallecido'
    end) as Clasificacion,
    evento_ficha_atencion_detalle.Evento_Ficha_Atencion_Detalle_Inicio_Sintomas as Evento_Ficha_Atencion_Detalle_Inicio_Sintomas,
    evento_ficha_atencion_detalle.Evento_Ficha_Atencion_Detalle_Diagnostico as Evento_Ficha_Atencion_Detalle_Diagnostico,
    evento_ficha_atencion_detalle.Evento_Ficha_Atencion_Detalle_CIE10_Codigo as CIE10,
    lista_enfermedades.Descripcion as CIE10_Descripcion,
    evento_ficha_atencion_detalle.Evento_Ficha_Atencion_Detalle_Hora_Atencion as Evento_Ficha_Atencion_Detalle_Hora_Atencion,
    evento_tipo_entidad_atencion.Evento_Tipo_Entidad_Atencion_Nombre as Evento_Tipo_Entidad_Atencion_Nombre,
    evento_tipo_entidad_atencion_oferta_movil.Evento_Tipo_Entidad_Atencion_Oferta_Movil_Nombre as Evento_Tipo_Entidad_Atencion_Oferta_Movil_Nombre,
    evento_ficha_atencion_detalle.Evento_Ficha_Atencion_Detalle_Vacuna as Evento_Ficha_Atencion_Detalle_Vacuna,
    evento_ficha_atencion_detalle.Evento_Ficha_Atencion_Detalle_Quimioprofilaxis as Evento_Ficha_Atencion_Detalle_Quimioprofilaxis,
    evento_ficha_atencion_detalle.Evento_Ficha_Atencion_Detalle_Medicamentos as Evento_Ficha_Atencion_Detalle_Medicamentos,
    (case
        when (evento_ficha_atencion_detalle.Evento_Ficha_Atencion_Detalle_Destino = '1') then 'Alta'
        when (evento_ficha_atencion_detalle.Evento_Ficha_Atencion_Detalle_Destino = '2') then 'Referido'
    end) as Destino,
    evento_ficha_atencion_detalle.Evento_Ficha_Atencion_Detalle_Lugar_Traslado as Evento_Ficha_Atencion_Detalle_Lugar_Traslado,
    evento_ficha_atencion_detalle.Evento_Ficha_Atencion_Detalle_Responsable as Evento_Ficha_Atencion_Detalle_Responsable
from
    ((((evento_ficha_atencion
join evento_ficha_atencion_detalle on
    ((evento_ficha_atencion.Evento_Ficha_Atencion_ID = evento_ficha_atencion_detalle.Evento_Ficha_Atencion_ID)))
join evento_tipo_entidad_atencion_oferta_movil on
    ((evento_ficha_atencion_detalle.Evento_Tipo_Entidad_Atencion_Oferta_Movil_ID = evento_tipo_entidad_atencion_oferta_movil.Evento_Tipo_Entidad_Atencion_Oferta_Movil_ID)))
join evento_tipo_entidad_atencion on
    ((evento_tipo_entidad_atencion_oferta_movil.Evento_Tipo_Entidad_Atencion_ID = evento_tipo_entidad_atencion.Evento_Tipo_Entidad_Atencion_ID)))
join lista_enfermedades on
    ((evento_ficha_atencion_detalle.Evento_Ficha_Atencion_Detalle_CIE10_Codigo = lista_enfermedades.Codigo)));

create view lista_historiales_paciente as
select
    covid_paciente_historial.id_historial as id_historial,
    covid_paciente_historial.id_paciente as id_paciente,
    date_format(covid_paciente_historial.fecha, '%d/%m/%Y') as Fecha,
    if((covid_paciente_historial.positivo = '0'),
    '--',
    'SI') as P,
    if((covid_paciente_historial.sospechoso = '0'),
    '--',
    'SI') as S,
    if((covid_paciente_historial.negativo = '0'),
    '--',
    'SI') as N,
    date_format(covid_paciente_historial.fecha_muestra, '%d/%m/%Y') as F_Muestra,
    concat_ws(' - ', covid_paciente_historial.cie_10_1_descripcion, covid_paciente_historial.cie_10_2_descripcion, covid_paciente_historial.cie_10_3_descripcion) as Diagnosticos,
    if((covid_paciente_historial.sala_con_oxigeno = '0'),
    '--',
    'SI') as SCO2,
    if((covid_paciente_historial.sala_sin_oxigeno = '0'),
    '--',
    'SI') as SSO2,
    if((covid_paciente_historial.uci_con_ventilacion = '0'),
    '--',
    'SI') as UCICVM,
    if((covid_paciente_historial.uci_sin_ventilacion = '0'),
    '--',
    'SI') as UCISVM,
    if((covid_paciente_historial.favorable = '0'),
    '--',
    'SI') as Favorable,
    if((covid_paciente_historial.desfavorable = '0'),
    '--',
    'SI') as Desfavorable,
    if((covid_paciente_historial.fallecido = '0'),
    '--',
    'SI') as Fallecido,
    if((covid_paciente_historial.alta = '0'),
    '--',
    'SI') as Alta
from
    covid_paciente_historial;

create view lista_paciente_analisis as
select
    covid_paciente_historial.id_paciente as id_paciente,
    if((sum(abs(covid_paciente_historial.positivo)) = 0),
    '--',
    'SI') as P,
    if((sum(abs(covid_paciente_historial.sospechoso)) = 0),
    '--',
    'SI') as S,
    if((sum(abs(covid_paciente_historial.negativo)) = 0),
    '--',
    'SI') as N
from
    covid_paciente_historial
group by
    covid_paciente_historial.id_paciente;

create view lista_paciente_estado as
select
    covid_paciente_historial.id_paciente as id_Paciente,
    if((sum(abs(covid_paciente_historial.fallecido)) = 0),
    '--',
    'SI') as Fallecido,
    if((sum(abs(covid_paciente_historial.alta)) = 0),
    '--',
    'SI') as Alta
from
    covid_paciente_historial
group by
    covid_paciente_historial.id_paciente;

create view lista_pacientes_basica as
select
    covid.id_paciente as ID,
    concat_ws(', ', covid.apellidos, covid.nombres) as Paciente,
    (case
        covid.sexo when 1 then 'Masculino'
        when 2 then 'Femenino'
    end) as Sexo,
    covid.edad as Edad,
    date_format(covid.fecha_hospitalizacion, '%d/%m/%Y') as Hospitalizacion,
    ifnull(historial.P, '--') as P,
    ifnull(historial.S, '--') as S,
    ifnull(historial.N, '--') as N,
    ifnull(estados.Fallecido, '--') as Fallecido,
    ifnull(estados.Alta, '--') as Alta,
    (case
        covid.activo when '1' then 'Activo'
        when '0' then 'Inactivo'
    end) as Estado,
    covid.id_paciente as id_paciente,
    covid.id_renipress as id_renipress,
    renipress.codigo_renipress as codigo_renipress,
    renipress.institucion as institucion,
    renipress.nombre as nombre,
    renipress.tipo as tipo,
    renipress.clasificacion as clasificacion,
    renipress.region as region,
    covid.id_documento as id_documento,
    covid.numero_documento as numero_documento,
    covid.apellidos as apellidos,
    covid.nombres as nombres,
    covid.sexo as sex,
    covid.gestante as gestante,
    covid.nacimiento as nacimiento,
    covid.domicilio as domicilio,
    covid.dm as dm,
    covid.hta as hta,
    covid.erc as erc,
    covid.vih as vih,
    covid.les as les,
    covid.asma as asma,
    covid.tbc as tbc,
    covid.nm as nm,
    covid.icc as icc,
    covid.cv as cv,
    covid.otros_anteceentes as otros_anteceentes,
    covid.otros_antecedentes_texto as otros_antecedentes_texto,
    covid.inicio_sintomas as inicio_sintomas,
    covid.tiempo_emfermedad as tiempo_emfermedad,
    covid.fecha_hospitalizacion as fecha_hospitalizacion,
    covid.tos as tos,
    covid.malestar_general as malestar_general,
    covid.dolor_garganta as dolor_garganta,
    covid.fiebre_escalosfrio as fiebre_escalosfrio,
    covid.congestion_nasal as congestion_nasal,
    covid.cefalea as cefalea,
    covid.dificultad_respiratoria as dificultad_respiratoria,
    covid.dolor_muscular as dolor_muscular,
    covid.diarrea as diarrea,
    covid.dolor_articulaciones as dolor_articulaciones,
    covid.nauseas_vomitos as nauseas_vomitos,
    covid.dolor_pecho as dolor_pecho,
    covid.ittitabilidad_confusion as ittitabilidad_confusion,
    covid.dolor_abdominal as dolor_abdominal,
    covid.otros_sintomas as otros_sintomas,
    covid.otros_sintomas_texto as otros_sintomas_texto,
    covid.pa as pa,
    covid.fc as fc,
    covid.fr as fr,
    covid.so2 as so2,
    covid.fio2 as fio2,
    covid.t as t,
    covid.examen_fisico as examen_fisico
from
    (((covid_paciente covid
left join lista_paciente_analisis historial on
    ((covid.id_paciente = historial.id_paciente)))
left join lista_paciente_estado estados on
    ((estados.id_Paciente = covid.id_paciente)))
join renipress on
    ((renipress.id_renipress = covid.id_renipress)));

create view lista_pacientes_reporte as
select
    `p`.`id_paciente` as `ID`,
    `p`.`id_renipress` as `id_renipress`,
    `r`.`nombre` as `IPRESS`,
    `r`.`region` as `Region`,
    `p`.`numero_historia` as `Historia`,
    date_format(`p`.`ingreso_hospital`, '%d/%m/%Y') as `Ingreso_Hospital`,
    date_format(`p`.`ingreso_uci`, '%d/%m/%Y') as `Ingreso_UCI`,
    (case
        `p`.`id_documento` when '1' then 'D.N.I.'
        when '4' then 'CARNET EXT.'
        when '6' then 'N/A'
    end) as `T_Documento`,
    `p`.`numero_documento` as `Documento`,
    (case
        `p`.`sexo` when '1' then 'Masculino'
        when '2' then 'Femenino'
    end) as `Sexo`,
    if((`p`.`gestante` = 0),
    '--',
    'SI') as `Gestante`,
    date_format(`p`.`nacimiento`, '%d/%m/%Y') as `Nacimiento`,
    `p`.`edad` as `Edad`,
    `p`.`domicilio` as `Domicilio`,
    `p`.`idpais` as `IdPais`,
    `p`.`ubigeo` as `Ubigeo`,
    `p`.`telefono` as `Fono`,
    `p`.`talla` as `Talla`,
    `p`.`peso_ideal_vm` as `Peso_VM`,
    `p`.`peso_actual` as `Peso`,
    `p`.`imc` as `IMC`,
    if((`p`.`apache` = 0),
    '--',
    'SI') as `Apache`,
    if((`p`.`sofa` = 0),
    '--',
    'SI') as `SOFA`,
    `p`.`tiempo_emfermedad` as `TE`,
    if((`p`.`hta` = 0),
    '--',
    'SI') as `HTA`,
    if((`p`.`otras_enf_pulmonares` = 0),
    '--',
    'SI') as `E_Pulmonares`,
    if((`p`.`cancer` = 0),
    '--',
    'SI') as `Cancer`,
    if((`p`.`diabetes_mellitus` = 0),
    '--',
    'SI') as `Diabetes`,
    if((`p`.`asma` = 0),
    '--',
    'SI') as `Asma`,
    if((`p`.`acv_previo` = 0),
    '--',
    'SI') as `ACV_Previo`,
    if((`p`.`epoc_bronquiectasias` = 0),
    '--',
    'SI') as `EPOC_B`,
    if((`p`.`falla_cardiaca` = 0),
    '--',
    'SI') as `Falla_Cadiaca`,
    if((`p`.`fumador_cronico` = 0),
    '--',
    'SI') as `Fumador`,
    if((`p`.`epid_fibrosis_pulmonar` = 0),
    '--',
    'SI') as `Epid_Fibrosis`,
    if((`p`.`enf_renal_cronica` = 0),
    '--',
    'SI') as `E_Renal`,
    if((`p`.`vih` = 0),
    '--',
    'SI') as `VIH`,
    if((`p`.`viajes_pervios` = 0),
    '--',
    'SI') as `Viajes`,
    `p`.`procedencia_viajes` as `Viajes_Procedencia`,
    if((`p`.`contacto_personas_covid` = 0),
    '--',
    'SI') as `Contacto_COVID`,
    if((`p`.`contacto_extranjeros` = 0),
    '--',
    'SI') as `Contacto_Extrangeros`,
    `p`.`procedencia_extranjeros` as `Procedencia_Extrangero`,
    if((`p`.`personal_salud` = 0),
    '--',
    'SI') as `Personal_Salud`,
    if((`p`.`rinorrea` = 0),
    '--',
    'SI') as `Rinorrea`,
    if((`p`.`tos_con_flema` = 0),
    '--',
    'SI') as `Tos_Flema`,
    if((`p`.`disnea` = 0),
    '--',
    'SI') as `Disnea`,
    if((`p`.`disnea_dias` = 0),
    '--',
    'SI') as `Disnea_Dias`,
    if((`p`.`fiebre` = 0),
    '--',
    'SI') as `Fiebre`,
    `p`.`fiebre_t_max` as `Temperatura`,
    if((`p`.`fatiga` = 0),
    '--',
    'SI') as `Fatiga`,
    if((`p`.`escalofrios` = 0),
    '--',
    'SI') as `Escalofrios`,
    if((`p`.`cefalea` = 0),
    '--',
    'SI') as `Cefalea`,
    if((`p`.`hemoptisis` = 0),
    '--',
    'SI') as `Hemoptisis`,
    if((`p`.`diarrea` = 0),
    '--',
    'SI') as `Diarrea`,
    if((`p`.`tos_seca` = 0),
    '--',
    'SI') as `Tos_Seca`,
    if((`p`.`mialgia_artralgia` = 0),
    '--',
    'SI') as `Mialgia`,
    if((`p`.`dolor_de_garganta` = 0),
    '--',
    'SI') as `Dolor_Garganta`,
    `p`.`hb` as `HB`,
    `p`.`ldh` as `LDH`,
    `p`.`procalcitonina` as `Procalcitonina`,
    `p`.`leucocitos` as `Leucocitos`,
    `p`.`tgo` as `TGO`,
    `p`.`dimero_d` as `Dimero_D`,
    `p`.`linfocitos` as `Linfocitos`,
    `p`.`cpk` as `CPK`,
    `p`.`plaquetas` as `Plaquetas`,
    `p`.`bt` as `BT`,
    `p`.`cpk_mb` as `CPK_MB`,
    `p`.`creatinina` as `Creatinina`,
    `p`.`pcr` as `PCR`,
    `p`.`troponina_t` as `Troponina_T`,
    `p`.`troponina_i` as `Troponina_I`,
    if((`p`.`pcr_rt_coronavirus` = 0),
    '--',
    'SI') as `PCR_RT_Covid-19`,
    date_format(`p`.`pcr_rt_coronavirus_fecha`, '%d/%m/%Y') as `PCR_RT_Covid_Fecha`,
    `p`.`pcr_rt_coronavirus_resultado` as `PCR_RT_Covid_Resultado`,
    if((`p`.`pcr_pt_influenza` = 0),
    '--',
    'SI') as `PCR_RT_Influenza`,
    date_format(`p`.`pcr_pt_influenza_fecha`, '%d/%m/%Y') as `PCR_RT_Influenza_Fecha`,
    `p`.`pcr_pt_influenza_resultado` as `PCR_RT_Influenza_Resultado`,
    if((`p`.`primer_cultivo_secresion` = 0),
    '--',
    'SI') as `Cultivo_Secresion`,
    date_format(`p`.`primer_cultivo_secresion_fecha`, '%d/%m/%Y') as `Cultivo_Secresion_Fecha`,
    `p`.`primer_cultivo_secresion_resultado` as `Cultivo_Secresion_Resultado`,
    if((`p`.`filmarray_respiratorio` = 0),
    '--',
    'SI') as `Filmarray_Respiratorio`,
    date_format(`p`.`filmarray_respiratorio_fecha`, '%d/%m/%Y') as `Filmarray_Respiratorio_Fecha`,
    `p`.`filmarray_respiratorio_resultado` as `Filmarray_Respiratorio_Resultado`,
    if((`p`.`otros_cultivos` = 0),
    '--',
    'SI') as `Otros_Cultivos`,
    date_format(`p`.`otros_cultivos_fecha`, '%d/%m/%Y') as `Otros_Cultivos_Fecha`,
    `p`.`otros_cultivos_resultado` as `Otros_Cultivos_Resultado`,
    `p`.`ingreso_hospital_pa` as `IH_PA`,
    `p`.`ingreso_hospital_pam` as `IH_PAM`,
    `p`.`ingreso_hospital_fr` as `IH_FR`,
    `p`.`ingreso_hospital_fc` as `IH_FC`,
    `p`.`ingreso_hospital_t` as `IH_T`,
    `p`.`ingreso_hospital_sat02` as `IH_SAT02`,
    `p`.`ingreso_hospital_fio2` as `IH_FIO2`,
    `p`.`ingreso_hospital_pa02_fio02` as `IH_PA02_FIO02`,
    `p`.`ingreso_hospital_glasgow` as `IH_Glasgow`,
    `p`.`ingreso_uci_pa` as `IUCI_PA`,
    `p`.`ingreso_uci_pam` as `IUCI_PAM`,
    `p`.`ingreso_uci_fr` as `IUCI_FR`,
    `p`.`ingreso_uci_fc` as `IUCI_FC`,
    `p`.`ingreso_uci_t` as `IUCI_T`,
    `p`.`ingreso_uci_sat02` as `IUCI_SAT02`,
    `p`.`ingreso_uci_fio2` as `IUCI_FIO2`,
    `p`.`ingreso_uci_pa02_fio02` as `IUCI_PA02_FIO02`,
    `p`.`ingreso_uci_glasgow` as `IUCI_Glasgow`,
    if((`p`.`falla_cardiovascular` = 0),
    '--',
    'SI') as `Falla_Cardiovascular`,
    if((`p`.`falla_respiratorio` = 0),
    '--',
    'SI') as `Falla_Respiratorio`,
    if((`p`.`falla_renal` = 0),
    '--',
    'SI') as `Falla_Renal`,
    if((`p`.`falla_hepatico` = 0),
    '--',
    'SI') as `Falla_Hepatico`,
    if((`p`.`falla_neurologico` = 0),
    '--',
    'SI') as `Falla_Neurologico`,
    if((`p`.`falla_coagulacion` = 0),
    '--',
    'SI') as `Falla_Coagulacion`,
    if((`p`.`utilizacion_vmni` = 0),
    '--',
    'SI') as `Uso_VMNI`,
    `p`.`utilizacion_vmni_horas` as `VMNI_Horas`,
    if((`p`.`utilizacion_canula` = 0),
    '--',
    'SI') as `Uso_Canula`,
    `p`.`utilizacion_canula_horas` as `Canula_Horas`,
    date_format(`p`.`fecha_intubacion`, '%d/%m/%Y') as `Fecha_Intubacion`,
    date_format(`p`.`fecha_ingreso_vm`, '%d/%m/%Y') as `Fecha_VM`,
    date_format(`p`.`fecha_primer_dia_prona`, '%d/%m/%Y') as `Fecha_Prona`,
    (case
        `p`.`dx_ards` when 1 then 'Leve'
        when 2 then 'Moderado'
        when 3 then 'Grave'
    end) as `DX_ARDS`,
    `p`.`esquema_prona_supina_horas01` as `Prona_Suspina_01`,
    `p`.`esquema_prona_supina_horas02` as `Prona_Suspina_02`,
    if((`p`.`uso_titular_peep` = 0),
    '--',
    'SI') as `Uso_Peep`,
    if((`p`.`pv_tools` = 0),
    '--',
    'SI') as `Uso_PV_Tools`,
    if((`p`.`open_lung_tools` = 0),
    '--',
    'SI') as `Lung_Tools`,
    if((`p`.`peep_in_view` = 0),
    '--',
    'SI') as `Peep_View`,
    `p`.`otras` as `Peep_Otros`,
    if((`p`.`reclutamiento_alveolar` = 0),
    '--',
    'SI') as `R_Alveolar`,
    `p`.`peep_maximo` as `Peep_Max`,
    `p`.`po2_fio2_prepona` as `PO2_FIO2`,
    `p`.`pco2preprona` as `PCO2_Preprona`,
    `p`.`po2_fio2_prona_4_horas` as `PO2_FIO2_Prona`,
    `p`.`po2_prona_4_horas` as `PO2_Prona_4`,
    `p`.`po2_fio2_supino_4_horas` as `PO2_FIO2_S`,
    `p`.`pco2_supono_4_horas` as `PCO2_S`,
    if((`p`.`pam` = 0),
    '--',
    'SI') as `PAM`,
    if((`p`.`gc` = 0),
    '--',
    'SI') as `GC`,
    if((`p`.`ic` = 0),
    '--',
    'SI') as `IC`,
    if((`p`.`pvc` = 0),
    '--',
    'SI') as `PVC`,
    if((`p`.`ccs` = 0),
    '--',
    'SI') as `CSS`,
    if((`p`.`vpp` = 0),
    '--',
    'SI') as `VPP`,
    `p`.`sat02_venosa_central` as `SAT02_VC`,
    `p`.`lactato` as `Lactato`,
    `p`.`vasopresor_inotropico` as `Vasopresor_I`,
    `p`.`hemodinamia_fevi` as `H_FEVI`,
    `p`.`hemodinamia_ic` as `H_IC`,
    `p`.`hemodinamia_vci` as `H_VCI`,
    `p`.`hemodinamia_otros_hallazgos` as `Hallasgos`,
    `p`.`hemodinamia_sedacion` as `H_Sedacion`,
    `p`.`hemodinamia_analgesia` as `H_Analgesia`,
    `p`.`hemodinamia_relajante` as `H_Relajante`,
    `p`.`hemodinamia_antibiotico` as `H_Antibiotico`,
    `p`.`hemodinamia_antiviral` as `H_Antiviral`,
    if((`p`.`hidroxicloroquina` = 0),
    '--',
    'SI') as `Hidroxicloroquina`,
    `p`.`hidroxicloroquina_dosis` as `Hidroxicloroquina_Dosis`,
    `p`.`descripcion_rx_torax` as `RX_Torax`,
    date_format(`p`.`fecha_extubacion`, '%d/%m/%Y') as `Fecha_Extubacion`,
    date_format(`p`.`fecha_traqueostomia`, '%d/%m/%Y') as `Fecha_Traqueostomia`,
    date_format(`p`.`fecha_egreso_vm`, '%d/%m/%Y') as `Fecha_Egreso_VM`,
    date_format(`p`.`fecha_alta_uci`, '%d/%m/%Y') as `Fecha_Alta_UCI`,
    if((`p`.`condicion_vivo` = 0),
    '--',
    'SI') as `Vivo`,
    if((`p`.`condicion_fallecido` = 0),
    '--',
    'SI') as `Fallecido`,
    `p`.`destino` as `Destino`,
    (case
        `p`.`activo` when '1' then 'Activo'
        when '0' then 'Anulado'
    end) as `Estado`
from
    (`covid_paciente_new` `p`
join `renipress` `r` on
    ((`r`.`id_renipress` = `p`.`id_renipress`)));

create view lista_paciente_casos as
select
    sum(if((lista_pacientes_basica.P = 'SI'), 1, 0)) as Positivo,
    sum(if((lista_pacientes_basica.S = 'SI'), 1, 0)) as Sospechoso,
    sum(if((lista_pacientes_basica.N = 'SI'), 1, 0)) as Negativo
from
    lista_pacientes_basica;

create view lista_paciente_casos_fecha as
select
    date_format(covid_paciente_new.ingreso_hospital, '%d/%m/%Y') as Fecha,
    count(if((covid_paciente_new.dx_ards = '1'), '1', null)) as Leve,
    count(if((covid_paciente_new.dx_ards = '2'), '1', null)) as Moderado,
    count(if((covid_paciente_new.dx_ards = '3'), '1', null)) as Grave
from
    covid_paciente_new
where
    (covid_paciente_new.activo = '1')
group by
    covid_paciente_new.ingreso_hospital;

create view lista_pacientes_estados_criticos as
select
    covid_paciente_historial.id_paciente as id_Paciente,
    if((sum(abs(covid_paciente_historial.sala_con_oxigeno)) = 0),
    '--',
    'SI') as SCO,
    if((sum(abs(covid_paciente_historial.sala_sin_oxigeno)) = 0),
    '--',
    'SI') as SSO,
    if((sum(abs(covid_paciente_historial.uci_con_ventilacion)) = 0),
    '--',
    'SI') as UCV,
    if((sum(abs(covid_paciente_historial.uci_sin_ventilacion)) = 0),
    '--',
    'SI') as USV
from
    covid_paciente_historial
group by
    covid_paciente_historial.id_paciente;

create view lista_ubigeo as
select
    ((ubigeo_distrito.Codigo_Departamento + ubigeo_distrito.Codigo_Provincia) + ubigeo_distrito.Codigo_Distrito) as Ubigeo,
    ((((ubigeo_distrito.Nombre + ' - ') + ubigeo_provincia.Nombre) + ' - ') + ubigeo_departamento.Nombre) as Nombre,
    ubigeo_departamento.Nombre as Departamento,
    ubigeo_provincia.Nombre as Provincia,
    ubigeo_distrito.Nombre as Distrito
from
    ((ubigeo_departamento
join ubigeo_provincia on
    ((ubigeo_departamento.Codigo_Departamento = ubigeo_provincia.Codigo_Departamento)))
join ubigeo_distrito on
    (((ubigeo_provincia.Codigo_Departamento = ubigeo_distrito.Codigo_Departamento)
        and (ubigeo_provincia.Codigo_Provincia = ubigeo_distrito.Codigo_Provincia))));

create view listado_basico_documentos as
select
    d.idregistro as ID,
    d.anio as Año,
    d.expediente as Expediente,
    d.idprocedencia as idprocedencia,
    p.procedencia as Pocedencia,
    date_format(d.fecha_recepcion, '%d/%m/%Y') as Recepción,
    d.plazo_respuesta as Plazo,
    (case
        d.situacion when '1' then 'Pendiente'
        when '2' then 'Derivado'
        when '3' then 'Contestado'
        when '4' then 'Cerrado'
    end) as Situacion,
    (case
        d.estado when '1' then 'Activo'
        when '0' then 'Anulado'
    end) as Estado
from
    (documentos_registro d
join documentos_procedencia p on
    ((p.idprocedencia = d.idprocedencia)));

create view new_dashboard_tablero_actividad_presupuestal as
select
    tap.Anio_Ejecucion as Anio,
    tap.Codigo_Actividad as Codigo,
    ta.Nombre_Actividad as 'Actividad Presupuestal',
    tum.Nombre_Unidad_Medida as Unidad,
    sum(tap.Costo_Programado) as Presupuesto,
    sum(tap.Enero) as Enero,
    sum(tap.Febrero) as Febrero,
    sum(tap.Marzo) as Marzo,
    sum(tap.Abril) as Abril,
    sum(tap.Mayo) as Mayo,
    sum(tap.Junio) as Junio,
    sum(tap.Julio) as Julio,
    sum(tap.Agosto) as Agosto,
    sum(tap.Septiembre) as Septiembre,
    sum(tap.Octubre) as Octubre,
    sum(tap.Noviembre) as Noviembre,
    sum(tap.Diciembre) as Diciembre
from
    ((tablero_actividad_poi tap
join tablero_actividad ta on
    (((ta.Anio_Ejecucion = tap.Anio_Ejecucion)
        and (ta.Codigo_Actividad = tap.Codigo_Actividad))))
join tablero_unidad_medida tum on
    ((tum.Codigo_Unidad_Medida = tap.Codigo_Unidad_Medida)))
where
    (tap.Activo = 1)
group by
    tap.Anio_Ejecucion,
    tap.Codigo_Actividad,
    ta.Nombre_Actividad,
    tum.Nombre_Unidad_Medida;

create view new_dashboard_tablero_producto_presupuestal as
select
    tap.Anio_Ejecucion as Anio,
    tap.Codigo_Actividad_Proyecto as Codigo,
    ta.Nombre_Actividad_Proyecto as 'Producto Presupuestal',
    tum.Nombre_Unidad_Medida as Unidad,
    sum(tap.Enero) as Enero,
    sum(tap.Febrero) as Febrero,
    sum(tap.Marzo) as Marzo,
    sum(tap.Abril) as Abril,
    sum(tap.Mayo) as Mayo,
    sum(tap.Junio) as Junio,
    sum(tap.Julio) as Julio,
    sum(tap.Agosto) as Agosto,
    sum(tap.Septiembre) as Septiembre,
    sum(tap.Octubre) as Octubre,
    sum(tap.Noviembre) as Noviembre,
    sum(tap.Diciembre) as Diciembre,
    sum(tap.Costo_Programado) as Presupuesto
from
    ((tablero_actividad_poi tap
join tablero_actividad_proyecto ta on
    (((ta.Anio_Ejecucion = tap.Anio_Ejecucion)
        and (ta.Codigo_Actividad_Proyecto = tap.Codigo_Actividad_Proyecto))))
join tablero_unidad_medida tum on
    ((tum.Codigo_Unidad_Medida = tap.Codigo_Unidad_Medida)))
where
    (tap.Activo = 1)
group by
    tap.Anio_Ejecucion,
    tap.Codigo_Actividad_Proyecto,
    ta.Nombre_Actividad_Proyecto,
    tum.Nombre_Unidad_Medida;

create view oferta_movil_tratamientos_pre as
select
    tratamiento.evento_tipo_entidad_atencion_registro_atenciones_tratamiento_id as ID,
    tratamiento.evento_tipo_entidad_atencion_registro_atenciones_id as evento_tipo_entidad_atencion_registro_atenciones_id,
    tratamiento.evento_tipo_entidad_atencion_registro_medicamentos_id as evento_tipo_entidad_atencion_registro_medicamentos_id,
    medicamentos.evento_tipo_entidad_atencion_registro_medicamentos_descripcion as Medicamento,
    tratamiento.cantidad as cantidad,
    (case
        tratamiento.frecuencia when '0' then 'C/0H'
        when '1' then 'C/4H'
        when '2' then 'C/6H'
        when '3' then 'C/8H'
        when '4' then 'C/12H'
        when '5' then 'C/12H'
    end) as Frecuencia,
    (case
        tratamiento.via when 0 then '[N/A]'
        when 1 then 'Oral'
        when 2 then 'Sublingual'
        when 3 then 'Topica'
        when 4 then 'Transdermica'
        when 5 then 'Oftalmica'
        when 6 then 'Otica'
        when 7 then 'Intranasal'
        when 8 then 'Inhalatoria'
        when 9 then 'Rectal'
        when 10 then 'Vaginal'
        when 11 then 'Parental'
        when 12 then 'Intravenosa'
        when 13 then 'Intramuscular'
        when 14 then 'Subcutanea'
    end) as Via,
    tratamiento.observaciones as Notas
from
    (evento_tipo_entidad_atencion_registro_atenciones_tratamiento tratamiento
join evento_tipo_entidad_atencion_registro_medicamentos medicamentos on
    ((medicamentos.evento_tipo_entidad_atencion_registro_medicamentos_id = tratamiento.evento_tipo_entidad_atencion_registro_medicamentos_id)));

create view oferta_movil_tratamientos_final as
select
    oferta_movil_tratamientos_pre.evento_tipo_entidad_atencion_registro_atenciones_id as evento_tipo_entidad_atencion_registro_atenciones_id,
    group_concat(concat_ws(' - ', oferta_movil_tratamientos_pre.Medicamento, oferta_movil_tratamientos_pre.cantidad, convert(oferta_movil_tratamientos_pre.Frecuencia using utf8), oferta_movil_tratamientos_pre.Notas) separator ' | ') as Indicaciones
from
    oferta_movil_tratamientos_pre
group by
    oferta_movil_tratamientos_pre.evento_tipo_entidad_atencion_registro_atenciones_id;
	
create view getresumenregistrosrenarhed as
select
    (
    select
        count(0) as total
    from
        renarhed_registro
    where
        (renarhed_registro.estado in (1, 2, 3))) as total1,
    (
    select
        count(0) as total
    from
        renarhed_registro
    where
        (renarhed_registro.estado = 3)) as total2,
    (
    select
        count(0) as total
    from
        renarhed_registro
    where
        (renarhed_registro.estado = 1)) as total3;	
	
create view coe_eventos_indicador_2_horas_pre as
select
    year(evento_registro.Evento_Fecha) as Anio,
    count(0) as Enero,
    0 as Febrero,
    0 as Marzo,
    0 as Abril,
    0 as Mayo,
    0 as Junio,
    0 as Julio,
    0 as Agosto,
    0 as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) <= 2)
        and (month(evento_registro.Evento_Fecha) = 1)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    count(0) as Febrero,
    0 as Marzo,
    0 as Abril,
    0 as Mayo,
    0 as Junio,
    0 as Julio,
    0 as Agosto,
    0 as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) <= 2)
        and (month(evento_registro.Evento_Fecha) = 2)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    count(0) as Marzo,
    0 as Abril,
    0 as Mayo,
    0 as Junio,
    0 as Julio,
    0 as Agosto,
    0 as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) <= 2)
        and (month(evento_registro.Evento_Fecha) = 3)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    0 as Marzo,
    count(0) as Abril,
    0 as Mayo,
    0 as Junio,
    0 as Julio,
    0 as Agosto,
    0 as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) <= 2)
        and (month(evento_registro.Evento_Fecha) = 4)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    0 as Marzo,
    0 as Abril,
    count(0) as Mayo,
    0 as Junio,
    0 as Julio,
    0 as Agosto,
    0 as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) <= 2)
        and (month(evento_registro.Evento_Fecha) = 5)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    0 as Marzo,
    0 as Abril,
    0 as Mayo,
    count(0) as Junio,
    0 as Julio,
    0 as Agosto,
    0 as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) <= 2)
        and (month(evento_registro.Evento_Fecha) = 6)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    0 as Marzo,
    0 as Abril,
    0 as Mayo,
    0 as Junio,
    count(0) as Julio,
    0 as Agosto,
    0 as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) <= 2)
        and (month(evento_registro.Evento_Fecha) = 7)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    0 as Marzo,
    0 as Abril,
    0 as Mayo,
    0 as Junio,
    0 as Julio,
    count(0) as Agosto,
    0 as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) <= 2)
        and (month(evento_registro.Evento_Fecha) = 8)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    0 as Marzo,
    0 as Abril,
    0 as Mayo,
    0 as Junio,
    0 as Julio,
    0 as Agosto,
    count(0) as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) <= 2)
        and (month(evento_registro.Evento_Fecha) = 9)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    0 as Marzo,
    0 as Abril,
    0 as Mayo,
    0 as Junio,
    0 as Julio,
    0 as Agosto,
    0 as Septiembre,
    count(0) as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) <= 2)
        and (month(evento_registro.Evento_Fecha) = 10)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    0 as Marzo,
    0 as Abril,
    0 as Mayo,
    0 as Junio,
    0 as Julio,
    0 as Agosto,
    0 as Septiembre,
    0 as Octubre,
    count(0) as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) <= 2)
        and (month(evento_registro.Evento_Fecha) = 11)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    0 as Marzo,
    0 as Abril,
    0 as Mayo,
    0 as Junio,
    0 as Julio,
    0 as Agosto,
    0 as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    count(0) as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) <= 2)
        and (month(evento_registro.Evento_Fecha) = 12)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha);

create view coe_eventos_indicador_2_horas_final as
select
    coe_eventos_indicador_2_horas_pre.Anio as Anio,
    sum(coe_eventos_indicador_2_horas_pre.Enero) as Enero,
    sum(coe_eventos_indicador_2_horas_pre.Febrero) as Febrero,
    sum(coe_eventos_indicador_2_horas_pre.Marzo) as Marzo,
    sum(coe_eventos_indicador_2_horas_pre.Abril) as Abril,
    sum(coe_eventos_indicador_2_horas_pre.Mayo) as Mayo,
    sum(coe_eventos_indicador_2_horas_pre.Junio) as Junio,
    sum(coe_eventos_indicador_2_horas_pre.Julio) as Julio,
    sum(coe_eventos_indicador_2_horas_pre.Agosto) as Agosto,
    sum(coe_eventos_indicador_2_horas_pre.Septiembre) as Septimbre,
    sum(coe_eventos_indicador_2_horas_pre.Octubre) as Octubre,
    sum(coe_eventos_indicador_2_horas_pre.Noviembre) as Noviembre,
    sum(coe_eventos_indicador_2_horas_pre.Diciembre) as Diciembre
from
    coe_eventos_indicador_2_horas_pre
group by
    coe_eventos_indicador_2_horas_pre.Anio;	
	
create view coe_eventos_indicador_6_horas_pre as
select
    year(evento_registro.Evento_Fecha) as Anio,
    count(0) as Enero,
    0 as Febrero,
    0 as Marzo,
    0 as Abril,
    0 as Mayo,
    0 as Junio,
    0 as Julio,
    0 as Agosto,
    0 as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) <= 6)
        and (month(evento_registro.Evento_Fecha) = 1)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    count(0) as Febrero,
    0 as Marzo,
    0 as Abril,
    0 as Mayo,
    0 as Junio,
    0 as Julio,
    0 as Agosto,
    0 as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) <= 6)
        and (month(evento_registro.Evento_Fecha) = 2)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    count(0) as Marzo,
    0 as Abril,
    0 as Mayo,
    0 as Junio,
    0 as Julio,
    0 as Agosto,
    0 as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) <= 6)
        and (month(evento_registro.Evento_Fecha) = 3)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    0 as Marzo,
    count(0) as Abril,
    0 as Mayo,
    0 as Junio,
    0 as Julio,
    0 as Agosto,
    0 as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) <= 6)
        and (month(evento_registro.Evento_Fecha) = 4)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    0 as Marzo,
    0 as Abril,
    count(0) as Mayo,
    0 as Junio,
    0 as Julio,
    0 as Agosto,
    0 as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) <= 6)
        and (month(evento_registro.Evento_Fecha) = 5)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    0 as Marzo,
    0 as Abril,
    0 as Mayo,
    count(0) as Junio,
    0 as Julio,
    0 as Agosto,
    0 as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) <= 6)
        and (month(evento_registro.Evento_Fecha) = 6)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    0 as Marzo,
    0 as Abril,
    0 as Mayo,
    0 as Junio,
    count(0) as Julio,
    0 as Agosto,
    0 as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) <= 6)
        and (month(evento_registro.Evento_Fecha) = 7)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    0 as Marzo,
    0 as Abril,
    0 as Mayo,
    0 as Junio,
    0 as Julio,
    count(0) as Agosto,
    0 as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) <= 6)
        and (month(evento_registro.Evento_Fecha) = 8)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    0 as Marzo,
    0 as Abril,
    0 as Mayo,
    0 as Junio,
    0 as Julio,
    0 as Agosto,
    count(0) as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) <= 6)
        and (month(evento_registro.Evento_Fecha) = 9)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    0 as Marzo,
    0 as Abril,
    0 as Mayo,
    0 as Junio,
    0 as Julio,
    0 as Agosto,
    0 as Septiembre,
    count(0) as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) <= 6)
        and (month(evento_registro.Evento_Fecha) = 10)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    0 as Marzo,
    0 as Abril,
    0 as Mayo,
    0 as Junio,
    0 as Julio,
    0 as Agosto,
    0 as Septiembre,
    0 as Octubre,
    count(0) as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) <= 6)
        and (month(evento_registro.Evento_Fecha) = 11)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    0 as Marzo,
    0 as Abril,
    0 as Mayo,
    0 as Junio,
    0 as Julio,
    0 as Agosto,
    0 as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    count(0) as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) <= 6)
        and (month(evento_registro.Evento_Fecha) = 12)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha);

create view coe_eventos_indicador_6_horas_final as
select
    coe_eventos_indicador_6_horas_pre.Anio as Anio,
    sum(coe_eventos_indicador_6_horas_pre.Enero) as Enero,
    sum(coe_eventos_indicador_6_horas_pre.Febrero) as Febrero,
    sum(coe_eventos_indicador_6_horas_pre.Marzo) as Marzo,
    sum(coe_eventos_indicador_6_horas_pre.Abril) as Abril,
    sum(coe_eventos_indicador_6_horas_pre.Mayo) as Mayo,
    sum(coe_eventos_indicador_6_horas_pre.Junio) as Junio,
    sum(coe_eventos_indicador_6_horas_pre.Julio) as Julio,
    sum(coe_eventos_indicador_6_horas_pre.Agosto) as Agosto,
    sum(coe_eventos_indicador_6_horas_pre.Septiembre) as Septimbre,
    sum(coe_eventos_indicador_6_horas_pre.Octubre) as Octubre,
    sum(coe_eventos_indicador_6_horas_pre.Noviembre) as Noviembre,
    sum(coe_eventos_indicador_6_horas_pre.Diciembre) as Diciembre
from
    coe_eventos_indicador_6_horas_pre
group by
    coe_eventos_indicador_6_horas_pre.Anio;	
	
create view `coe_eventos_indicador_eventos_pre` as
select
    year(`evento_registro`.`Evento_Fecha`) as `Anio`,
    count(0) as `Enero`,
    0 as `Febrero`,
    0 as `Marzo`,
    0 as `Abril`,
    0 as `Mayo`,
    0 as `Junio`,
    0 as `Julio`,
    0 as `Agosto`,
    0 as `Septiembre`,
    0 as `Octubre`,
    0 as `Noviembre`,
    0 as `Diciembre`
from
    `evento_registro`
where
    ((month(`evento_registro`.`Evento_Fecha`) = 1)
        and (`evento_registro`.`Evento_Estado_Codigo` in (1, 2)))
group by
    year(`evento_registro`.`Evento_Fecha`)
union all
select
    year(`evento_registro`.`Evento_Fecha`) as `Anio`,
    0 as `Enero`,
    count(0) as `Febrero`,
    0 as `Marzo`,
    0 as `Abril`,
    0 as `Mayo`,
    0 as `Junio`,
    0 as `Julio`,
    0 as `Agosto`,
    0 as `Septiembre`,
    0 as `Octubre`,
    0 as `Noviembre`,
    0 as `Diciembre`
from
    `evento_registro`
where
    ((month(`evento_registro`.`Evento_Fecha`) = 2)
        and (`evento_registro`.`Evento_Estado_Codigo` in (1, 2)))
group by
    year(`evento_registro`.`Evento_Fecha`)
union all
select
    year(`evento_registro`.`Evento_Fecha`) as `Anio`,
    0 as `Enero`,
    0 as `Febrero`,
    count(0) as `Marzo`,
    0 as `Abril`,
    0 as `Mayo`,
    0 as `Junio`,
    0 as `Julio`,
    0 as `Agosto`,
    0 as `Septiembre`,
    0 as `Octubre`,
    0 as `Noviembre`,
    0 as `Diciembre`
from
    `evento_registro`
where
    ((month(`evento_registro`.`Evento_Fecha`) = 3)
        and (`evento_registro`.`Evento_Estado_Codigo` in (1, 2)))
group by
    year(`evento_registro`.`Evento_Fecha`)
union all
select
    year(`evento_registro`.`Evento_Fecha`) as `Anio`,
    0 as `Enero`,
    0 as `Febrero`,
    0 as `Marzo`,
    count(0) as `Abril`,
    0 as `Mayo`,
    0 as `Junio`,
    0 as `Julio`,
    0 as `Agosto`,
    0 as `Septiembre`,
    0 as `Octubre`,
    0 as `Noviembre`,
    0 as `Diciembre`
from
    `evento_registro`
where
    ((month(`evento_registro`.`Evento_Fecha`) = 4)
        and (`evento_registro`.`Evento_Estado_Codigo` in (1, 2)))
group by
    year(`evento_registro`.`Evento_Fecha`)
union all
select
    year(`evento_registro`.`Evento_Fecha`) as `Anio`,
    0 as `Enero`,
    0 as `Febrero`,
    0 as `Marzo`,
    0 as `Abril`,
    count(0) as `Mayo`,
    0 as `Junio`,
    0 as `Julio`,
    0 as `Agosto`,
    0 as `Septiembre`,
    0 as `Octubre`,
    0 as `Noviembre`,
    0 as `Diciembre`
from
    `evento_registro`
where
    ((month(`evento_registro`.`Evento_Fecha`) = 5)
        and (`evento_registro`.`Evento_Estado_Codigo` in (1, 2)))
group by
    year(`evento_registro`.`Evento_Fecha`)
union all
select
    year(`evento_registro`.`Evento_Fecha`) as `Anio`,
    0 as `Enero`,
    0 as `Febrero`,
    0 as `Marzo`,
    0 as `Abril`,
    0 as `Mayo`,
    count(0) as `Junio`,
    0 as `Julio`,
    0 as `Agosto`,
    0 as `Septiembre`,
    0 as `Octubre`,
    0 as `Noviembre`,
    0 as `Diciembre`
from
    `evento_registro`
where
    ((month(`evento_registro`.`Evento_Fecha`) = 6)
        and (`evento_registro`.`Evento_Estado_Codigo` in (1, 2)))
group by
    year(`evento_registro`.`Evento_Fecha`)
union all
select
    year(`evento_registro`.`Evento_Fecha`) as `Anio`,
    0 as `Enero`,
    0 as `Febrero`,
    0 as `Marzo`,
    0 as `Abril`,
    0 as `Mayo`,
    0 as `Junio`,
    count(0) as `Julio`,
    0 as `Agosto`,
    0 as `Septiembre`,
    0 as `Octubre`,
    0 as `Noviembre`,
    0 as `Diciembre`
from
    `evento_registro`
where
    ((month(`evento_registro`.`Evento_Fecha`) = 7)
        and (`evento_registro`.`Evento_Estado_Codigo` in (1, 2)))
group by
    year(`evento_registro`.`Evento_Fecha`)
union all
select
    year(`evento_registro`.`Evento_Fecha`) as `Anio`,
    0 as `Enero`,
    0 as `Febrero`,
    0 as `Marzo`,
    0 as `Abril`,
    0 as `Mayo`,
    0 as `Junio`,
    0 as `Julio`,
    count(0) as `Agosto`,
    0 as `Septiembre`,
    0 as `Octubre`,
    0 as `Noviembre`,
    0 as `Diciembre`
from
    `evento_registro`
where
    ((month(`evento_registro`.`Evento_Fecha`) = 8)
        and (`evento_registro`.`Evento_Estado_Codigo` in (1, 2)))
group by
    year(`evento_registro`.`Evento_Fecha`)
union all
select
    year(`evento_registro`.`Evento_Fecha`) as `Anio`,
    0 as `Enero`,
    0 as `Febrero`,
    0 as `Marzo`,
    0 as `Abril`,
    0 as `Mayo`,
    0 as `Junio`,
    0 as `Julio`,
    0 as `Agosto`,
    count(0) as `Septiembre`,
    0 as `Octubre`,
    0 as `Noviembre`,
    0 as `Diciembre`
from
    `evento_registro`
where
    ((month(`evento_registro`.`Evento_Fecha`) = 9)
        and (`evento_registro`.`Evento_Estado_Codigo` in (1, 2)))
group by
    year(`evento_registro`.`Evento_Fecha`)
union all
select
    year(`evento_registro`.`Evento_Fecha`) as `Anio`,
    0 as `Enero`,
    0 as `Febrero`,
    0 as `Marzo`,
    0 as `Abril`,
    0 as `Mayo`,
    0 as `Junio`,
    0 as `Julio`,
    0 as `Agosto`,
    0 as `Septiembre`,
    count(0) as `Octubre`,
    0 as `Noviembre`,
    0 as `Diciembre`
from
    `evento_registro`
where
    ((month(`evento_registro`.`Evento_Fecha`) = 10)
        and (`evento_registro`.`Evento_Estado_Codigo` in (1, 2)))
group by
    year(`evento_registro`.`Evento_Fecha`)
union all
select
    year(`evento_registro`.`Evento_Fecha`) as `Anio`,
    0 as `Enero`,
    0 as `Febrero`,
    0 as `Marzo`,
    0 as `Abril`,
    0 as `Mayo`,
    0 as `Junio`,
    0 as `Julio`,
    0 as `Agosto`,
    0 as `Septiembre`,
    0 as `Octubre`,
    count(0) as `Noviembre`,
    0 as `Diciembre`
from
    `evento_registro`
where
    ((month(`evento_registro`.`Evento_Fecha`) = 11)
        and (`evento_registro`.`Evento_Estado_Codigo` in (1, 2)))
group by
    year(`evento_registro`.`Evento_Fecha`)
union all
select
    year(`evento_registro`.`Evento_Fecha`) as `Anio`,
    0 as `Enero`,
    0 as `Febrero`,
    0 as `Marzo`,
    0 as `Abril`,
    0 as `Mayo`,
    0 as `Junio`,
    0 as `Julio`,
    0 as `Agosto`,
    0 as `Septiembre`,
    0 as `Octubre`,
    0 as `Noviembre`,
    count(0) as `Diciembre`
from
    `evento_registro`
where
    ((month(`evento_registro`.`Evento_Fecha`) = 12)
        and (`evento_registro`.`Evento_Estado_Codigo` in (1, 2)))
group by
    year(`evento_registro`.`Evento_Fecha`);	
	
create view coe_eventos_indicador_eventos_final as
select
    coe_eventos_indicador_eventos_pre.Anio as Anio,
    sum(coe_eventos_indicador_eventos_pre.Enero) as Enero,
    sum(coe_eventos_indicador_eventos_pre.Febrero) as Febrero,
    sum(coe_eventos_indicador_eventos_pre.Marzo) as Marzo,
    sum(coe_eventos_indicador_eventos_pre.Abril) as Abril,
    sum(coe_eventos_indicador_eventos_pre.Mayo) as Mayo,
    sum(coe_eventos_indicador_eventos_pre.Junio) as Junio,
    sum(coe_eventos_indicador_eventos_pre.Julio) as Julio,
    sum(coe_eventos_indicador_eventos_pre.Agosto) as Agosto,
    sum(coe_eventos_indicador_eventos_pre.Septiembre) as Septimbre,
    sum(coe_eventos_indicador_eventos_pre.Octubre) as Octubre,
    sum(coe_eventos_indicador_eventos_pre.Noviembre) as Noviembre,
    sum(coe_eventos_indicador_eventos_pre.Diciembre) as Diciembre
from
    coe_eventos_indicador_eventos_pre
group by
    coe_eventos_indicador_eventos_pre.Anio;
	
create view coe_eventos_indicador_eventos_regiones as
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    count(0) as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '01'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    count(0) as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '02'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    count(0) as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '03'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    count(0) as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '04'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    count(0) as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '05'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    count(0) as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '06'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    count(0) as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '07'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    count(0) as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '08'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    count(0) as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '09'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    count(0) as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '10'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    count(0) as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '11'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    count(0) as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '12'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    count(0) as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '13'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    count(0) as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '14'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    count(0) as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '15'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    count(0) as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '16'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    count(0) as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '17'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    count(0) as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '18'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    count(0) as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '19'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    count(0) as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '20'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    count(0) as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '21'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    count(0) as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '22'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    count(0) as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '23'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    count(0) as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '24'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    count(0) as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '25'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2);	

create view coe_eventos_indicador_eventos_regiones_final as
select
    coe_eventos_indicador_eventos_regiones.Anio as Anio,
    coe_eventos_indicador_eventos_regiones.Numero as Numero,
    coe_eventos_indicador_eventos_regiones.Mes as Mes,
    sum(coe_eventos_indicador_eventos_regiones.Amazonas) as Amazonas,
    sum(coe_eventos_indicador_eventos_regiones.Ancash) as Ancash,
    sum(coe_eventos_indicador_eventos_regiones.Apurimac) as Apurimac,
    sum(coe_eventos_indicador_eventos_regiones.Arequipa) as Arequipa,
    sum(coe_eventos_indicador_eventos_regiones.Ayacucho) as Ayacucho,
    sum(coe_eventos_indicador_eventos_regiones.Cajamarca) as Cajamarca,
    sum(coe_eventos_indicador_eventos_regiones.Callao) as Callao,
    sum(coe_eventos_indicador_eventos_regiones.Cusco) as Cusco,
    sum(coe_eventos_indicador_eventos_regiones.Huancavelica) as Huancavelica,
    sum(coe_eventos_indicador_eventos_regiones.Huanuco) as Huanuco,
    sum(coe_eventos_indicador_eventos_regiones.Ica) as Ica,
    sum(coe_eventos_indicador_eventos_regiones.Junin) as Junin,
    sum(coe_eventos_indicador_eventos_regiones.La_Libertad) as La_Libertad,
    sum(coe_eventos_indicador_eventos_regiones.Lambayeque) as Lambayeque,
    sum(coe_eventos_indicador_eventos_regiones.Lima) as Lima,
    sum(coe_eventos_indicador_eventos_regiones.Loreto) as Loreto,
    sum(coe_eventos_indicador_eventos_regiones.Madre_de_Dios) as Madre_de_Dios,
    sum(coe_eventos_indicador_eventos_regiones.Moquegua) as Moquegua,
    sum(coe_eventos_indicador_eventos_regiones.Pasco) as Pasco,
    sum(coe_eventos_indicador_eventos_regiones.Piura) as Piura,
    sum(coe_eventos_indicador_eventos_regiones.Puno) as Puno,
    sum(coe_eventos_indicador_eventos_regiones.San_Martin) as San_Martin,
    sum(coe_eventos_indicador_eventos_regiones.Tacna) as Tacna,
    sum(coe_eventos_indicador_eventos_regiones.Tumbes) as Tumbes,
    sum(coe_eventos_indicador_eventos_regiones.Ucayali) as Ucayali
from
    coe_eventos_indicador_eventos_regiones
group by
    coe_eventos_indicador_eventos_regiones.Anio,
    coe_eventos_indicador_eventos_regiones.Numero,
    coe_eventos_indicador_eventos_regiones.Mes;

create view coe_eventos_indicador_eventos_regiones_final_reportar as
select
    coe_eventos_indicador_eventos_regiones_final.Anio as Anio,
    coe_eventos_indicador_eventos_regiones_final.Numero as Numero,
    coe_eventos_indicador_eventos_regiones_final.Mes as Mes,
    coe_eventos_indicador_eventos_regiones_final.Amazonas as Amazonas,
    coe_eventos_indicador_eventos_regiones_final.Ancash as Ancash,
    coe_eventos_indicador_eventos_regiones_final.Apurimac as Apurimac,
    coe_eventos_indicador_eventos_regiones_final.Arequipa as Arequipa,
    coe_eventos_indicador_eventos_regiones_final.Ayacucho as Ayacucho,
    coe_eventos_indicador_eventos_regiones_final.Cajamarca as Cajamarca,
    coe_eventos_indicador_eventos_regiones_final.Callao as Callao,
    coe_eventos_indicador_eventos_regiones_final.Cusco as Cusco,
    coe_eventos_indicador_eventos_regiones_final.Huancavelica as Huancavelica,
    coe_eventos_indicador_eventos_regiones_final.Huanuco as Huanuco,
    coe_eventos_indicador_eventos_regiones_final.Ica as Ica,
    coe_eventos_indicador_eventos_regiones_final.Junin as Junin,
    coe_eventos_indicador_eventos_regiones_final.La_Libertad as 'La Libertad',
    coe_eventos_indicador_eventos_regiones_final.Lambayeque as Lambayeque,
    coe_eventos_indicador_eventos_regiones_final.Lima as Lima,
    coe_eventos_indicador_eventos_regiones_final.Loreto as Loreto,
    coe_eventos_indicador_eventos_regiones_final.Madre_de_Dios as 'Madre de Dios',
    coe_eventos_indicador_eventos_regiones_final.Moquegua as Moquegua,
    coe_eventos_indicador_eventos_regiones_final.Pasco as Pasco,
    coe_eventos_indicador_eventos_regiones_final.Piura as Piura,
    coe_eventos_indicador_eventos_regiones_final.Puno as Puno,
    coe_eventos_indicador_eventos_regiones_final.San_Martin as 'San Matin',
    coe_eventos_indicador_eventos_regiones_final.Tacna as Tacna,
    coe_eventos_indicador_eventos_regiones_final.Tumbes as Tumbes,
    coe_eventos_indicador_eventos_regiones_final.Ucayali as Ucayali
from
    coe_eventos_indicador_eventos_regiones_final
union all
select
    coe_eventos_indicador_eventos_regiones_final.Anio as Anio,
    13 as Numero,
    'Total' as Mes,
    sum(coe_eventos_indicador_eventos_regiones_final.Amazonas) as Amazonas,
    sum(coe_eventos_indicador_eventos_regiones_final.Ancash) as Ancash,
    sum(coe_eventos_indicador_eventos_regiones_final.Apurimac) as Apurimac,
    sum(coe_eventos_indicador_eventos_regiones_final.Arequipa) as Arequipa,
    sum(coe_eventos_indicador_eventos_regiones_final.Ayacucho) as Ayacucho,
    sum(coe_eventos_indicador_eventos_regiones_final.Cajamarca) as Cajamarca,
    sum(coe_eventos_indicador_eventos_regiones_final.Callao) as Callao,
    sum(coe_eventos_indicador_eventos_regiones_final.Cusco) as Cusco,
    sum(coe_eventos_indicador_eventos_regiones_final.Huancavelica) as Huancavelica,
    sum(coe_eventos_indicador_eventos_regiones_final.Huanuco) as Huanuco,
    sum(coe_eventos_indicador_eventos_regiones_final.Ica) as Ica,
    sum(coe_eventos_indicador_eventos_regiones_final.Junin) as Junin,
    sum(coe_eventos_indicador_eventos_regiones_final.La_Libertad) as 'La Libertad',
    sum(coe_eventos_indicador_eventos_regiones_final.Lambayeque) as Lambayeque,
    sum(coe_eventos_indicador_eventos_regiones_final.Lima) as Lima,
    sum(coe_eventos_indicador_eventos_regiones_final.Loreto) as Loreto,
    sum(coe_eventos_indicador_eventos_regiones_final.Madre_de_Dios) as 'Madre de Dios',
    sum(coe_eventos_indicador_eventos_regiones_final.Moquegua) as Moquegua,
    sum(coe_eventos_indicador_eventos_regiones_final.Pasco) as Pasco,
    sum(coe_eventos_indicador_eventos_regiones_final.Piura) as Piura,
    sum(coe_eventos_indicador_eventos_regiones_final.Puno) as Puno,
    sum(coe_eventos_indicador_eventos_regiones_final.San_Martin) as 'San Martin',
    sum(coe_eventos_indicador_eventos_regiones_final.Tacna) as Tacna,
    sum(coe_eventos_indicador_eventos_regiones_final.Tumbes) as Tumbes,
    sum(coe_eventos_indicador_eventos_regiones_final.Ucayali) as Ucayali
from
    coe_eventos_indicador_eventos_regiones_final
group by
    coe_eventos_indicador_eventos_regiones_final.Anio;

create view coe_eventos_indicador_mayor_6_horas_pre as
select
    year(evento_registro.Evento_Fecha) as Anio,
    count(0) as Enero,
    0 as Febrero,
    0 as Marzo,
    0 as Abril,
    0 as Mayo,
    0 as Junio,
    0 as Julio,
    0 as Agosto,
    0 as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) > 6)
        and (month(evento_registro.Evento_Fecha) = 1)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    count(0) as Febrero,
    0 as Marzo,
    0 as Abril,
    0 as Mayo,
    0 as Junio,
    0 as Julio,
    0 as Agosto,
    0 as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) > 6)
        and (month(evento_registro.Evento_Fecha) = 2)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    count(0) as Marzo,
    0 as Abril,
    0 as Mayo,
    0 as Junio,
    0 as Julio,
    0 as Agosto,
    0 as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) > 6)
        and (month(evento_registro.Evento_Fecha) = 3)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    0 as Marzo,
    count(0) as Abril,
    0 as Mayo,
    0 as Junio,
    0 as Julio,
    0 as Agosto,
    0 as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) > 6)
        and (month(evento_registro.Evento_Fecha) = 4)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    0 as Marzo,
    0 as Abril,
    count(0) as Mayo,
    0 as Junio,
    0 as Julio,
    0 as Agosto,
    0 as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) > 6)
        and (month(evento_registro.Evento_Fecha) = 5)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    0 as Marzo,
    0 as Abril,
    0 as Mayo,
    count(0) as Junio,
    0 as Julio,
    0 as Agosto,
    0 as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) > 6)
        and (month(evento_registro.Evento_Fecha) = 6)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    0 as Marzo,
    0 as Abril,
    0 as Mayo,
    0 as Junio,
    count(0) as Julio,
    0 as Agosto,
    0 as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) > 6)
        and (month(evento_registro.Evento_Fecha) = 7)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    0 as Marzo,
    0 as Abril,
    0 as Mayo,
    0 as Junio,
    0 as Julio,
    count(0) as Agosto,
    0 as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) > 6)
        and (month(evento_registro.Evento_Fecha) = 8)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    0 as Marzo,
    0 as Abril,
    0 as Mayo,
    0 as Junio,
    0 as Julio,
    0 as Agosto,
    count(0) as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) > 6)
        and (month(evento_registro.Evento_Fecha) = 9)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    0 as Marzo,
    0 as Abril,
    0 as Mayo,
    0 as Junio,
    0 as Julio,
    0 as Agosto,
    0 as Septiembre,
    count(0) as Octubre,
    0 as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) > 6)
        and (month(evento_registro.Evento_Fecha) = 10)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    0 as Marzo,
    0 as Abril,
    0 as Mayo,
    0 as Junio,
    0 as Julio,
    0 as Agosto,
    0 as Septiembre,
    0 as Octubre,
    count(0) as Noviembre,
    0 as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) > 6)
        and (month(evento_registro.Evento_Fecha) = 11)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    0 as Enero,
    0 as Febrero,
    0 as Marzo,
    0 as Abril,
    0 as Mayo,
    0 as Junio,
    0 as Julio,
    0 as Agosto,
    0 as Septiembre,
    0 as Octubre,
    0 as Noviembre,
    count(0) as Diciembre
from
    evento_registro
where
    ((extract(hour from timediff(evento_registro.Evento_Fecha_Registro, evento_registro.Evento_Fecha)) > 6)
        and (month(evento_registro.Evento_Fecha) = 12)
            and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha);
	
create view coe_eventos_indicador_mayor_6_horas_final as
select
    coe_eventos_indicador_mayor_6_horas_pre.Anio as Anio,
    sum(coe_eventos_indicador_mayor_6_horas_pre.Enero) as Enero,
    sum(coe_eventos_indicador_mayor_6_horas_pre.Febrero) as Febrero,
    sum(coe_eventos_indicador_mayor_6_horas_pre.Marzo) as Marzo,
    sum(coe_eventos_indicador_mayor_6_horas_pre.Abril) as Abril,
    sum(coe_eventos_indicador_mayor_6_horas_pre.Mayo) as Mayo,
    sum(coe_eventos_indicador_mayor_6_horas_pre.Junio) as Junio,
    sum(coe_eventos_indicador_mayor_6_horas_pre.Julio) as Julio,
    sum(coe_eventos_indicador_mayor_6_horas_pre.Agosto) as Agosto,
    sum(coe_eventos_indicador_mayor_6_horas_pre.Septiembre) as Septimbre,
    sum(coe_eventos_indicador_mayor_6_horas_pre.Octubre) as Octubre,
    sum(coe_eventos_indicador_mayor_6_horas_pre.Noviembre) as Noviembre,
    sum(coe_eventos_indicador_mayor_6_horas_pre.Diciembre) as Diciembre
from
    coe_eventos_indicador_mayor_6_horas_pre
group by
    coe_eventos_indicador_mayor_6_horas_pre.Anio;

create view coe_eventos_indicador_mayor_6_horas_final_porcentual as
select
    final_mayor_6_horas.Anio as Anio,
    ifnull(round(((final_mayor_6_horas.Enero * 100) / total.Enero), 2), 0) as Enero,
    ifnull(round(((final_mayor_6_horas.Febrero * 100) / total.Febrero), 2), 0) as Febrero,
    ifnull(round(((final_mayor_6_horas.Marzo * 100) / total.Marzo), 2), 0) as Marzo,
    ifnull(round(((final_mayor_6_horas.Abril * 100) / total.Abril), 2), 0) as Abril,
    ifnull(round(((final_mayor_6_horas.Mayo * 100) / total.Mayo), 2), 0) as Mayo,
    ifnull(round(((final_mayor_6_horas.Junio * 100) / total.Junio), 2), 0) as Junio,
    ifnull(round(((final_mayor_6_horas.Julio * 100) / total.Julio), 2), 0) as Julio,
    ifnull(round(((final_mayor_6_horas.Agosto * 100) / total.Agosto), 2), 0) as Agosto,
    ifnull(round(((final_mayor_6_horas.Septimbre * 100) / total.Septimbre), 2), 0) as Septimbre,
    ifnull(round(((final_mayor_6_horas.Octubre * 100) / total.Octubre), 2), 0) as Octubre,
    ifnull(round(((final_mayor_6_horas.Noviembre * 100) / total.Noviembre), 2), 0) as Noviembre,
    ifnull(round(((final_mayor_6_horas.Diciembre * 100) / total.Diciembre), 2), 0) as Diciembre
from
    (coe_eventos_indicador_mayor_6_horas_final final_mayor_6_horas
join coe_eventos_indicador_eventos_final total on
    ((total.Anio = final_mayor_6_horas.Anio)));	

create view coe_eventos_indicador_6_horas_final_porcentual as
select
    final_6_horas.Anio as Anio,
    ifnull(round(((final_6_horas.Enero * 100) / total.Enero), 2), 0) as Enero,
    ifnull(round(((final_6_horas.Febrero * 100) / total.Febrero), 2), 0) as Febrero,
    ifnull(round(((final_6_horas.Marzo * 100) / total.Marzo), 2), 0) as Marzo,
    ifnull(round(((final_6_horas.Abril * 100) / total.Abril), 2), 0) as Abril,
    ifnull(round(((final_6_horas.Mayo * 100) / total.Mayo), 2), 0) as Mayo,
    ifnull(round(((final_6_horas.Junio * 100) / total.Junio), 2), 0) as Junio,
    ifnull(round(((final_6_horas.Julio * 100) / total.Julio), 2), 0) as Julio,
    ifnull(round(((final_6_horas.Agosto * 100) / total.Agosto), 2), 0) as Agosto,
    ifnull(round(((final_6_horas.Septimbre * 100) / total.Septimbre), 2), 0) as Septimbre,
    ifnull(round(((final_6_horas.Octubre * 100) / total.Octubre), 2), 0) as Octubre,
    ifnull(round(((final_6_horas.Noviembre * 100) / total.Noviembre), 2), 0) as Noviembre,
    ifnull(round(((final_6_horas.Diciembre * 100) / total.Diciembre), 2), 0) as Diciembre
from
    (coe_eventos_indicador_6_horas_final final_6_horas
join coe_eventos_indicador_eventos_final total on
    ((total.Anio = final_6_horas.Anio)));
	
create view coe_eventos_indicador_2_horas_final_porcentual as
select
    final_2_horas.Anio as Anio,
    ifnull(round(((final_2_horas.Enero * 100) / total.Enero), 2), 0) as Enero,
    ifnull(round(((final_2_horas.Febrero * 100) / total.Febrero), 2), 0) as Febrero,
    ifnull(round(((final_2_horas.Marzo * 100) / total.Marzo), 2), 0) as Marzo,
    ifnull(round(((final_2_horas.Abril * 100) / total.Abril), 2), 0) as Abril,
    ifnull(round(((final_2_horas.Mayo * 100) / total.Mayo), 2), 0) as Mayo,
    ifnull(round(((final_2_horas.Junio * 100) / total.Junio), 2), 0) as Junio,
    ifnull(round(((final_2_horas.Julio * 100) / total.Julio), 2), 0) as Julio,
    ifnull(round(((final_2_horas.Agosto * 100) / total.Agosto), 2), 0) as Agosto,
    ifnull(round(((final_2_horas.Septimbre * 100) / total.Septimbre), 2), 0) as Septimbre,
    ifnull(round(((final_2_horas.Octubre * 100) / total.Octubre), 2), 0) as Octubre,
    ifnull(round(((final_2_horas.Noviembre * 100) / total.Noviembre), 2), 0) as Noviembre,
    ifnull(round(((final_2_horas.Diciembre * 100) / total.Diciembre), 2), 0) as Diciembre
from
    (coe_eventos_indicador_2_horas_final final_2_horas
join coe_eventos_indicador_eventos_final total on
    ((total.Anio = final_2_horas.Anio)));	
	
create view coe_eventos_indicador_agrupado_porcentual as
select
    coe_eventos_indicador_2_horas_final_porcentual.Anio as Anio,
    'Registro < = 2 Horas' as Indicador,
    coe_eventos_indicador_2_horas_final_porcentual.Enero as Enero,
    coe_eventos_indicador_2_horas_final_porcentual.Febrero as Febrero,
    coe_eventos_indicador_2_horas_final_porcentual.Marzo as Marzo,
    coe_eventos_indicador_2_horas_final_porcentual.Abril as Abril,
    coe_eventos_indicador_2_horas_final_porcentual.Mayo as Mayo,
    coe_eventos_indicador_2_horas_final_porcentual.Junio as Junio,
    coe_eventos_indicador_2_horas_final_porcentual.Julio as Julio,
    coe_eventos_indicador_2_horas_final_porcentual.Agosto as Agosto,
    coe_eventos_indicador_2_horas_final_porcentual.Septimbre as Septimbre,
    coe_eventos_indicador_2_horas_final_porcentual.Octubre as Octubre,
    coe_eventos_indicador_2_horas_final_porcentual.Noviembre as Noviembre,
    coe_eventos_indicador_2_horas_final_porcentual.Diciembre as Diciembre
from
    coe_eventos_indicador_2_horas_final_porcentual
union all
select
    coe_eventos_indicador_6_horas_final_porcentual.Anio as Anio,
    'Registro < = 6 Horas' as Indicador,
    coe_eventos_indicador_6_horas_final_porcentual.Enero as Enero,
    coe_eventos_indicador_6_horas_final_porcentual.Febrero as Febrero,
    coe_eventos_indicador_6_horas_final_porcentual.Marzo as Marzo,
    coe_eventos_indicador_6_horas_final_porcentual.Abril as Abril,
    coe_eventos_indicador_6_horas_final_porcentual.Mayo as Mayo,
    coe_eventos_indicador_6_horas_final_porcentual.Junio as Junio,
    coe_eventos_indicador_6_horas_final_porcentual.Julio as Julio,
    coe_eventos_indicador_6_horas_final_porcentual.Agosto as Agosto,
    coe_eventos_indicador_6_horas_final_porcentual.Septimbre as Septimbre,
    coe_eventos_indicador_6_horas_final_porcentual.Octubre as Octubre,
    coe_eventos_indicador_6_horas_final_porcentual.Noviembre as Noviembre,
    coe_eventos_indicador_6_horas_final_porcentual.Diciembre as Diciembre
from
    coe_eventos_indicador_6_horas_final_porcentual
union all
select
    coe_eventos_indicador_mayor_6_horas_final_porcentual.Anio as Anio,
    'Registro > 6 Horas' as Indicador,
    coe_eventos_indicador_mayor_6_horas_final_porcentual.Enero as Enero,
    coe_eventos_indicador_mayor_6_horas_final_porcentual.Febrero as Febrero,
    coe_eventos_indicador_mayor_6_horas_final_porcentual.Marzo as Marzo,
    coe_eventos_indicador_mayor_6_horas_final_porcentual.Abril as Abril,
    coe_eventos_indicador_mayor_6_horas_final_porcentual.Mayo as Mayo,
    coe_eventos_indicador_mayor_6_horas_final_porcentual.Junio as Junio,
    coe_eventos_indicador_mayor_6_horas_final_porcentual.Julio as Julio,
    coe_eventos_indicador_mayor_6_horas_final_porcentual.Agosto as Agosto,
    coe_eventos_indicador_mayor_6_horas_final_porcentual.Septimbre as Septimbre,
    coe_eventos_indicador_mayor_6_horas_final_porcentual.Octubre as Octubre,
    coe_eventos_indicador_mayor_6_horas_final_porcentual.Noviembre as Noviembre,
    coe_eventos_indicador_mayor_6_horas_final_porcentual.Diciembre as Diciembre
from
    coe_eventos_indicador_mayor_6_horas_final_porcentual;
	
create view coe_eventos_indicador_agrupado as
select
    coe_eventos_indicador_2_horas_final.Anio as anio,
    'Registro < = 2 Horas' as Indicador,
    coe_eventos_indicador_2_horas_final.Enero as Enero,
    coe_eventos_indicador_2_horas_final.Febrero as Febrero,
    coe_eventos_indicador_2_horas_final.Marzo as MArzo,
    coe_eventos_indicador_2_horas_final.Abril as Abril,
    coe_eventos_indicador_2_horas_final.Mayo as Mayo,
    coe_eventos_indicador_2_horas_final.Junio as Junio,
    coe_eventos_indicador_2_horas_final.Julio as Julio,
    coe_eventos_indicador_2_horas_final.Agosto as Agosto,
    coe_eventos_indicador_2_horas_final.Septimbre as Septimbre,
    coe_eventos_indicador_2_horas_final.Octubre as Octubre,
    coe_eventos_indicador_2_horas_final.Noviembre as Noviembre,
    coe_eventos_indicador_2_horas_final.Diciembre as Diciembre
from
    coe_eventos_indicador_2_horas_final
union all
select
    coe_eventos_indicador_6_horas_final.Anio as anio,
    'Registro < = 6 Horas' as Indicador,
    coe_eventos_indicador_6_horas_final.Enero as Enero,
    coe_eventos_indicador_6_horas_final.Febrero as Febrero,
    coe_eventos_indicador_6_horas_final.Marzo as MArzo,
    coe_eventos_indicador_6_horas_final.Abril as Abril,
    coe_eventos_indicador_6_horas_final.Mayo as Mayo,
    coe_eventos_indicador_6_horas_final.Junio as Junio,
    coe_eventos_indicador_6_horas_final.Julio as Julio,
    coe_eventos_indicador_6_horas_final.Agosto as Agosto,
    coe_eventos_indicador_6_horas_final.Septimbre as Septimbre,
    coe_eventos_indicador_6_horas_final.Octubre as Octubre,
    coe_eventos_indicador_6_horas_final.Noviembre as Noviembre,
    coe_eventos_indicador_6_horas_final.Diciembre as Diciembre
from
    coe_eventos_indicador_6_horas_final
union all
select
    coe_eventos_indicador_mayor_6_horas_final.Anio as anio,
    'Registro > 6 Horas' as Indicador,
    coe_eventos_indicador_mayor_6_horas_final.Enero as Enero,
    coe_eventos_indicador_mayor_6_horas_final.Febrero as Febrero,
    coe_eventos_indicador_mayor_6_horas_final.Marzo as MArzo,
    coe_eventos_indicador_mayor_6_horas_final.Abril as Abril,
    coe_eventos_indicador_mayor_6_horas_final.Mayo as Mayo,
    coe_eventos_indicador_mayor_6_horas_final.Junio as Junio,
    coe_eventos_indicador_mayor_6_horas_final.Julio as Julio,
    coe_eventos_indicador_mayor_6_horas_final.Agosto as Agosto,
    coe_eventos_indicador_mayor_6_horas_final.Septimbre as Septimbre,
    coe_eventos_indicador_mayor_6_horas_final.Octubre as Octubre,
    coe_eventos_indicador_mayor_6_horas_final.Noviembre as Noviembre,
    coe_eventos_indicador_mayor_6_horas_final.Diciembre as Diciembre
from
    coe_eventos_indicador_mayor_6_horas_final
union all
select
    coe_eventos_indicador_eventos_final.Anio as anio,
    'Total Eventos' as Indicador,
    coe_eventos_indicador_eventos_final.Enero as Enero,
    coe_eventos_indicador_eventos_final.Febrero as Febrero,
    coe_eventos_indicador_eventos_final.Marzo as MArzo,
    coe_eventos_indicador_eventos_final.Abril as Abril,
    coe_eventos_indicador_eventos_final.Mayo as Mayo,
    coe_eventos_indicador_eventos_final.Junio as Junio,
    coe_eventos_indicador_eventos_final.Julio as Julio,
    coe_eventos_indicador_eventos_final.Agosto as Agosto,
    coe_eventos_indicador_eventos_final.Septimbre as Septimbre,
    coe_eventos_indicador_eventos_final.Octubre as Octubre,
    coe_eventos_indicador_eventos_final.Noviembre as Noviembre,
    coe_eventos_indicador_eventos_final.Diciembre as Diciembre
from
    coe_eventos_indicador_eventos_final;

create view coe_eventos_indicador_eventos_regiones_nivel as
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    evento_registro.Evento_Nivel_Codigo as Nivel,
    count(0) as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '01'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2),
    evento_registro.Evento_Nivel_Codigo
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    evento_registro.Evento_Nivel_Codigo as Nivel,
    0 as Amazonas,
    count(0) as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '02'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2),
    evento_registro.Evento_Nivel_Codigo
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    evento_registro.Evento_Nivel_Codigo as Nivel,
    0 as Amazonas,
    0 as Ancash,
    count(0) as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '03'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2),
    evento_registro.Evento_Nivel_Codigo
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    evento_registro.Evento_Nivel_Codigo as Nivel,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    count(0) as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '04'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2),
    evento_registro.Evento_Nivel_Codigo
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    evento_registro.Evento_Nivel_Codigo as Nivel,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    count(0) as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '05'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2),
    evento_registro.Evento_Nivel_Codigo
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    evento_registro.Evento_Nivel_Codigo as Nivel,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    count(0) as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '06'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2),
    evento_registro.Evento_Nivel_Codigo
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    evento_registro.Evento_Nivel_Codigo as Nivel,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    count(0) as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '07'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2),
    evento_registro.Evento_Nivel_Codigo
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    evento_registro.Evento_Nivel_Codigo as Nivel,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    count(0) as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '08'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2),
    evento_registro.Evento_Nivel_Codigo
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    evento_registro.Evento_Nivel_Codigo as Nivel,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    count(0) as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '09'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2),
    evento_registro.Evento_Nivel_Codigo
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    evento_registro.Evento_Nivel_Codigo as Nivel,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    count(0) as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '10'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2),
    evento_registro.Evento_Nivel_Codigo
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    evento_registro.Evento_Nivel_Codigo as Nivel,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    count(0) as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '11'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2),
    evento_registro.Evento_Nivel_Codigo
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    evento_registro.Evento_Nivel_Codigo as Nivel,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    count(0) as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '12'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2),
    evento_registro.Evento_Nivel_Codigo
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    evento_registro.Evento_Nivel_Codigo as Nivel,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    count(0) as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '13'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2),
    evento_registro.Evento_Nivel_Codigo
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    evento_registro.Evento_Nivel_Codigo as Nivel,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    count(0) as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '14'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2),
    evento_registro.Evento_Nivel_Codigo
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    evento_registro.Evento_Nivel_Codigo as Nivel,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    count(0) as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '15'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2),
    evento_registro.Evento_Nivel_Codigo
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    evento_registro.Evento_Nivel_Codigo as Nivel,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    count(0) as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '16'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2),
    evento_registro.Evento_Nivel_Codigo
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    evento_registro.Evento_Nivel_Codigo as Nivel,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    count(0) as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '17'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2),
    evento_registro.Evento_Nivel_Codigo
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    evento_registro.Evento_Nivel_Codigo as Nivel,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    count(0) as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '18'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2),
    evento_registro.Evento_Nivel_Codigo
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    evento_registro.Evento_Nivel_Codigo as Nivel,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    count(0) as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '19'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2),
    evento_registro.Evento_Nivel_Codigo
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    evento_registro.Evento_Nivel_Codigo as Nivel,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    count(0) as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '20'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2),
    evento_registro.Evento_Nivel_Codigo
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    evento_registro.Evento_Nivel_Codigo as Nivel,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    count(0) as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '21'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2),
    evento_registro.Evento_Nivel_Codigo
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    evento_registro.Evento_Nivel_Codigo as Nivel,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    count(0) as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '22'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2),
    evento_registro.Evento_Nivel_Codigo
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    evento_registro.Evento_Nivel_Codigo as Nivel,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    count(0) as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '23'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2),
    evento_registro.Evento_Nivel_Codigo
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    evento_registro.Evento_Nivel_Codigo as Nivel,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    count(0) as Tumbes,
    0 as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '24'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2),
    evento_registro.Evento_Nivel_Codigo
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    evento_registro.Evento_Nivel_Codigo as Nivel,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    count(0) as Ucayali
from
    evento_registro
where
    ((evento_registro.Evento_Estado_Codigo in (1, 2))
        and (left(evento_registro.Evento_Ubigeo,
        2) = '25'))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha),
    left(evento_registro.Evento_Ubigeo,
    2),
    evento_registro.Evento_Nivel_Codigo;	
	
create view coe_eventos_indicador_eventos_regiones_nivel_reportar as
select
    coe_eventos_indicador_eventos_regiones_nivel.Anio as Anio,
    coe_eventos_indicador_eventos_regiones_nivel.Numero as Numero,
    coe_eventos_indicador_eventos_regiones_nivel.Mes as Mes,
    coe_eventos_indicador_eventos_regiones_nivel.Nivel as Nivel,
    sum(coe_eventos_indicador_eventos_regiones_nivel.Amazonas) as Amazonas,
    sum(coe_eventos_indicador_eventos_regiones_nivel.Ancash) as Ancash,
    sum(coe_eventos_indicador_eventos_regiones_nivel.Apurimac) as Apurimac,
    sum(coe_eventos_indicador_eventos_regiones_nivel.Arequipa) as Arequipa,
    sum(coe_eventos_indicador_eventos_regiones_nivel.Ayacucho) as Ayacucho,
    sum(coe_eventos_indicador_eventos_regiones_nivel.Cajamarca) as Cajamarca,
    sum(coe_eventos_indicador_eventos_regiones_nivel.Callao) as Callao,
    sum(coe_eventos_indicador_eventos_regiones_nivel.Cusco) as Cusco,
    sum(coe_eventos_indicador_eventos_regiones_nivel.Huancavelica) as Huancavelica,
    sum(coe_eventos_indicador_eventos_regiones_nivel.Huanuco) as Huanuco,
    sum(coe_eventos_indicador_eventos_regiones_nivel.Ica) as Ica,
    sum(coe_eventos_indicador_eventos_regiones_nivel.Junin) as Junin,
    sum(coe_eventos_indicador_eventos_regiones_nivel.La_Libertad) as 'La Libertad',
    sum(coe_eventos_indicador_eventos_regiones_nivel.Lambayeque) as Lambayeque,
    sum(coe_eventos_indicador_eventos_regiones_nivel.Lima) as Lima,
    sum(coe_eventos_indicador_eventos_regiones_nivel.Loreto) as Loreto,
    sum(coe_eventos_indicador_eventos_regiones_nivel.Madre_de_Dios) as 'Madre de Dios',
    sum(coe_eventos_indicador_eventos_regiones_nivel.Moquegua) as Moquegua,
    sum(coe_eventos_indicador_eventos_regiones_nivel.Pasco) as Pasco,
    sum(coe_eventos_indicador_eventos_regiones_nivel.Piura) as Piura,
    sum(coe_eventos_indicador_eventos_regiones_nivel.Puno) as Puno,
    sum(coe_eventos_indicador_eventos_regiones_nivel.San_Martin) as 'San Matin',
    sum(coe_eventos_indicador_eventos_regiones_nivel.Tacna) as Tacna,
    sum(coe_eventos_indicador_eventos_regiones_nivel.Tumbes) as Tumbes,
    sum(coe_eventos_indicador_eventos_regiones_nivel.Ucayali) as Ucayali
from
    coe_eventos_indicador_eventos_regiones_nivel
group by
    coe_eventos_indicador_eventos_regiones_nivel.Anio,
    coe_eventos_indicador_eventos_regiones_nivel.Numero,
    coe_eventos_indicador_eventos_regiones_nivel.Mes,
    coe_eventos_indicador_eventos_regiones_nivel.Nivel;
	
create view coe_eventos_indicador_niveles as
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    'Nivel 01' as Nivel,
    count(0) as Eventos
from
    evento_registro
where
    ((evento_registro.Evento_Nivel_Codigo = '01')
        and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    'Nivel 02' as Nivel,
    count(0) as Eventos
from
    evento_registro
where
    ((evento_registro.Evento_Nivel_Codigo = '02')
        and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    'Nivel 03' as Nivel,
    count(0) as Eventos
from
    evento_registro
where
    ((evento_registro.Evento_Nivel_Codigo = '03')
        and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    'Nivel 04' as Nivel,
    count(0) as Eventos
from
    evento_registro
where
    ((evento_registro.Evento_Nivel_Codigo = '04')
        and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha)
union all
select
    year(evento_registro.Evento_Fecha) as Anio,
    month(evento_registro.Evento_Fecha) as Numero,
    (case
        month(evento_registro.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    'Nivel 05' as Nivel,
    count(0) as Eventos
from
    evento_registro
where
    ((evento_registro.Evento_Nivel_Codigo = '05')
        and (evento_registro.Evento_Estado_Codigo in (1, 2)))
group by
    year(evento_registro.Evento_Fecha),
    month(evento_registro.Evento_Fecha);
	
create view coe_indicador_brigadistas_global as
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    'Enero' as Mes,
    sum(ea.Evento_Acciones_Region) as Regionales,
    sum(ea.Evento_Acciones_Minsa) as Minsa
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (month(er.Evento_Fecha) = 1))
group by
    year(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    'Febrero' as Mes,
    sum(ea.Evento_Acciones_Region) as Regionales,
    sum(ea.Evento_Acciones_Minsa) as Minsa
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (month(er.Evento_Fecha) = 2))
group by
    year(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    'Marzo' as Mes,
    sum(ea.Evento_Acciones_Region) as Regionales,
    sum(ea.Evento_Acciones_Minsa) as Minsa
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (month(er.Evento_Fecha) = 3))
group by
    year(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    'Abril' as Mes,
    sum(ea.Evento_Acciones_Region) as Regionales,
    sum(ea.Evento_Acciones_Minsa) as Minsa
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (month(er.Evento_Fecha) = 4))
group by
    year(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    'Mayo' as Mes,
    sum(ea.Evento_Acciones_Region) as Regionales,
    sum(ea.Evento_Acciones_Minsa) as Minsa
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (month(er.Evento_Fecha) = 5))
group by
    year(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    'Junio' as Mes,
    sum(ea.Evento_Acciones_Region) as Regionales,
    sum(ea.Evento_Acciones_Minsa) as Minsa
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (month(er.Evento_Fecha) = 6))
group by
    year(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    'Julio' as Mes,
    sum(ea.Evento_Acciones_Region) as Regionales,
    sum(ea.Evento_Acciones_Minsa) as Minsa
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (month(er.Evento_Fecha) = 7))
group by
    year(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    'Agosto' as Mes,
    sum(ea.Evento_Acciones_Region) as Regionales,
    sum(ea.Evento_Acciones_Minsa) as Minsa
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (month(er.Evento_Fecha) = 8))
group by
    year(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    'Septiembre' as Mes,
    sum(ea.Evento_Acciones_Region) as Regionales,
    sum(ea.Evento_Acciones_Minsa) as Minsa
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (month(er.Evento_Fecha) = 9))
group by
    year(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    'Octubre' as Mes,
    sum(ea.Evento_Acciones_Region) as Regionales,
    sum(ea.Evento_Acciones_Minsa) as Minsa
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (month(er.Evento_Fecha) = 10))
group by
    year(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    'Noviembre' as Mes,
    sum(ea.Evento_Acciones_Region) as Regionales,
    sum(ea.Evento_Acciones_Minsa) as Minsa
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (month(er.Evento_Fecha) = 11))
group by
    year(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    'Diciembre' as Mes,
    sum(ea.Evento_Acciones_Region) as Regionales,
    sum(ea.Evento_Acciones_Minsa) as Minsa
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (month(er.Evento_Fecha) = 12))
group by
    year(er.Evento_Fecha);

create view coe_indicador_brigadistas_minsa_regiones as
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    sum(ea.Evento_Acciones_Minsa) as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '01'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    sum(ea.Evento_Acciones_Minsa) as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '02'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    sum(ea.Evento_Acciones_Minsa) as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '03'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    sum(ea.Evento_Acciones_Minsa) as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '04'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    sum(ea.Evento_Acciones_Minsa) as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '05'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    sum(ea.Evento_Acciones_Minsa) as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '06'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    sum(ea.Evento_Acciones_Minsa) as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '07'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    sum(ea.Evento_Acciones_Minsa) as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '08'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    sum(ea.Evento_Acciones_Minsa) as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '09'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    sum(ea.Evento_Acciones_Minsa) as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '10'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    sum(ea.Evento_Acciones_Minsa) as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '11'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    sum(ea.Evento_Acciones_Minsa) as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '12'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    sum(ea.Evento_Acciones_Minsa) as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '13'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    sum(ea.Evento_Acciones_Minsa) as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '14'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    sum(ea.Evento_Acciones_Minsa) as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '15'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    sum(ea.Evento_Acciones_Minsa) as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '16'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    sum(ea.Evento_Acciones_Minsa) as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '17'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    sum(ea.Evento_Acciones_Minsa) as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '18'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    sum(ea.Evento_Acciones_Minsa) as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '19'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    sum(ea.Evento_Acciones_Minsa) as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '20'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    sum(ea.Evento_Acciones_Minsa) as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '21'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    sum(ea.Evento_Acciones_Minsa) as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '22'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    sum(ea.Evento_Acciones_Minsa) as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '23'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    sum(ea.Evento_Acciones_Minsa) as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '24'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    sum(ea.Evento_Acciones_Minsa) as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '25'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha);	
	
create view coe_indicador_brigadistas_minsa_regiones_reportar as
select
    coe_indicador_brigadistas_minsa_regiones.Anio as Anio,
    coe_indicador_brigadistas_minsa_regiones.Numero as Numero,
    coe_indicador_brigadistas_minsa_regiones.Mes as Mes,
    sum(coe_indicador_brigadistas_minsa_regiones.Amazonas) as Amazonas,
    sum(coe_indicador_brigadistas_minsa_regiones.Ancash) as Ancash,
    sum(coe_indicador_brigadistas_minsa_regiones.Apurimac) as Apurimac,
    sum(coe_indicador_brigadistas_minsa_regiones.Arequipa) as Arequipa,
    sum(coe_indicador_brigadistas_minsa_regiones.Ayacucho) as Ayacucho,
    sum(coe_indicador_brigadistas_minsa_regiones.Cajamarca) as Cajamarca,
    sum(coe_indicador_brigadistas_minsa_regiones.Callao) as Callao,
    sum(coe_indicador_brigadistas_minsa_regiones.Cusco) as Cusco,
    sum(coe_indicador_brigadistas_minsa_regiones.Huancavelica) as Huancavelica,
    sum(coe_indicador_brigadistas_minsa_regiones.Huanuco) as Huanuco,
    sum(coe_indicador_brigadistas_minsa_regiones.Ica) as Ica,
    sum(coe_indicador_brigadistas_minsa_regiones.Junin) as Junin,
    sum(coe_indicador_brigadistas_minsa_regiones.La_Libertad) as 'La Libertad',
    sum(coe_indicador_brigadistas_minsa_regiones.Lambayeque) as Lambayeque,
    sum(coe_indicador_brigadistas_minsa_regiones.Lima) as Lima,
    sum(coe_indicador_brigadistas_minsa_regiones.Loreto) as Loreto,
    sum(coe_indicador_brigadistas_minsa_regiones.Madre_de_Dios) as 'Madre de Dios',
    sum(coe_indicador_brigadistas_minsa_regiones.Moquegua) as Moquegua,
    sum(coe_indicador_brigadistas_minsa_regiones.Pasco) as Pasco,
    sum(coe_indicador_brigadistas_minsa_regiones.Piura) as Piura,
    sum(coe_indicador_brigadistas_minsa_regiones.Puno) as Puno,
    sum(coe_indicador_brigadistas_minsa_regiones.San_Martin) as 'San Martin',
    sum(coe_indicador_brigadistas_minsa_regiones.Tacna) as Tacna,
    sum(coe_indicador_brigadistas_minsa_regiones.Tumbes) as Tumbes,
    sum(coe_indicador_brigadistas_minsa_regiones.Ucayali) as Ucayali
from
    coe_indicador_brigadistas_minsa_regiones
group by
    coe_indicador_brigadistas_minsa_regiones.Anio,
    coe_indicador_brigadistas_minsa_regiones.Mes;

create view coe_indicador_brigadistas_regionales_regiones as
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    sum(ea.Evento_Acciones_Region) as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '01'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    sum(ea.Evento_Acciones_Region) as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '02'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    sum(ea.Evento_Acciones_Region) as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '03'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    sum(ea.Evento_Acciones_Region) as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '04'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    sum(ea.Evento_Acciones_Region) as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '05'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    sum(ea.Evento_Acciones_Region) as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '06'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    sum(ea.Evento_Acciones_Region) as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '07'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    sum(ea.Evento_Acciones_Region) as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '08'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    sum(ea.Evento_Acciones_Region) as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '09'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    sum(ea.Evento_Acciones_Region) as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '10'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    sum(ea.Evento_Acciones_Region) as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '11'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    sum(ea.Evento_Acciones_Region) as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '12'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    sum(ea.Evento_Acciones_Region) as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '13'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    sum(ea.Evento_Acciones_Region) as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '14'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    sum(ea.Evento_Acciones_Region) as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '15'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    sum(ea.Evento_Acciones_Region) as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '16'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    sum(ea.Evento_Acciones_Region) as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '17'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    sum(ea.Evento_Acciones_Region) as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '18'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    sum(ea.Evento_Acciones_Region) as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '19'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    sum(ea.Evento_Acciones_Region) as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '20'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    sum(ea.Evento_Acciones_Region) as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '21'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    sum(ea.Evento_Acciones_Region) as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '22'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    sum(ea.Evento_Acciones_Region) as Tacna,
    0 as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '23'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    sum(ea.Evento_Acciones_Region) as Tumbes,
    0 as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '24'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha)
union all
select
    year(er.Evento_Fecha) as Anio,
    month(er.Evento_Fecha) as Numero,
    (case
        month(er.Evento_Fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end) as Mes,
    0 as Amazonas,
    0 as Ancash,
    0 as Apurimac,
    0 as Arequipa,
    0 as Ayacucho,
    0 as Cajamarca,
    0 as Callao,
    0 as Cusco,
    0 as Huancavelica,
    0 as Huanuco,
    0 as Ica,
    0 as Junin,
    0 as La_Libertad,
    0 as Lambayeque,
    0 as Lima,
    0 as Loreto,
    0 as Madre_de_Dios,
    0 as Moquegua,
    0 as Pasco,
    0 as Piura,
    0 as Puno,
    0 as San_Martin,
    0 as Tacna,
    0 as Tumbes,
    sum(ea.Evento_Acciones_Region) as Ucayali
from
    (evento_acciones ea
join evento_registro er on
    ((er.Evento_Registro_Numero = ea.Evento_Registro_Numero)))
where
    ((er.Evento_Estado_Codigo in (1, 2))
        and (left(er.Evento_Ubigeo,
        2) = '25'))
group by
    year(er.Evento_Fecha),
    month(er.Evento_Fecha);

create view coe_indicador_brigadistas_regionales_regiones_reportar as
select
    coe_indicador_brigadistas_regionales_regiones.Anio as Anio,
    coe_indicador_brigadistas_regionales_regiones.Numero as Numero,
    coe_indicador_brigadistas_regionales_regiones.Mes as Mes,
    sum(coe_indicador_brigadistas_regionales_regiones.Amazonas) as Amazonas,
    sum(coe_indicador_brigadistas_regionales_regiones.Ancash) as Ancash,
    sum(coe_indicador_brigadistas_regionales_regiones.Apurimac) as Apurimac,
    sum(coe_indicador_brigadistas_regionales_regiones.Arequipa) as Arequipa,
    sum(coe_indicador_brigadistas_regionales_regiones.Ayacucho) as Ayacucho,
    sum(coe_indicador_brigadistas_regionales_regiones.Cajamarca) as Cajamarca,
    sum(coe_indicador_brigadistas_regionales_regiones.Callao) as Callao,
    sum(coe_indicador_brigadistas_regionales_regiones.Cusco) as Cusco,
    sum(coe_indicador_brigadistas_regionales_regiones.Huancavelica) as Huancavelica,
    sum(coe_indicador_brigadistas_regionales_regiones.Huanuco) as Huanuco,
    sum(coe_indicador_brigadistas_regionales_regiones.Ica) as Ica,
    sum(coe_indicador_brigadistas_regionales_regiones.Junin) as Junin,
    sum(coe_indicador_brigadistas_regionales_regiones.La_Libertad) as 'La Libertad',
    sum(coe_indicador_brigadistas_regionales_regiones.Lambayeque) as Lambayeque,
    sum(coe_indicador_brigadistas_regionales_regiones.Lima) as Lima,
    sum(coe_indicador_brigadistas_regionales_regiones.Loreto) as Loreto,
    sum(coe_indicador_brigadistas_regionales_regiones.Madre_de_Dios) as 'Madre de Dios',
    sum(coe_indicador_brigadistas_regionales_regiones.Moquegua) as Moquegua,
    sum(coe_indicador_brigadistas_regionales_regiones.Pasco) as Pasco,
    sum(coe_indicador_brigadistas_regionales_regiones.Piura) as Piura,
    sum(coe_indicador_brigadistas_regionales_regiones.Puno) as Puno,
    sum(coe_indicador_brigadistas_regionales_regiones.San_Martin) as 'San Martin',
    sum(coe_indicador_brigadistas_regionales_regiones.Tacna) as Tacna,
    sum(coe_indicador_brigadistas_regionales_regiones.Tumbes) as Tumbes,
    sum(coe_indicador_brigadistas_regionales_regiones.Ucayali) as Ucayali
from
    coe_indicador_brigadistas_regionales_regiones
group by
    coe_indicador_brigadistas_regionales_regiones.Anio,
    coe_indicador_brigadistas_regionales_regiones.Mes;	
	
create view lista_articulos_busqueda as
select
    a.idarticulo as idarticulo,
    a.codigo_siga as codigo_siga,
    a.descripcion as descripcion,
    a.idmarca as idmarca,
    m.descripcion as marca,
    a.modelo as modelo,
    a.dimensiones as dimensiones,
    a.peso as peso,
    a.idcolor as idcolor,
    c.descripcion as color,
    a.idclasificacion as idclasificacion,
    k.descripcion as clasificacion,
    a.idunidadmedida as idunidadmedida,
    u.descripcion as unidadmedida,
    a.imagen as imagen,
    a.ficha as ficha,
    a.fecha_registro as fecha_registro,
    a.usuario_registro as usuario_registro,
    a.fecha_actualizacion as fecha_actualizacion,
    a.usuario_actualizacion as usuario_actualizacion,
    a.observaciones as observaciones,
    (case
        a.estado when '1' then 'Activo'
        when '0' then 'Inactivo'
    end) as estado
from
    ((((inventarios_articulo a
join inventarios_marca m on
    ((a.idmarca = m.idmarca)))
left join inventarios_color c on
    ((c.idcolor = a.idcolor)))
join inventarios_clasificacion k on
    ((a.idclasificacion = k.idclasificacion)))
join inventarios_unidad_medida u on
    ((u.idunidadmedida = a.idunidadmedida)));

create view lista_articulos_busqueda_farmacia as
select
    a.idarticulo as idarticulo,
    a.codigo_siga as codigo_siga,
    a.descripcion as descripcion,
    a.idcategoria as idcategoria,
    c.descripcion as categoria,
    p.idpresentacion as idpresentacion,
    p.descripcion as presentacion,
    v.idviaadministracion as idviaadministracion,
    v.descripcion as via,
    a.idunidadmedida as idunidadmedida,
    u.descripcion as unidad_medida,
    a.imagen as imagen,
    a.ficha as ficha,
    a.fecha_registro as fecha_registro,
    a.usuario_registro as usuario_registro,
    a.fecha_actualizacion as fecha_actualizacion,
    a.usuario_actualizacion as usuario_actualizacion,
    (case
        a.estado when '1' then 'Activo'
        when '0' then 'Inactivo'
    end) as estado
from
    ((((farmacia_articulo a
join farmacia_categoria c on
    ((a.idcategoria = c.idcategoria)))
join farmacia_presentacion p on
    ((p.idpresentacion = a.idpresentacion)))
join farmacia_unidad_medida u on
    ((u.idunidadmedida = a.idunidadmedida)))
join farmacia_via_administracion v on
    ((v.idviaadministracion = p.idviaadministracion)));	

create view lista_articulos_farmacia_busqueda_is as
select
    `a`.`idarticulo` as `idarticulo`,
    `a`.`codigo_siga` as `codigo_siga`,
    `a`.`descripcion` as `descripcion`,
    `a`.`idcategoria` as `idcategoria`,
    `c`.`descripcion` as `categoria`,
    `p`.`idpresentacion` as `idpresentacion`,
    `p`.`descripcion` as `presentacion`,
    `v`.`idviaadministracion` as `idviaadministracion`,
    `v`.`descripcion` as `via`,
    `a`.`idunidadmedida` as `idunidadmedida`,
    `u`.`descripcion` as `unidad_medida`,
    `i`.`numero_lote` as `numero_lote`,
    date_format(`i`.`fecha_vencimiento`, '%d/%m/%Y') as `fecha_vencimiento`,
    (to_days(date_format(`i`.`fecha_vencimiento`, '%Y/%m/%d')) - to_days(now())) as `Dias`,
    `i`.`cantidad` as `cantidad`,
    `i`.`costo_unitario` as `costo_unitario`,
    `g`.`idalmacen` as `idalmacen`,
    `al`.`nombre` as `almacen`,
    (case
        `a`.`estado` when '1' then 'Activo'
        when '0' then 'Inactivo'
    end) as `estado`
from
    (((((((`farmacia_articulo` `a`
join `farmacia_categoria` `c` on
    ((`c`.`idcategoria` = `a`.`idcategoria`)))
join `farmacia_presentacion` `p` on
    ((`p`.`idpresentacion` = `a`.`idpresentacion`)))
join `farmacia_unidad_medida` `u` on
    ((`u`.`idunidadmedida` = `a`.`idunidadmedida`)))
join `farmacia_via_administracion` `v` on
    ((`v`.`idviaadministracion` = `p`.`idviaadministracion`)))
join `farmacia_guia_ingreso_detalle` `i` on
    ((`i`.`idarticulo` = `a`.`idarticulo`)))
join `farmacia_guia_ingreso` `g` on
    ((`g`.`idingreso` = `i`.`idingreso`)))
join `farmacia_almacen` `al` on
    ((`al`.`idalmacen` = `g`.`idalmacen`)))
where
    ((`g`.`estado` = '1')
        and (`i`.`estado` = '1'))
union all
select
    `a`.`idarticulo` as `idarticulo`,
    `a`.`codigo_siga` as `codigo_siga`,
    `a`.`descripcion` as `descripcion`,
    `a`.`idcategoria` as `idcategoria`,
    `c`.`descripcion` as `categoria`,
    `p`.`idpresentacion` as `idpresentacion`,
    `p`.`descripcion` as `presentacion`,
    `v`.`idviaadministracion` as `idviaadministracion`,
    `v`.`descripcion` as `via`,
    `a`.`idunidadmedida` as `idunidadmedida`,
    `u`.`descripcion` as `unidad_medida`,
    `i`.`numero_lote` as `numero_lote`,
    date_format(`i`.`fecha_vencimiento`, '%d/%m/%Y') as `fecha_vencimiento`,
    (to_days(date_format(`i`.`fecha_vencimiento`, '%Y/%m/%d')) - to_days(now())) as `Dias`,
    (`i`.`cantidad` * -(1)) as `i.cantidad * -1`,
    `i`.`costo_unitario` as `costo_unitario`,
    `g`.`idalmacen` as `idalmacen`,
    `al`.`nombre` as `almacen`,
    (case
        `a`.`estado` when '1' then 'Activo'
        when '0' then 'Inactivo'
    end) as `estado`
from
    (((((((`farmacia_articulo` `a`
join `farmacia_categoria` `c` on
    ((`c`.`idcategoria` = `a`.`idcategoria`)))
join `farmacia_presentacion` `p` on
    ((`p`.`idpresentacion` = `a`.`idpresentacion`)))
join `farmacia_unidad_medida` `u` on
    ((`u`.`idunidadmedida` = `a`.`idunidadmedida`)))
join `farmacia_via_administracion` `v` on
    ((`v`.`idviaadministracion` = `p`.`idviaadministracion`)))
join `farmacia_guia_salida_detalle` `i` on
    ((`i`.`idarticulo` = `a`.`idarticulo`)))
join `farmacia_guia_salida` `g` on
    ((`g`.`idsalida` = `i`.`idsalida`)))
join `farmacia_almacen` `al` on
    ((`al`.`idalmacen` = `g`.`idalmacen`)))
where
    ((`g`.`estado` = '1')
        and (`i`.`estado` = '1'));

create view `lista_articulos_inventariados_busqueda_is` as
select
    `r`.`idarticuloregistro` as `ID`,
    `a`.`codigo_siga` as `SIGA`,
    `a`.`idarticulo` as `IdArticulo`,
    `a`.`descripcion` as `Articulo`,
    `m`.`idmarca` as `idmarca`,
    `m`.`descripcion` as `Marca`,
    `a`.`modelo` as `Modelo`,
    `r`.`serie` as `Serie`,
    `r`.`codigo_patrimonial_original` as `PAT01`,
    `r`.`codigo_patrimonial_actual` as `PAT02`,
    (case
        `r`.`condicion` when '1' then 'Operativo'
        when '2' then 'Inoperativo'
    end) as `Condicion`,
    `i`.`unidad` as `Cantidad`,
    `i`.`costo_unitario` as `Costo`,
    `ma`.`idalmacen` as `IDA`,
    `ma`.`nombre` as `Almacen`,
    (case
        `r`.`estado` when '1' then 'Activo'
        when '2' then 'Inactivo'
    end) as `Estado`,
    `a`.`idclasificacion` as `idclasificacion`,
    `cla`.`descripcion` as `Clasificacion`
from
    ((((((`inventarios_articulo_registro` `r`
join `inventarios_articulo` `a` on
    ((`a`.`idarticulo` = `r`.`idarticulo`)))
join `inventarios_marca` `m` on
    ((`m`.`idmarca` = `a`.`idmarca`)))
join `inventarios_guia_ingreso_detalle` `i` on
    ((`i`.`idarticuloregistro` = `r`.`idarticuloregistro`)))
join `inventarios_guia_ingreso` `g` on
    ((`g`.`idingreso` = `i`.`idingreso`)))
join `inventarios_almacen` `ma` on
    ((`ma`.`idalmacen` = `g`.`idalmacen`)))
join `inventarios_clasificacion` `cla` on
    ((`cla`.`idclasificacion` = `a`.`idclasificacion`)))
where
    (`i`.`estado` = '1')
union all
select
    `r`.`idarticuloregistro` as `ID`,
    `a`.`codigo_siga` as `SIGA`,
    `a`.`idarticulo` as `IdArticulo`,
    `a`.`descripcion` as `Articulo`,
    `m`.`idmarca` as `idmarca`,
    `m`.`descripcion` as `Marca`,
    `a`.`modelo` as `Modelo`,
    `r`.`serie` as `Serie`,
    `r`.`codigo_patrimonial_original` as `PAT01`,
    `r`.`codigo_patrimonial_actual` as `PAT02`,
    (case
        `r`.`condicion` when '1' then 'Operativo'
        when '2' then 'Inoperativo'
    end) as `Condicion`,
    `s`.`unidad` as `Cantidad`,
    `s`.`costo_unitario` as `Costo`,
    `ma`.`idalmacen` as `IDA`,
    `ma`.`nombre` as `Almacen`,
    (case
        `r`.`estado` when '1' then 'Activo'
        when '2' then 'Inactivo'
    end) as `Estado`,
    `a`.`idclasificacion` as `idclasificacion`,
    `cla`.`descripcion` as `Clasificacion`
from
    ((((((`inventarios_articulo_registro` `r`
join `inventarios_articulo` `a` on
    ((`a`.`idarticulo` = `r`.`idarticulo`)))
join `inventarios_marca` `m` on
    ((`m`.`idmarca` = `a`.`idmarca`)))
join `inventarios_guia_salida_detalle` `s` on
    ((`s`.`idarticuloregistro` = `r`.`idarticuloregistro`)))
join `inventarios_guia_salida` `g` on
    ((`g`.`idsalida` = `s`.`idsalida`)))
join `inventarios_almacen` `ma` on
    ((`ma`.`idalmacen` = `g`.`idalmacen`)))
join `inventarios_clasificacion` `cla` on
    ((`cla`.`idclasificacion` = `a`.`idclasificacion`)))
where
    (`s`.`estado` = '1');	
	
create view lista_articulos_farmacia_busqueda as
select
    lista_articulos_farmacia_busqueda_is.idarticulo as ID,
    lista_articulos_farmacia_busqueda_is.codigo_siga as SIGA,
    lista_articulos_farmacia_busqueda_is.descripcion as Articulo,
    lista_articulos_farmacia_busqueda_is.idcategoria as idcategoria,
    lista_articulos_farmacia_busqueda_is.categoria as Categoria,
    lista_articulos_farmacia_busqueda_is.idpresentacion as idpresentacion,
    lista_articulos_farmacia_busqueda_is.presentacion as Presentacion,
    lista_articulos_farmacia_busqueda_is.idviaadministracion as idviaadministracion,
    lista_articulos_farmacia_busqueda_is.via as Via,
    lista_articulos_farmacia_busqueda_is.unidad_medida as Unidad,
    lista_articulos_farmacia_busqueda_is.numero_lote as Lote,
    lista_articulos_farmacia_busqueda_is.fecha_vencimiento as Vencimiento,
    sum(lista_articulos_farmacia_busqueda_is.cantidad) as Cantidad,
    lista_articulos_farmacia_busqueda_is.idalmacen as idalmacen,
    lista_articulos_farmacia_busqueda_is.almacen as Almacen,
    lista_articulos_farmacia_busqueda_is.estado as Estado
from
    lista_articulos_farmacia_busqueda_is
group by
    lista_articulos_farmacia_busqueda_is.idarticulo,
    lista_articulos_farmacia_busqueda_is.codigo_siga,
    lista_articulos_farmacia_busqueda_is.descripcion,
    lista_articulos_farmacia_busqueda_is.idcategoria,
    lista_articulos_farmacia_busqueda_is.categoria,
    lista_articulos_farmacia_busqueda_is.idpresentacion,
    lista_articulos_farmacia_busqueda_is.presentacion,
    lista_articulos_farmacia_busqueda_is.idviaadministracion,
    lista_articulos_farmacia_busqueda_is.via,
    lista_articulos_farmacia_busqueda_is.unidad_medida,
    lista_articulos_farmacia_busqueda_is.numero_lote,
    lista_articulos_farmacia_busqueda_is.fecha_vencimiento,
    lista_articulos_farmacia_busqueda_is.idalmacen,
    lista_articulos_farmacia_busqueda_is.almacen,
    lista_articulos_farmacia_busqueda_is.estado
having
    (sum(lista_articulos_farmacia_busqueda_is.cantidad) > 0);

create view lista_articulos_farmacia_busqueda_dashboard as
select
    lista_articulos_farmacia_busqueda_is.idarticulo as idarticulo,
    lista_articulos_farmacia_busqueda_is.codigo_siga as codigo_siga,
    lista_articulos_farmacia_busqueda_is.descripcion as descripcion,
    lista_articulos_farmacia_busqueda_is.idcategoria as idcategoria,
    lista_articulos_farmacia_busqueda_is.categoria as categoria,
    lista_articulos_farmacia_busqueda_is.idpresentacion as idpresentacion,
    lista_articulos_farmacia_busqueda_is.presentacion as presentacion,
    lista_articulos_farmacia_busqueda_is.idviaadministracion as idviaadministracion,
    lista_articulos_farmacia_busqueda_is.via as via,
    lista_articulos_farmacia_busqueda_is.idunidadmedida as idunidadmedida,
    lista_articulos_farmacia_busqueda_is.unidad_medida as unidad_medida,
    lista_articulos_farmacia_busqueda_is.numero_lote as numero_lote,
    lista_articulos_farmacia_busqueda_is.fecha_vencimiento as fecha_vencimiento,
    lista_articulos_farmacia_busqueda_is.Dias as Dias,
    sum(lista_articulos_farmacia_busqueda_is.cantidad) as cantidad,
    lista_articulos_farmacia_busqueda_is.costo_unitario as costo_unitario,
    lista_articulos_farmacia_busqueda_is.idalmacen as idalmacen,
    lista_articulos_farmacia_busqueda_is.almacen as almacen,
    lista_articulos_farmacia_busqueda_is.estado as estado
from
    lista_articulos_farmacia_busqueda_is
group by
    lista_articulos_farmacia_busqueda_is.idarticulo,
    lista_articulos_farmacia_busqueda_is.codigo_siga,
    lista_articulos_farmacia_busqueda_is.descripcion,
    lista_articulos_farmacia_busqueda_is.idcategoria,
    lista_articulos_farmacia_busqueda_is.categoria,
    lista_articulos_farmacia_busqueda_is.idpresentacion,
    lista_articulos_farmacia_busqueda_is.presentacion,
    lista_articulos_farmacia_busqueda_is.idviaadministracion,
    lista_articulos_farmacia_busqueda_is.via,
    lista_articulos_farmacia_busqueda_is.idunidadmedida,
    lista_articulos_farmacia_busqueda_is.unidad_medida,
    lista_articulos_farmacia_busqueda_is.numero_lote,
    lista_articulos_farmacia_busqueda_is.fecha_vencimiento,
    lista_articulos_farmacia_busqueda_is.Dias,
    lista_articulos_farmacia_busqueda_is.costo_unitario,
    lista_articulos_farmacia_busqueda_is.idalmacen,
    lista_articulos_farmacia_busqueda_is.almacen,
    lista_articulos_farmacia_busqueda_is.estado;

create view lista_articulos_farmacia_detalle_guia_salida as
select
    g.idsalida as IdSalida,
    g.anio_ejecucion as Anio,
    g.numero_guia as NumeroGuia,
    date_format(g.fecha_emision, '%d/%m/%Y') as Fecha_Guia,
    date_format(g.fecha_salida, '%d/%m/%Y') as Fecha_Salida,
    g.idtipodesplazamiento as idtipodesplazamiento,
    t.descripcion as Tipo_Desplazamiento,
    g.id_renipress as id_renipress,
    g.dni_receptor as dni_receptor,
    g.nombre_receptor as nombre_receptor,
    g.observaciones as observaciones,
    g.salida_file as salida_file,
    a.idarticulo as idarticulo,
    a.codigo_siga as codigo_siga,
    a.descripcion as descripcion,
    a.idcategoria as idcategoria,
    c.descripcion as categoria,
    p.idpresentacion as idpresentacion,
    p.descripcion as presentacion,
    v.idviaadministracion as idviaadministracion,
    v.descripcion as via,
    a.idunidadmedida as idunidadmedida,
    u.descripcion as unidad_medida,
    d.numero_lote as numero_lote,
    date_format(d.fecha_vencimiento, '%d/%m/%Y') as fecha_vencimiento,
    d.cantidad as cantidad,
    d.costo_unitario as costo_unitario,
    d.caja as caja,
    g.idalmacen as idalmacen,
    al.nombre as almacen,
    (case
        a.estado when '1' then 'Activo'
        when '0' then 'Inactivo'
    end) as estado
from
    ((((((((farmacia_guia_salida g
join farmacia_guia_salida_detalle d on
    ((d.idsalida = g.idsalida)))
join farmacia_tipo_desplazamiento t on
    ((g.idtipodesplazamiento = t.idtipodesplazamiento)))
join farmacia_articulo a on
    ((a.idarticulo = d.idarticulo)))
join farmacia_almacen al on
    ((al.idalmacen = g.idalmacen)))
join farmacia_categoria c on
    ((c.idcategoria = a.idcategoria)))
join farmacia_presentacion p on
    ((p.idpresentacion = a.idpresentacion)))
join farmacia_unidad_medida u on
    ((u.idunidadmedida = a.idunidadmedida)))
join farmacia_via_administracion v on
    ((v.idviaadministracion = p.idviaadministracion)));
	
create view lista_articulos_farmacia_inventario as
select
    lista_articulos_farmacia_busqueda_dashboard.idarticulo as ID,
    lista_articulos_farmacia_busqueda_dashboard.codigo_siga as SIGA,
    lista_articulos_farmacia_busqueda_dashboard.descripcion as Articulo,
    lista_articulos_farmacia_busqueda_dashboard.idcategoria as idcategoria,
    lista_articulos_farmacia_busqueda_dashboard.categoria as Categoria,
    lista_articulos_farmacia_busqueda_dashboard.idpresentacion as idpresentacion,
    lista_articulos_farmacia_busqueda_dashboard.presentacion as Presentacion,
    lista_articulos_farmacia_busqueda_dashboard.idviaadministracion as idviaadministracion,
    lista_articulos_farmacia_busqueda_dashboard.via as Via,
    lista_articulos_farmacia_busqueda_dashboard.unidad_medida as Und_Med,
    lista_articulos_farmacia_busqueda_dashboard.numero_lote as Lote,
    lista_articulos_farmacia_busqueda_dashboard.fecha_vencimiento as Vencimiento,
    if((lista_articulos_farmacia_busqueda_dashboard.Dias < 0),
    0,
    lista_articulos_farmacia_busqueda_dashboard.Dias) as Dias,
    sum(lista_articulos_farmacia_busqueda_dashboard.cantidad) as Stock,
    lista_articulos_farmacia_busqueda_dashboard.idalmacen as idalmacen,
    lista_articulos_farmacia_busqueda_dashboard.almacen as Almacen
from
    lista_articulos_farmacia_busqueda_dashboard
group by
    lista_articulos_farmacia_busqueda_dashboard.idarticulo,
    lista_articulos_farmacia_busqueda_dashboard.codigo_siga,
    lista_articulos_farmacia_busqueda_dashboard.descripcion,
    lista_articulos_farmacia_busqueda_dashboard.idcategoria,
    lista_articulos_farmacia_busqueda_dashboard.categoria,
    lista_articulos_farmacia_busqueda_dashboard.idpresentacion,
    lista_articulos_farmacia_busqueda_dashboard.presentacion,
    lista_articulos_farmacia_busqueda_dashboard.idviaadministracion,
    lista_articulos_farmacia_busqueda_dashboard.via,
    lista_articulos_farmacia_busqueda_dashboard.unidad_medida,
    lista_articulos_farmacia_busqueda_dashboard.numero_lote,
    lista_articulos_farmacia_busqueda_dashboard.fecha_vencimiento,
    lista_articulos_farmacia_busqueda_dashboard.Dias,
    lista_articulos_farmacia_busqueda_dashboard.idalmacen,
    lista_articulos_farmacia_busqueda_dashboard.almacen;

create view lista_articulos_farmacia_inventario_final as
select
    lista_articulos_farmacia_inventario.ID as ID,
    lista_articulos_farmacia_inventario.SIGA as SIGA,
    lista_articulos_farmacia_inventario.Articulo as Articulo,
    lista_articulos_farmacia_inventario.idcategoria as IdCategoria,
    lista_articulos_farmacia_inventario.Categoria as Categoria,
    lista_articulos_farmacia_inventario.idpresentacion as IdPresentacion,
    lista_articulos_farmacia_inventario.Presentacion as Presentacion,
    lista_articulos_farmacia_inventario.idviaadministracion as IdViaAdministracion,
    lista_articulos_farmacia_inventario.Via as Via,
    lista_articulos_farmacia_inventario.Und_Med as Und_Med,
    lista_articulos_farmacia_inventario.Lote as Lote,
    lista_articulos_farmacia_inventario.Vencimiento as Vencimiento,
    lista_articulos_farmacia_inventario.Stock as Stock,
    lista_articulos_farmacia_inventario.idalmacen as IdAlmacen,
    lista_articulos_farmacia_inventario.Almacen as Almacen,
    (case
        when (lista_articulos_farmacia_inventario.Dias = 0) then '1'
        when ((lista_articulos_farmacia_inventario.Dias >= 1)
        and (lista_articulos_farmacia_inventario.Dias <= 60)) then '2'
        when ((lista_articulos_farmacia_inventario.Dias >= 61)
        and (lista_articulos_farmacia_inventario.Dias <= 180)) then '3'
        else '4'
    end) as IdEstado,
    (case
        when (lista_articulos_farmacia_inventario.Dias = 0) then 'Vencido'
        when ((lista_articulos_farmacia_inventario.Dias >= 1)
        and (lista_articulos_farmacia_inventario.Dias <= 60)) then 'Por Vencer'
        when ((lista_articulos_farmacia_inventario.Dias >= 61)
        and (lista_articulos_farmacia_inventario.Dias <= 180)) then 'Riesgo de Vencimiento'
        else 'Sin Riesgo'
    end) as Estado
from
    lista_articulos_farmacia_inventario;

create view lista_articulos_farmacias_busqueda_dashboard_new as
select
    b.idarticulo as IdArticulo,
    b.descripcion as Articulo,
    b.via as Via,
    b.presentacion as Presentacion,
    sum(b.cantidad) as Cantidad,
    b.estado as Estado,
    a.imagen as imagen,
    a.ficha as ficha,
    b.idcategoria as IdCategoria,
    b.categoria as Categoria
from
    (lista_articulos_farmacia_busqueda_is b
join farmacia_articulo a on
    ((a.idarticulo = b.idarticulo)))
group by
    b.idarticulo,
    b.descripcion,
    b.via,
    b.categoria,
    b.estado,
    a.imagen,
    a.ficha,
    b.idcategoria,
    b.categoria;

create view lista_articulos_general as
select
    a.idarticulo as idarticulo,
    a.codigo_siga as codigo_siga,
    a.descripcion as descripcion,
    a.idmarca as idmarca,
    m.descripcion as marca,
    a.modelo as modelo,
    a.dimensiones as dimensiones,
    a.peso as peso,
    a.idcolor as idcolor,
    c.descripcion as color,
    a.idclasificacion as idclasificacion,
    k.descripcion as clasificacion,
    a.idunidadmedida as idunidadmedida,
    u.descripcion as unidadmedida,
    a.imagen as imagen,
    a.ficha as ficha,
    a.fecha_registro as fecha_registro,
    a.usuario_registro as usuario_registro,
    a.fecha_actualizacion as fecha_actualizacion,
    a.usuario_actualizacion as usuario_actualizacion,
    a.observaciones as observaciones,
    (case
        a.estado when '1' then 'Activo'
        when '0' then 'Inactivo'
    end) as estado
from
    ((((inventarios_articulo a
join inventarios_marca m on
    ((a.idmarca = m.idmarca)))
left join inventarios_color c on
    ((c.idcolor = a.idcolor)))
join inventarios_clasificacion k on
    ((a.idclasificacion = k.idclasificacion)))
join inventarios_unidad_medida u on
    ((u.idunidadmedida = a.idunidadmedida)));

create view lista_articulos_inventariados as
select
    i.idarticuloregistro as IdInventario,
    a.idarticulo as IdArticulo,
    a.codigo_siga as SIGA,
    a.descripcion as Descripcion,
    a.marca as Marca,
    a.modelo as Modelo,
    i.serie as Serie,
    a.clasificacion as Clasificacion,
    i.codigo_patrimonial_original as Barra01,
    i.codigo_patrimonial_actual as Barra02,
    ifnull(date_format(i.fecha_registro, '%d/%m/%Y'), '00/00/0000') as Registro,
    i.costo_inicial as Costo,
    i.orden as Orden,
    i.pecosa as Pecosa,
    i.codigo_activo as SBN,
    i.clasificador as Clasificador,
    i.observaciones as Observaciones,
    i.caracteristicas as Caracteristicas,
    ifnull(date_format(i.fecha_compra, '%d/%m/%Y'), '00/00/0000') as Compra,
    ifnull(i.anio_fabricacion, '0000') as Fabricacion,
    ifnull(i.codigo_digerd, 'N/D') as Interno,
    (case
        i.subcomponentes when '1' then 'SI'
        when 0 then 'NO'
    end) as Componentes,
    (case
        i.condicion when '1' then 'Operativo'
        when '2' then 'Inoperativo'
    end) as Condicion,
    (case
        i.estado when '1' then 'Activo'
        when '2' then 'Inactivo'
    end) as Estado
from
    (inventarios_articulo_registro i
join lista_articulos_general a on
    ((i.idarticulo = a.idarticulo)));

create view lista_articulos_inventariados_busqueda as
select
    lista_articulos_inventariados_busqueda_is.ID as ID,
    lista_articulos_inventariados_busqueda_is.IdArticulo as IdArticulo,
    lista_articulos_inventariados_busqueda_is.Articulo as Articulo,
    lista_articulos_inventariados_busqueda_is.Marca as Marca,
    lista_articulos_inventariados_busqueda_is.Modelo as Modelo,
    lista_articulos_inventariados_busqueda_is.Serie as Serie,
    lista_articulos_inventariados_busqueda_is.PAT01 as PAT01,
    lista_articulos_inventariados_busqueda_is.PAT02 as PAT02,
    lista_articulos_inventariados_busqueda_is.Condicion as Condicion,
    sum(lista_articulos_inventariados_busqueda_is.Cantidad) as Cantidad,
    lista_articulos_inventariados_busqueda_is.Costo as Costo,
    lista_articulos_inventariados_busqueda_is.IDA as IDA,
    lista_articulos_inventariados_busqueda_is.Almacen as Almacen,
    lista_articulos_inventariados_busqueda_is.Estado as Estado,
    lista_articulos_inventariados_busqueda_is.idclasificacion as IdClasificacion,
    lista_articulos_inventariados_busqueda_is.Clasificacion as Clasificacion
from
    lista_articulos_inventariados_busqueda_is
group by
    lista_articulos_inventariados_busqueda_is.ID,
    lista_articulos_inventariados_busqueda_is.IdArticulo,
    lista_articulos_inventariados_busqueda_is.Articulo,
    lista_articulos_inventariados_busqueda_is.Marca,
    lista_articulos_inventariados_busqueda_is.Modelo,
    lista_articulos_inventariados_busqueda_is.Serie,
    lista_articulos_inventariados_busqueda_is.PAT01,
    lista_articulos_inventariados_busqueda_is.PAT02,
    lista_articulos_inventariados_busqueda_is.Condicion,
    lista_articulos_inventariados_busqueda_is.Costo,
    lista_articulos_inventariados_busqueda_is.IDA,
    lista_articulos_inventariados_busqueda_is.Almacen,
    lista_articulos_inventariados_busqueda_is.Estado,
    lista_articulos_inventariados_busqueda_is.idclasificacion,
    lista_articulos_inventariados_busqueda_is.Clasificacion
having
    (sum(lista_articulos_inventariados_busqueda_is.Cantidad) > 0);

create view lista_articulos_inventariados_busqueda_dashboard as
select
    b.ID as ID,
    b.IdArticulo as IdArticulo,
    b.Articulo as Articulo,
    b.idmarca as idmarca,
    b.Marca as Marca,
    b.Modelo as Modelo,
    b.Serie as Serie,
    b.PAT01 as PAT01,
    b.PAT02 as PAT02,
    b.Condicion as Condicion,
    sum(b.Cantidad) as Cantidad,
    b.Costo as Costo,
    b.IDA as IDA,
    b.Almacen as Almacen,
    b.Estado as Estado,
    a.imagen as imagen,
    a.ficha as ficha,
    b.idclasificacion as IdClasificacion,
    b.Clasificacion as Clasificacion
from
    (lista_articulos_inventariados_busqueda_is b
join inventarios_articulo a on
    ((a.idarticulo = b.IdArticulo)))
group by
    b.ID,
    b.IdArticulo,
    b.Articulo,
    b.idmarca,
    b.Marca,
    b.Modelo,
    b.Serie,
    b.PAT01,
    b.PAT02,
    b.Condicion,
    b.Costo,
    b.IDA,
    b.Almacen,
    b.Estado,
    a.imagen,
    a.ficha,
    b.idclasificacion,
    b.Clasificacion;

create view lista_articulos_inventariados_busqueda_dashboard_new as
select
    b.IdArticulo as IdArticulo,
    b.Articulo as Articulo,
    b.Marca as Marca,
    b.Modelo as Modelo,
    sum(b.Cantidad) as Cantidad,
    b.Costo as Costo,
    b.Estado as Estado,
    a.imagen as imagen,
    a.ficha as ficha,
    b.idclasificacion as IdClasificacion,
    b.Clasificacion as Clasificacion
from
    (lista_articulos_inventariados_busqueda_is b
join inventarios_articulo a on
    ((a.idarticulo = b.IdArticulo)))
group by
    b.IdArticulo,
    b.Articulo,
    b.Marca,
    b.Modelo,
    b.Condicion,
    b.Costo,
    b.Estado,
    a.imagen,
    a.ficha,
    b.idclasificacion,
    b.Clasificacion;

create view lista_articulos_inventariados_detalle_guia_salida as
select
    g.idsalida as IdSalida,
    g.anio_ejecucion as Anio,
    g.numero_guia as NumeroGuia,
    date_format(g.fecha_emision, '%d/%m/%Y') as Fecha_Guia,
    date_format(g.fecha_salida, '%d/%m/%Y') as Fecha_Salida,
    g.idtipodesplazamiento as idtipodesplazamiento,
    d.descripcion as Tipo_Desplazamiento,
    g.id_renipress as id_renipress,
    g.dni_receptor as dni_receptor,
    g.nombre_receptor as nombre_receptor,
    g.observaciones as observaciones,
    g.salida_file as salida_file,
    r.idarticuloregistro as IDArticuloRegistro,
    a.codigo_siga as SIGA,
    a.idarticulo as IdArticulo,
    a.descripcion as Articulo,
    m.descripcion as Marca,
    a.modelo as Modelo,
    r.serie as Serie,
    r.codigo_patrimonial_original as PAT01,
    r.codigo_patrimonial_actual as PAT02,
    (case
        r.condicion when '1' then 'Operativo'
        when '2' then 'Inoperativo'
    end) as Condicion,
    s.unidad as Cantidad,
    s.costo_unitario as Costo,
    ma.idalmacen as IDA,
    ma.nombre as Almacen,
    (case
        g.estado when '1' then 'Activo'
        when '2' then 'Inactivo'
    end) as Estado
from
    ((((((inventarios_articulo_registro r
join inventarios_articulo a on
    ((a.idarticulo = r.idarticulo)))
join inventarios_marca m on
    ((m.idmarca = a.idmarca)))
join inventarios_guia_salida_detalle s on
    ((s.idarticuloregistro = r.idarticuloregistro)))
join inventarios_guia_salida g on
    ((g.idsalida = s.idsalida)))
join inventarios_almacen ma on
    ((ma.idalmacen = g.idalmacen)))
join inventarios_tipo_desplazamiento d on
    ((g.idtipodesplazamiento = d.idtipodesplazamiento)));
		
create view lista_articulos_ubicacion_pre as
select
    inventarios_articulo_ubicacion.idoperacion as idoperacion,
    inventarios_articulo_ubicacion.idarticuloregistro as idarticuloregistro,
    inventarios_articulo_ubicacion.ubigeo as ubigeo,
    inventarios_articulo_ubicacion.coordenadas as coordenadas,
    inventarios_articulo_ubicacion.estado as estado
from
    inventarios_articulo_ubicacion
where
    inventarios_articulo_ubicacion.idoperacion in (
    select
        max(inventarios_articulo_ubicacion.idoperacion)
    from
        inventarios_articulo_ubicacion
    group by
        inventarios_articulo_ubicacion.idarticuloregistro);

create view lista_articulos_ubicacion as
select
    max(lista.idoperacion) as IdOperacion,
    lista.idarticuloregistro as IdInventario,
    inventario.IdArticulo as IdArticulo,
    inventario.SIGA as SIGA,
    inventario.Descripcion as Descripcion,
    inventario.Marca as Marca,
    inventario.Modelo as Modelo,
    inventario.Serie as Serie,
    inventario.Clasificacion as Clasificacion,
    inventario.Barra01 as Barra01,
    inventario.Barra02 as Barra02,
    inventario.SBN as SBN,
    inventario.Clasificador as Clasificador,
    inventario.Condicion as Condicion,
    lista.ubigeo as Ubigeo,
    lista.coordenadas as Coordenadas,
    region.Codigo_Departamento as Codigo_Departamento,
    region.Nombre as Region,
    provincia.Codigo_Provincia as Codigo_Provincia,
    provincia.Nombre as Provincia,
    distrito.Codigo_Distrito as Codigo_Distrito,
    distrito.Nombre as Distrito
from
    ((((lista_articulos_ubicacion_pre lista
join ubigeo region on
    (((region.Codigo_Departamento = ifnull(left(lista.ubigeo, 2), '00'))
        and (region.Codigo_Provincia = '00')
            and (region.Codigo_Distrito = '00'))))
join ubigeo provincia on
    (((provincia.Codigo_Departamento = ifnull(left(lista.ubigeo, 2), '00'))
        and (provincia.Codigo_Provincia = ifnull(substr(lista.ubigeo, 3, 2), '00'))
            and (provincia.Codigo_Distrito = '00'))))
join ubigeo distrito on
    (((distrito.Codigo_Departamento = ifnull(left(lista.ubigeo, 2), '00'))
        and (distrito.Codigo_Provincia = ifnull(substr(lista.ubigeo, 3, 2), '00'))
            and (distrito.Codigo_Distrito = ifnull(right(lista.ubigeo, 2), '00')))))
join lista_articulos_inventariados inventario on
    ((inventario.IdInventario = lista.idarticuloregistro)))
where
    (lista.estado = '1')
group by
    lista.idarticuloregistro;

create view lista_ingresos_detalle_ubicacion as
select
    ingreso.idingreso as ID,
    ingreso.anio_ejecucion as Anio,
    right(concat('0000', ingreso.numero_guia),
    4) as Guia,
    date_format(ingreso.fecha_emision, '%d/%m/%Y') as Fecha_Guia,
    ingreso.idalmacen as IdAlmacen,
    almacen.nombre as Almacen,
    ifnull(almacen.ubigeo, '000000') as Ubigeo,
    ifnull(left(almacen.ubigeo, 2), '00') as Codigo_Region,
    region.Nombre as Region,
    ifnull(substr(almacen.ubigeo, 3, 2), '00') as Codigo_Provincia,
    provincia.Nombre as Provincia,
    ifnull(right(almacen.ubigeo, 2), '00') as Codigo_Distrito,
    distrito.Nombre as Distrito,
    ifnull(date_format(ingreso.fecha_ingreso, '%d/%m/%Y'), '00/00/0000') as Fecha_Ingreso,
    (case
        ingreso.estado when '1' then 'Activo'
        when '0' then 'Inactivo'
    end) as Estado,
    detalle.iddetalle as IDD,
    detalle.idingreso as IdIngreso,
    lista.IdInventario as IdInventario,
    lista.SIGA as SIGA,
    lista.Descripcion as Descripcion,
    lista.Marca as Marca,
    lista.Modelo as Modelo,
    lista.Serie as Serie,
    lista.Clasificacion as Clasificacion,
    lista.Barra01 as Barra01,
    lista.Barra02 as Barra02,
    lista.SBN as SBN,
    lista.Clasificador as Clasificador,
    lista.Condicion as Condicion,
    detalle.unidad as Cantidad
from
    ((((((inventarios_guia_ingreso_detalle detalle
join lista_articulos_inventariados lista on
    ((lista.IdInventario = detalle.idarticuloregistro)))
join inventarios_guia_ingreso ingreso on
    ((ingreso.idingreso = detalle.idingreso)))
join inventarios_almacen almacen on
    ((almacen.idalmacen = ingreso.idalmacen)))
join ubigeo region on
    (((region.Codigo_Departamento = ifnull(left(almacen.ubigeo, 2), '00'))
        and (region.Codigo_Provincia = '00')
            and (region.Codigo_Distrito = '00'))))
join ubigeo provincia on
    (((provincia.Codigo_Departamento = ifnull(left(almacen.ubigeo, 2), '00'))
        and (provincia.Codigo_Provincia = ifnull(substr(almacen.ubigeo, 3, 2), '00'))
            and (provincia.Codigo_Distrito = '00'))))
join ubigeo distrito on
    (((distrito.Codigo_Departamento = ifnull(left(almacen.ubigeo, 2), '00'))
        and (distrito.Codigo_Provincia = ifnull(substr(almacen.ubigeo, 3, 2), '00'))
            and (distrito.Codigo_Distrito = ifnull(right(almacen.ubigeo, 2), '00')))));
			
create view lista_salidas_detalle_ubicacion as
select
    salida.idsalida as ID,
    salida.anio_ejecucion as Anio,
    right(concat('0000', salida.numero_guia),
    4) as Guia,
    date_format(salida.fecha_emision, '%d/%m/%Y') as Fecha_Guia,
    '0' as IdAlmacen,
    '[N/A]' as Almacen,
    ifnull(salida.ubigeo_sireed, '000000') as Ubigeo,
    ifnull(left(salida.ubigeo_sireed, 2), '00') as Codigo_Region,
    region.Nombre as Region,
    ifnull(substr(salida.ubigeo_sireed, 3, 2), '00') as Codigo_Provincia,
    provincia.Nombre as Provincia,
    ifnull(right(salida.ubigeo_sireed, 2), '00') as Codigo_Distrito,
    distrito.Nombre as Distrito,
    ifnull(date_format(salida.fecha_salida, '%d/%m/%Y'), '00/00/0000') as Fecha_Salida,
    (case
        salida.estado when '1' then 'Activo'
        when '0' then 'Inactivo'
    end) as Estado,
    detalle.iddetalle as IDD,
    detalle.idsalida as IdSalida,
    lista.IdInventario as IdInventario,
    lista.SIGA as SIGA,
    lista.Descripcion as Descripcion,
    lista.Marca as Marca,
    lista.Modelo as Modelo,
    lista.Serie as Serie,
    lista.Clasificacion as Clasificacion,
    lista.Barra01 as Barra01,
    lista.Barra02 as Barra02,
    lista.SBN as SBN,
    lista.Clasificador as Clasificador,
    lista.Condicion as Condicion,
    detalle.unidad as Cantidad
from
    (((((inventarios_guia_salida_detalle detalle
join lista_articulos_inventariados lista on
    ((lista.IdInventario = detalle.idarticuloregistro)))
join inventarios_guia_salida salida on
    ((salida.idsalida = detalle.idsalida)))
join ubigeo region on
    (((region.Codigo_Departamento = ifnull(left(salida.ubigeo_sireed, 2), '00'))
        and (region.Codigo_Provincia = '00')
            and (region.Codigo_Distrito = '00'))))
join ubigeo provincia on
    (((provincia.Codigo_Departamento = ifnull(left(salida.ubigeo_sireed, 2), '00'))
        and (provincia.Codigo_Provincia = ifnull(substr(salida.ubigeo_sireed, 3, 2), '00'))
            and (provincia.Codigo_Distrito = '00'))))
join ubigeo distrito on
    (((distrito.Codigo_Departamento = ifnull(left(salida.ubigeo_sireed, 2), '00'))
        and (distrito.Codigo_Provincia = ifnull(substr(salida.ubigeo_sireed, 3, 2), '00'))
            and (distrito.Codigo_Distrito = ifnull(right(salida.ubigeo_sireed, 2), '00')))));				
	
SET FOREIGN_KEY_CHECKS = 1;
