part of 'movies_list_popular_bloc.dart';

@immutable
sealed class MoviesListPopularEvent {}

final class MovieListPopularFetchAllEvent extends MoviesListPopularEvent {}