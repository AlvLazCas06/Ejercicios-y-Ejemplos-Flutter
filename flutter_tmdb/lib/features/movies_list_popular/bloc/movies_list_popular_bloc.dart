import 'package:bloc/bloc.dart';
import 'package:flutter_tmdb/core/models/movies_list_popular_response.dart';
import 'package:flutter_tmdb/core/services/movie_service.dart';
import 'package:meta/meta.dart';

part 'movies_list_popular_event.dart';
part 'movies_list_popular_state.dart';

class MoviesListPopularBloc extends Bloc<MoviesListPopularEvent, MoviesListPopularState> {
  MoviesListPopularBloc(MovieService movieService) : super(MoviesListPopularInitial()) {
    on<MovieListPopularFetchAllEvent>((event, emit) async {
      emit(MoviesListPopularLoading());
      try {
        var moviesList = await movieService.getList(MovieListType.popular);
        emit(MoviesListPopularSuccess(movies: moviesList));
      } catch (e) {
        emit(MoviesListPopularError(message: e.toString()));
      }
    });
  }
}
