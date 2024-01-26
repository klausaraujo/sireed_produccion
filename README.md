Proyecto SIREED


Instalación LAMP
================

Actualizar paquetes
apt update

Instalar BD MySQL (cliente y servidor) - versión 5.7 ingresar una contraseña para el usuario root (CONTRASEÑA_CREADA_POR_USTEDES_PARA_EL_ROOT_DE_MYSQL)

```
apt install mysql-server mysql-client
```
Instalar Apache2 HTTP Server
```
apt install apache2
```

Instalar PHP y sus módulos, versión de PHP 7.2
```
apt-get install php php-cgi libapache2-mod-php php-common php-pear php-mbstring php-mysql
```

Configurar Apache2 para utilizar PHP - Línea 2, reinicia el apache2 para implementar los cambios.
```
a2enconf php7.2-cgi
systemctl reload apache2.service
```

Copiar los archivos necesarios para el sistema en la ruta ```/var/www/html/``` o la ruta correspondiente al host
colocar el contenido en la carpeta sireed. ingresar el contenido del repositorio / de no poder crear y/o colocar los archivos, verificar el propietario de la carpeta. Colocar el actual u ortorgar permisos
```
mkdir sireed
```

Otorgar permisos FULL a las siguientes carpetas, ir primero a (la ruta /var/www/html/ puede variar según el host configurado):
```
/var/www/html/sireed/public/images/
chmod 664 eventos/
chmod 664 app/
chmod 664 perfil/

/var/www/html/sireed/public/
chmod 664 tablero/
chmod 664 indicador/
```

Ingresar a consola de mysql; crear un nuevo usuario y darle privilegios
```
mysql -u root -l localhost -p 
CONTRASEÑA_CREADA_POR_USTEDES_PARA_EL_ROOT_DE_MYSQL
```

Crear nombre para la base de datos según sus estandares
```
CREATE DATABASE NOMBRE_BASE_DATOS;
```

Crear usuario según sus estandares y definir una contraseña según sus estandares(CONTRASEÑA_PARA_USUARIO_SIREED)
```
CREATE USER USUARIO_SIREED@'localhost' IDENTIFIED BY CONTRASEÑA_PARA_USUARIO_SIREED;
GRANT ALL PRIVILEGES ON NOMBRE_BASE_DATOS . * TO 'admin_sireed'@'localhost';
```

#Modificar cadena de conexión a la BD

Ir al archivo .env que se encuentra en la ruta /var/www/html/sireed/application/ (la ruta /var/www/html/ puede variar según el host configurado):
Se muestran las siguientes líneas al final de archivo. Se deben editar los siguiente parámetros(Actualmente se muestra un ejemplo en las últimas líneas, que sirvan de guía)

* DB_HOST=Nombre del Host de la BD
* DB_USER=Nombre del usuario de la BD
* DB_PASS=CONTRASEÑA_PARA_USUARIO_SIREED
* DB_NAME=NOMBRE_BASE_DATOS

## Variables actuales del env

* PATH_IMG=RUTA EN EL SERVIDOR DONDE SE GUARDAN LAS IMÁGENES
* PATH_IMG_IMAGEN=RUTA EN EL SERVIDOR DONDE SE GUARDAN LAS IMÁGENES DEL PERFÍL
* PATH_IMG_APP=RUTA EN EL SERVIDOR DONDE SE GUARDAN LAS IMÁGENES DEL APP
* PATH_DOC_TABLERO=RUTA EN EL SERVIDOR DONDE SE GUARDAN LOS ARCHIVOS DEL TABLERO DE CONTROL
* PATH_DOC_INDICADOR=RUTA EN EL SERVIDOR DONDE SE GUARDAN LOS ARCHIVOS DE LOS INDICADORES
* ENCRYPTION_KEY=LLAVE DE ENCRIPTACION
* MAP_KEY=LLAVE DE GOOGLE MAPS
* SECRET_SERVER_KEY=LLAVE SECRETA PARA ENCRIPTAR EL USUARIO
* CORREO_EVENTO_FROM=NOMBRE DEL CORREO QUE ENVIA EMAIL
* CORREO_EVENTO_FROM_BCC=CORREO A QUIEN SE ENVIA EL EVENTO COMO COPIA OCULTA
* CORREO_EVENTO_APP=CORREO_A_QUIEN_SE_LE_ENVIA_EL_EVENTO
* CORREO_EVENTO_ASUNTO=TEXTO_DEL_ASUNTO
* API_RENIEC_URL=API QUE SE USA PARA LA CONSULTA DE LOS CIUDADANOS
* API_RENIEC_TOKEN=TOKEN QUE PERMITE EL USO DEL API DE CONSULTA RENIEC
* PATH_IMG_BRIGADISTA=RUTA EN EL SERVIDOR DONDE SE GUARDAN LAS IMAGENES DE LOS BRIGADISTAS
* PATH_DOC_CERTIFICADO=RUTA EN EL SERVIDOR DONDE SE GUARDAR LOS ARCHIVOS DE CERTTIFICADOS DE BRIGADISTAS
* PATH_DOC_AVISOS=RUTA EN EL SERVIDOR DONDE SE GUARDAN LOS DOCUMENTOS ADJUNTOS DE AVISOS METEROLOGICOS
* PATH_FILESRUTA EN EL SERVIDOR DONDE SE GUARDAN LOS ADCHIVOS ADJUNTOS DE EVENTOS DE EMERGENCIA
* TOKEN_FIREBASE=TOKEN PARA EL USO DEL SERVICIO DE CHAT INTERNO
* PATH_DOC_PLANES=RUTA EN EL SERVIDOR PARA GUARDAR DOCUMENTOS DE PLANES DE CONTINGENCIA
* PATH_DOC_RESOLUCIONES=RUTA EN EL SERVIDOR PARA GUARDAR ARCHIVOS DE RESOLUCIONES DE PLANES DE CONTINGENCIA
* PATH_DOC_INVENTARIOS_FICHAS=RUTA EN EL SERVIDOR PARA GUARDAR LAS FIHAS TECNICAS DE LOS ARTICULOS INVENTARIADOS
* PATH_DOC_INVENTARIOS_FOTOS=RUTA EN EL SERVIDOR PARA GUARDAR LAS FOTOS DE LOS ARTICULOS INVENTARIADOS
* PATH_DOC_INVENTARIOS_INGRESOS=RUTA EN EL SERVIDOR PARA GUARDAR LAS GUIAS DE INGRESO 
* PATH_DOC_INVENTARIOS_SALIDAS=RUTA EN EL SERVIDOR PARA GUARDAR LAS GUIAS DE SALIDA
* PATH_DOC_FARMACIA_FICHAS=RUTA EN EL SERVIDOR PARA GUARDAR LAS FICHAS TECNICAS DE MEDICAMENTOS
* PATH_DOC_FARMACIA_FOTOS=RUTA EN EL SERVIDOR PARA GUARDAR LAS FOTOS DE LOS MEDICAMENTOS INVENTARIADOS
* PATH_DOC_FARMACIA_INGRESOS=RUTA EN EL SERVIDOR PARA GUARDAR LAS GUIAS DE INGRESO DE MEDICAMENTOS
* PATH_DOC_FARMACIA_SALIDAS=RUTA EN EL SERVIDOR PARA GUARDAR LAS GUIAS DE SALIDA DE MEDICAMENTOS
* PATH_DOC_COMISION_BRIGADISTA=RUTA EN EL SERVIDOR PARA GUARDAR LOS DOCUMENTOS DE COMISIONES DE LOS BRIGADISTAS
* PATH_FILES_INVENTARIOS=RUTA EN EL SERVIDOR PARA GUARDAR ACTAS Y ARCHIVOS ADJUNTOS COMO PECOSAS DE ARTICULOS INVENTARIADOS

* `DB_HOST` ="localhost"
* `DB_USER` =USUARIO_SIREED
* `DB_PASS` =CONTRASEÑA_PARA_USUARIO_SIREED
* `DB_NAME` =NOMBRE_BASE_DATOS
* `PATH_IMG` =/var/www/html/sireed/public/images/eventos/

## DAR LOS PERMISOS NECESARIOS A LAS CARPETAS DE IMAGENES Y ARCHIVOS PARA QUE SE PUEDAN CARGAR AL SERVIDOR, SISTEMAS SOLICITO QUE SEA 664, PERO DE FUNCIONAR SE RECOMIENDA 775


##Ejecución de Scripts

* Primero se debe ejecutar el contenido del archivo: 01_bd_sireed_estructura.sql

* Esta acción permitirá crear todas las tablas, vistas, procedimientos y funciones que forman parte de la base datos de proyecto.

* Segundo se debe ejecutar el contenido del archivo: 01_bd_sireed_maestros.sql

* Esta acción permitirá  realizar el insertado de datos de todas las tablas cosideradas maestras.
