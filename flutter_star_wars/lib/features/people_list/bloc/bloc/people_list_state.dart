part of 'people_list_bloc.dart';

@immutable
sealed class PeopleListState {}

final class PeopleListInitial extends PeopleListState {}

final class PeopleListLoading extends PeopleListState {}

final class PeopleListSuccess extends PeopleListState {
  PeopleListSuccess({
    required this.peopleList
  });
  final List<Person> peopleList;
}

final class PeopleListError extends PeopleListState {
  PeopleListError({
    required this.message
  });
  final String message;
}