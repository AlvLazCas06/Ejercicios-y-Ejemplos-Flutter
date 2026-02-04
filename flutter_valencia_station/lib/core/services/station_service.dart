import 'dart:convert';

import 'package:flutter_valencia_station/core/interfaces/list_station_interface.dart';
import 'package:flutter_valencia_station/core/models/list_station_response.dart';
import 'package:http/http.dart' as http;

class StationService implements ListStationInterface {
  final String urlBase =
      'https://valencia.opendatasoft.com/api/explore/v2.1/catalog/datasets/aparcaments-bicicletes-aparcamientos-bicicletas/records';

  @override
  Future<List<Station>> getStation() async {
    var url = Uri.parse(urlBase);
    try {
      var response = await http.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        var stationResponse = ListStationResponse.fromJson(
          jsonDecode(response.body),
        );
        return stationResponse.results;
      }
    } catch (e) {
      return [];
    }
    return [];
  }
}
