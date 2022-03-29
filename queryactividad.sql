CREATE DATABASE NORMALIZACION	
go

USE NORMALIZACION
GO

CREATE TABLE IDIOMAS(
	IDIDIOMA bigint identity(1,1) primary key,
	Idioma varchar(40) null
)
GO

CREATE TABLE AUTORES(
IDAUTOR bigint identity (1,1) primary key,
Nombre VARCHAR(40) null
)
GO

CREATE TABLE Editoriales(
IDEDITORIAL bigint identity(1,1) primary key,
nombre varchar(40) null
)
GO

CREATE TABLE LIBROSXAUTORES(
IDLIBRO BIGINT,
IDAUTOR BIGINT,
)
GO

alter table librosxautores
add constraint pk_librosxautores primary key(IDLIbrO,idautor)
go

alter table librosxautores
ADD constraint fk_idlibros foreign key (idlibro) references Libros(ID)
go

alter table librosxautores
ADD CONSTRAINT FK_idautor foreign key (idautor) references Autores(IDAutor)
GO

Create table LIBROS(
ID BIGINT identity (1,1) primary key,
titulo varchar(40) not null unique,
cantPaginas int not null check(cantPaginas>0),
IDIdioma bigint null foreign key references IDIOMAS(IDIDIOMA),
)

alter table libros
drop constraint FK__LIBROS__IDGENERO__44FF419A

alter table libros
drop column idgenero

create table generos_x_libros(
IDLIBRO BIGINT NOT NULL FOREIGN KEY REFERENCES LIBROS(ID),
IDGENERO BIGINT NOT NULL FOREIGN KEY REFERENCES GENEROS(IDGENERO),
PRIMARY KEY (IDLIBRO,IDGENERO)
)