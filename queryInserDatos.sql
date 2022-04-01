use actividad

insert into EDITORIALES(NOMBRE)
values ('Acantilado'),('Alfaguara'),('Aamazonia Editorial'),('Anfora'),('Avon'),('Createspace'),('Crown Publisher'),('Delbolsillo'),('del Nuevo Extremo'),('Dolmen'),('Doubleday Books'),('Ediciones B'),('Ediciones NACE'),('Editorial Sudamericana'),('El Ateneo'),('Feedbooks'),('Grijalbo Mondaro SA'),('Harper Paperbacks'),('Harper Collins'),('Indiana University'),('John Wiley & Sons'),('Mestas Ediciones'),('NAL'),('Planeta'),('Pomaire'),('Raincoast Books'),('RBA'),('Scribner'),('Sergio Adrian Martin'),('Severed Press'),('Signet Classics'),('Sudamericana'),('The Group of Chicago'),('Umbriel'),('University of Mississippi'),('Vergara Editor'),('Wiley-Blackwell'),('Dolmen'),('Doubleday Books'),('Ediciones B'),('Ediciones NACE'),('Editorial Sudamericana'),('El Ateneo'),('Feedbooks'),('Grijalbo Mondaro SA'),('Harper Paperbacks'),('Harper Collins'),('Indiana University'),('John Wiley & Sons'),('Mestas Ediciones'),('NAL'),('Planeta'),('Pomaire'),('Raincoast Books'),('RBA'),('Scribner'),('Sergio Adrian Martin'),('Severed Press'),('Signet Classics'),('Sudamericana'),('The Group of Chicago'),('Umbriel'),('University of Mississippi'),('Vergara Editor'),('Wiley-Blackwell')('Dolmen'),('Doubleday Books'),('Ediciones B'),('Ediciones NACE'),('Editorial Sudamericana'),('El Ateneo'),('Feedbooks'),('Grijalbo Mondaro SA'),('Harper Paperbacks'),('Harper Collins'),('Indiana University'),('John Wiley & Sons'),('Mestas Ediciones'),('NAL'),('Planeta'),('Pomaire'),('Raincoast Books'),('RBA'),('Scribner'),('Sergio Adrian Martin'),('Severed Press'),('Signet Classics'),('Sudamericana'),('The Group of Chicago'),('Umbriel'),('University of Mississippi'),('Vergara Editor'),('Wiley-Blackwell')

insert into IDIOMAS(NOMBRE)
values ('Español'),('Ingles'),('Frances')

insert into PAIS(NOMBRE)
values ('Alemania'),('Argentina'),('Austria'),('Escocia'),('España'),('Estados Unidos'),('Francia'),('India'),('Inglaterra'),('Italia'),('Suecia')

insert into AUTORES(APELLIDO,NOMBRE,FNACIMIENTO,GENDER,IDPAIS)
VALUES ('Arlsanian','Tamar','1846-10-28','f','6'),('Bachman','Richard','1991-06-04','M','6'),('Balmaceda','Daniel','1847-05-23','m','2'),('Bourdain','Anthony','1874-05-02','M','7'),('Bulat','Tomas','1980-08-10','M','2'),('Crichton','Michael','1870-03-27','m','6'),('King','Stephen','1930-04-07','m','6'),('Schreier','Jason','1957-10-27','m','1'),('Walford','Robert','1903-02-27','m','9')

insert into GENEROS(NOM_GENERO)
values ('Ciencia Ficcion'),('Thriller'),('Suspenso'),('Terror'),('Horror'),('Romance'),('Drama'),('Accion'),('Aventura'),('Fantasia')

insert into LIBROS(TITULO,IDIDIOMA,CANTPAGINAS,ANIO,IDEDITORIAL)
values ('Prey','1','507','2002','1'),('El Umbral de la Noche','1','424','1978','10')
