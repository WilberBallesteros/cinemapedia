//este va a ser el encargado para hacer las interacciones con theMovieDB
//asi pddemos crear archivos de otras apis o json

import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/domain/datasources/movies_datasource.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:dio/dio.dart';

class MoviedbDatasource extends MoviesDataSource {

  //esto es propio para este datasource de theMovieDB, para otras api sera diferente
  //instalamos el paquete de dio, q es un gestor de peticiones hhtp

    final dio = Dio(BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',    //base pre-cargada o pre-configurada es siempre la misma
      queryParameters: {
        'api_key': Environment.theMovieDbKey, // api_key tal cual tenemos en postman
        'language': 'es-MX'  //language igual q esta en postman
      }
    ));

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async{

    //aqui hacemos la implementacion
    final response = await dio.get('/movie/now_playing'); //Now Playing q viene de la documentacion, muestra 10 o 20 pelis
    final List<Movie> movies = []; //listado de peliculas


    return movies;
  }

}