import 'package:flutter_valencia_station/core/models/list_station_response.dart';

abstract class ListStationInterface {
  Future<List<Station>> getStation();
}