import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tmdb/core/services/movie_service.dart';
import 'package:flutter_tmdb/features/movies_list_popular/bloc/movies_list_popular_bloc.dart';

class MovieListPage extends StatefulWidget {
  const MovieListPage({super.key});

  @override
  State<MovieListPage> createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {
  late MoviesListPopularBloc moviesListPopularBloc;

  @override
  void initState() {
    super.initState();
    moviesListPopularBloc = MoviesListPopularBloc(MovieService())
      ..add(MovieListPopularFetchAllEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesListPopularBloc, MoviesListPopularState>(
      bloc: moviesListPopularBloc,
      builder: (context, state) {
        if (state is MoviesListPopularLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is MoviesListPopularSuccess) {
          return SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: state.movies.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsetsGeometry.all(10),
                  child: Column(
                    children: [
                      Text(state.movies[index].title),
                      Image.network('https://image.tmdb.org/t/p/w500' + state.movies[index].posterPath.toString(), scale: 5,)
                    ],
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          );
        } else if (state is MoviesListPopularError) {
          return Center(child: Text(state.message));
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
