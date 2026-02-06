import 'dart:convert';

import 'package:flutter_tmdb/core/interfaces/people_list_interface.dart';
import 'package:flutter_tmdb/core/models/people_list_popular_response.dart';
import 'package:http/http.dart' as http;

class PeopleListService implements PeopleListInterface {
  final String apiUrl = 'https://api.themoviedb.org/3/person/popular';
  final String _apiKey =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJlZGU2OWE2MTcyNzVkMzE4Y2ZhYjBhZTc1YzM1ZjFkYSIsIm5iZiI6MTc2MzM2NzczMi4wMjMsInN1YiI6IjY5MWFkYjM0MzM5NWM2N2FjZTZkOTI2ZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.4KgLCAr0wsEn0FjxLGSAubCsQ05uBGafbW0Nm4kkESA';

  @override
  Future<List<Person>> getPopular() async {
    var url = Uri.parse(apiUrl);
    try {
      var response = await http.get(url,
      headers: {
        'Authorization': 'Bearer $_apiKey'
      }
      );
      if (response.statusCode >= 200 && response.statusCode < 300) {
        var peopleList = PeopleListPopularResponse.fromJson(
          jsonDecode(response.body),
        ).results;
        return peopleList;
      } else {
        return [];
      }
    } catch (e) {
      throw Exception("Error al obtener los actores populares");
    }
  }
}
