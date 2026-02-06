part of 'people_list_popular_bloc.dart';

@immutable
sealed class PeopleListPopularEvent {}

final class PeopleListPopularFetchAllEvent extends PeopleListPopularEvent {}
