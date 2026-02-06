import 'dart:convert';

import 'package:flutter_tmdb/core/interfaces/movies_list_interface.dart';
import 'package:flutter_tmdb/core/models/movies_list_popular_response.dart';
import 'package:http/http.dart' as http;

enum MovieListType {
  popular("popular"),
  topRated("top_rated"),
  nowPlaying("now_playing"),
  upcoming("upcoming");

  final String value;
  const MovieListType(this.value);
}

class MovieService implements MoviesListInterface {
  final String _apiBaseUrl = "https://api.themoviedb.org/3/movie";
  final String _apiKey = 'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJlZGU2OWE2MTcyNzVkMzE4Y2ZhYjBhZTc1YzM1ZjFkYSIsIm5iZiI6MTc2MzM2NzczMi4wMjMsInN1YiI6IjY5MWFkYjM0MzM5NWM2N2FjZTZkOTI2ZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.4KgLCAr0wsEn0FjxLGSAubCsQ05uBGafbW0Nm4kkESA';

  @override
  Future<List<Movie>> getList(MovieListType listType) async {
    var response = await http.get(Uri.parse("$_apiBaseUrl/${listType.value}"), headers: {
      'Authorization': 'Bearer $_apiKey'
    });
    try {
      if (response.statusCode >= 200 && response.statusCode < 300) {
        var moviesList = MovieListPopularResponse.fromJson(
          json.decode(response.body),
        ).results;
        return moviesList;
      } else {
        return [];
      }
    } catch (e) {
      throw Exception("Error al obtener las películas populares");
    }
  }
}
