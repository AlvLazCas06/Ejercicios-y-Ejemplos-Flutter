part of 'station_list_bloc.dart';

@immutable
sealed class StationListEvent {}

final class StationListFetchAllEvent extends StationListEvent {}
