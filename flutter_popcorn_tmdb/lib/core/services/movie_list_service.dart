import 'dart:convert';

import 'package:flutter_popcorn_tmdb/core/interfaces/movie_list_interface.dart';
import 'package:flutter_popcorn_tmdb/core/models/movie_list_response.dart';
import 'package:flutter_popcorn_tmdb/core/models/movie_type.dart';
import 'package:http/http.dart' as http;

class MovieListService implements MovieListInterface {
  final String _urlBase = 'https://api.themoviedb.org/3/movie';
  final String _apiKey =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJlZGU2OWE2MTcyNzVkMzE4Y2ZhYjBhZTc1YzM1ZjFkYSIsIm5iZiI6MTc2MzM2NzczMi4wMjMsInN1YiI6IjY5MWFkYjM0MzM5NWM2N2FjZTZkOTI2ZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.4KgLCAr0wsEn0FjxLGSAubCsQ05uBGafbW0Nm4kkESA';

  @override
  Future<List<Movie>> getMovies(MovieType movieType) async {
    var url = Uri.parse('$_urlBase/${movieType.value}');
    try {
      var response = await http.get(
        url,
        headers: {'Authorization': 'Bearer $_apiKey'},
      );
      if (response.statusCode >= 200 && response.statusCode < 300) {
        var movies = MovieListResponse.fromJson(
          jsonDecode(response.body),
        ).results;
        return movies;
      }
    } catch (e) {
      throw Exception("Error al cargar las películas.");
    }
    return [];
  }
}
