import 'package:bloc/bloc.dart';
import 'package:flutter_popcorn_tmdb/core/models/movie_list_response.dart';
import 'package:flutter_popcorn_tmdb/core/models/movie_type.dart';
import 'package:flutter_popcorn_tmdb/core/services/movie_list_service.dart';
import 'package:meta/meta.dart';

part 'movie_list_event.dart';
part 'movie_list_state.dart';

class MovieListBloc extends Bloc<MovieListEvent, MovieListState> {
  MovieListBloc(MovieListService movieListService) : super(MovieListInitial()) {
    on<MovieListFetchAll>((event, emit) async {
      emit(MovieListLoading());
      try {
        var apiMovies = await movieListService.getMovies(event.movieType);
        emit(MovieListSuccess(movies: apiMovies));
      } catch(e) {
        emit(MovieListError(message: e.toString()));
      }
    });
  }
}
