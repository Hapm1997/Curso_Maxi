/*	1  Obtener las Películas estrenadas en la Década de los '80.
select * from Peliculas where YEAR(FechaEstreno) between 1979 and 1990
*/

/*	2  Obtener los Actores nacidos en la Década de los '70.
select CONCAT(R.Nombre,' ',R.Apellido) as Actor , R.FechaNacimiento,P.Nombre
from Reparto R , Paises P
where YEAR(FechaNacimiento) between 1970 and 1979 
and R.IdNacionalidad = P.Id
*/

/* 3  Obtener las Peliculas que se encuentran en la Plataforma de Disney+.
select X.Titulo
from Peliculas X, [Peliculas.Plataformas] Y 
where X.Id = y.IdPelicula
and y.IdPlataforma = 3
*/

/* 4 Obtener la Cantidad de Películas con Clasificación R. (Considerar usar el Comando LIKE)
select COUNT(c.IdPelicula) as 'Cantidad de peliculas'
from [Peliculas.Clasificaciones] C , Clasificaciones F
where f.Id = C.IdClasificacion 
and F.Descripcion like 'R %'
*/

/* 5 Obtener la Película que mayor duración tiene.
select top 1 Titulo , MinutosDuracion
from Peliculas 
order by MinutosDuracion Desc
*/

/* 6 Obtener las Películas de Categoría 'Superhéroes'
select P.Titulo
from Peliculas P , [Peliculas.Categorias] C , Categorias T
where P.Id = C.IdPelicula
and C.IdCategoria = T.Id
and T.Id = 27
*/

/* 7 Obtener la Cantidad de Actores que trabajaron en la Película 'Los Intocables'.
select  COUNT(R.Id) as 'Total de Actores'
from Peliculas P , [Peliculas.Reparto] R
where P.Id = R.IdPelicula
and R.IdPelicula = 7
*/

/* 8 Obtener los Actores que trabajaron en la Películas 'Los Intocables'.
select CONCAT(R.Nombre,R.Apellido) AS Nombre , S.Nombre , R.FechaNacimiento
from [Peliculas.Reparto] P , Reparto R , Paises S
where P.IdPelicula = 7
and R.Id = P.IdReparto
and R.IdNacionalidad = S.Id
*/

/* 9 Obtener el Total de Películas del Catálogo.
select count(Titulo) as 'Cant. de Peliculas'
from Peliculas
*/

/* 10 Obtener la Lista de Usuarios Inactivos.
select CONCAT(Nombre,Apellido) , Email , FechaCreacion , FotoPerfilURL
from Usuarios
where Activo = 0
*/

/*11 Ingresar el siguiente Film.
--Película: "The Good, the Bad and the Ugly"
--Biografía: "Tres hombres violentos pelean por una caja que alberga 200 000 dólares, la cual fue escondida durante la Guerra Civil. Dado que ninguno puede encontrar la tumba donde está el botín sin la ayuda de los otros dos, deben colaborar, pese a odiarse."
--Duración: 162 minutos
--Fecha de Estreno: 11 de enero de 1968
insert into Peliculas (FechaEstreno,Titulo,MinutosDuracion,Bio)
values (1968-01-11 ,'The Good, the Bad and the Ugly',162,
'Tres hombres violentos pelean por una caja que alberga 200 000 dólares, 
la cual fue escondida durante la Guerra Civil. Dado que ninguno puede encontrar 
la tumba donde está el botín sin la ayuda de los otros dos, deben colaborar, pese a odiarse.')
*/

/*12 En base al Film recientemente agregado al Catálogo, agregárselo como Favorito a Severus Snape.
insert into [Usuarios.Favoritos](IdPelicula,IdUsuario,FechaFavorito)
values (26,4,'2024-10-15')
*/

/*13) Ahora hagamos que esta pelicula se pueda ver en las Plataformas de Netflix(1) y Amazon(2).
insert into [Peliculas.Plataformas](Id,IdPelicula,IdPlataforma,FechaAlta)
values (45,26,2,'2024-10-15')
*/

/*15) La Película de Rocky(3) dejó de estar disponible en la Plataforma de Paramount+(9) el 16 de enero del 2024.
update [Peliculas.Plataformas]set FechaBaja = '2024-01-16'
where id = 5
*/

/*16) Hubo un error al momento de registrar la película de Iron Man(2). El Protagonista no fue Robert Downey Jr.(1), quién interpretó el papel fue Diego Peretti.
--insert into Reparto(Nombre,Apellido,IdNacionalidad,FechaNacimiento,ImagenUrl,Dirige)
--values ('Diego','Peretti',1,'2024-08-01','www.google.com',0)
--UPDATE [Peliculas.Reparto] SET IdReparto= 112 
--where Id = 11
*/


select * from Peliculas X
select * from Media
select * from [Media.Tipos]
select * from [Peliculas.Plataformas]
select * from [Peliculas.Clasificaciones]
select * from [Peliculas.Categorias]
select * from [Peliculas.Reparto]
select * from [Usuarios.Favoritos]
select * from Categorias
select * from Plataformas
select * from Clasificaciones
select * from Reparto
select * from Paises
select * from Usuarios
