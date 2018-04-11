create user usuario_admin with encrypted password 'paskinel'; //crea usuario
create database segundoexamenbd owner usuario_admin; //crea base de datos
\c segundoexamenbd // conectar con la base de datos

//crear tablas
create table usuarios(
id_usuario serial primary key,
nombre varchar(30) not null,
apaterno varchar(30) not null,
amaterno varchar(30) not null,
usuario varchar(30) not null,
contrasenia varchar(30) not null);
create table autores(
id_autor serial primary key,
nombre varchar(30) not null,
apaterno varchar(30) not null,
amaterno varchar(30) not null,
nacionalidad varchar(30) not null);
create table libros(
id_libro serial primary key,
titulo varchar(30) not null,
id_autor int not null,
anio_publcacion date not null);

//modificar tablas
alter table usuarios_id_usuario_seq owner to usuario_admin;
alter table libros_id_libro_seq owner to usuario_admin;
alter table autores_id_autor_seq owner to usuario_admin;
alter sequence usuarios_id_usuario_seq owner to usuario_admin;
alter sequence libros_id_libro_seq owner to usuario_admin;
alter sequence autores_id_autor_seq owner to usuario_admin;
GRANT insert ON usuarios TO usuario_admin;
GRANT insert ON libros TO usuario_admin;
GRANT insert ON autores TO usuario_admin;
GRANT select ON usuarios TO usuario_admin;
GRANT select ON libros TO usuario_admin;
GRANT select ON autores TO usuario_admin;
nano /etc/postgresql/9.6/main/pg_hba.conf //configuración de conexiones
host segundoexamenbd usuario_admin 127.0.0.1/32 md5 //solicita contraseña






