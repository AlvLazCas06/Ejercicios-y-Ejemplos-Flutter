part of 'people_list_popular_bloc.dart';

@immutable
sealed class PeopleListPopularState {}

final class PeopleListPopularInitial extends PeopleListPopularState {}

final class PeopleListPopularLoading extends PeopleListPopularState {}

final class PeopleListPopularSuccess extends PeopleListPopularState {
  PeopleListPopularSuccess({
    required this.peopleList
  });
  final List<Person> peopleList;
}

final class PeopleListPopularError extends PeopleListPopularState {
  PeopleListPopularError({
    required this.message
  });
  final String message;
}