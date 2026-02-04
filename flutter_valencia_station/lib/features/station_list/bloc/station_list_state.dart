part of 'station_list_bloc.dart';

@immutable
sealed class StationListState {}

final class StationListInitial extends StationListState {}

final class StationListLoading extends StationListState {}

final class StationListSuccess extends StationListState {
  StationListSuccess({
    required this.stationList
  });
  final List<Station> stationList;
}

final class StationListError extends StationListState {
  StationListError({
    required this.message
  });
  final String message;
}