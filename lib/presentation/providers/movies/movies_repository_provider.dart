//provider de lectura, no va a ser modificado nunca mas
//la data no cambia

import 'package:cinemapedia/infrastructure/datasources/moviedb_datasource.dart';
import 'package:cinemapedia/infrastructure/repositories/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//este repositorio es inmutable
final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImplm( MoviedbDatasource() );
});

