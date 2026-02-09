import 'package:flutter_popcorn_tmdb/core/models/movie_list_response.dart';
import 'package:flutter_popcorn_tmdb/core/models/movie_type.dart';

abstract class MovieListInterface {
  Future<List<Movie>> getMovies(MovieType movieType);
}