import 'package:flutter_star_wars/core/models/people_list_response.dart';

abstract class PeopleInterface {
  Future<List<Person>> getPeople();
}