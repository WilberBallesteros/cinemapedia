//los repositorios son los q van a llamar el datasource
//repository es el q me va a permitir cambiar el datasource
//por ejm quiero movieDB, pelisDB, lo q sea, mi localhost, de donde sea


import 'package:cinemapedia/domain/entities/movie.dart';

abstract class MoviesRepository {
 //peliculas actualmente en cartelera
 Future<List<Movie>> getNowPlaying({ int page = 1 });
}