//el objetivo de esta clase es q sea abstracta

//voy a definir como lucen los origenes de datos q pueden traer peliculas
//pueden ser movieDB, NetflixDB, cualquier lado, de una API propia, de un Json
//va definir los metodos q voy a utilizar

import 'package:cinemapedia/domain/entities/movie.dart';

abstract class MovieDataSource {
 //peliculas actualmente en cartelera
 Future<List<Movie>> getNowPlaying({ int page = 1 });
}