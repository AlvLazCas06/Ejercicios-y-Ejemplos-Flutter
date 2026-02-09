part of 'movie_list_bloc.dart';

@immutable
sealed class MovieListEvent {}

final class MovieListFetchAll extends MovieListEvent {
  final MovieType movieType;

  MovieListFetchAll({required this.movieType});
}
