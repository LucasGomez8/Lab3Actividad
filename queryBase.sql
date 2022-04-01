CREATE DATABASE ACTIVIDAD
go
USE ACTIVIDAD
go

CREATE TABLE PAIS(
ID BIGINT IDENTITY(1,1) PRIMARY KEY,
NOMBRE VARCHAR(40) NOT NULL
)
go

CREATE TABLE AUTORES(
ID BIGINT IDENTITY(1,1) PRIMARY KEY,
APELLIDO VARCHAR (40) NOT NULL,
NOMBRE VARCHAR(40) NOT NULL,
FNACIMIENTO DATE NOT NULL,
GENDER CHAR CHECK(GENDER='M' OR GENDER ='F' OR GENDER =''),
IDPAIS BIGINT FOREIGN KEY REFERENCES PAIS(ID)
)
go

CREATE TABLE EDITORIALES(
ID BIGINT IDENTITY(1,1) PRIMARY KEY,
NOMBRE VARCHAR(40) NOT NULL
)
go

CREATE table GENEROS(
ID BIGINT IDENTITY(1,1) PRIMARY KEY,
NOM_GENERO varchar(40) not null
)
go

create table IDIOMAS(
ID BIGINT IDENTITY(1,1) PRIMARY KEY,
NOMBRE VARCHAR(40) NOT NULL
)
go

CREATE TABLE LIBROS(
ID BIGINT IDENTITY(1,1) PRIMARY KEY,
TITULO VARCHAR(40) NOT NULL,
IDIDIOMA BIGINT NULL FOREIGN KEY REFERENCES IDIOMAS(ID),
CANTPAGINAS SMALLINT NOT NULL,
ANIO int not null,
IDEDITORIAL BIGINT NULL FOREIGN KEY REFERENCES EDITORIALES(ID)
)
go
create table librosxgeneros(
idlibro bigint foreign key references libros(id),
idgenero bigint foreign key references generos(id),
primary key (idlibro, idgenero)
)
go

create table librosxautores(
idlibro bigint not null foreign key references libros(id),
idautor bigint not null foreign key references  autores(id)
primary key(idlibro,idautor)
)
go

alter table librosxautores
add constraint pk_idlibro Primary key(idlibro)
go

alter table librosxautores
add constraint pk_idautor primary key(idautor)
go
