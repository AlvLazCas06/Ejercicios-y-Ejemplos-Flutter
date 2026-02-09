part of 'movie_list_bloc.dart';

@immutable
sealed class MovieListState {}

final class MovieListInitial extends MovieListState {}

final class MovieListLoading extends MovieListState {}

final class MovieListSuccess extends MovieListState {
  final List<Movie> movies;
  MovieListSuccess({required this.movies});
}

final class MovieListError extends MovieListState {
  final String message;
  MovieListError({required this.message});
}
