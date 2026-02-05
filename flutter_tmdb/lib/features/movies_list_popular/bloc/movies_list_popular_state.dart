part of 'movies_list_popular_bloc.dart';

@immutable
sealed class MoviesListPopularState {}

final class MoviesListPopularInitial extends MoviesListPopularState {}

final class MoviesListPopularLoading extends MoviesListPopularState {}

final class MoviesListPopularSuccess extends MoviesListPopularState {
  MoviesListPopularSuccess({required this.movies});
  final List<Movie> movies;
}

final class MoviesListPopularError extends MoviesListPopularState {
  MoviesListPopularError({required this.message});
  final String message;
}
