import 'package:bloc/bloc.dart';
import 'package:flutter_valencia_station/core/models/list_station_response.dart';
import 'package:flutter_valencia_station/core/services/station_service.dart';
import 'package:meta/meta.dart';

part 'station_list_event.dart';
part 'station_list_state.dart';

class StationListBloc extends Bloc<StationListEvent, StationListState> {
  StationListBloc(StationService stationService) : super(StationListInitial()) {
    on<StationListFetchAllEvent>((event, emit) async {
      emit(StationListLoading());
      try {
        var apiStationList = await stationService.getStation();
        emit(StationListSuccess(stationList: apiStationList));
      } catch (e) {
        emit(StationListError(message: e.toString()));
      }
    });
  }
}
