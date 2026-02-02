import 'dart:convert';

import 'package:flutter_star_wars/core/interfaces/people_interface.dart';
import 'package:flutter_star_wars/core/models/people_list_response.dart';
import 'package:http/http.dart' as http;

class Peopleservice implements PeopleInterface {
  final String urlBase = 'https://swapi.dev/api/people/';

  @override
  Future<List<Person>> getPeople() async {
    var url = Uri.parse(urlBase);
    try {
      var response = await http.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        var peopleResponse = PeopleListResponse.fromJson(
          jsonDecode(response.body)
        );
        return peopleResponse.results;
      } else {
        return [];
      }
    } catch(e) {
      return [];
    }
  }

}