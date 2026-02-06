import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tmdb/core/services/movie_service.dart';
import 'package:flutter_tmdb/features/movies_list_popular/bloc/movies_list_popular_bloc.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  late MoviesListPopularBloc moviesListPopularBloc;

  @override
  void initState() {
    super.initState();
    moviesListPopularBloc = MoviesListPopularBloc(MovieService())
      ..add(MovieListPopularFetchAllEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Películar populares')),
      body: BlocBuilder<MoviesListPopularBloc, MoviesListPopularState>(
        bloc: moviesListPopularBloc,
        builder: (context, state) {
          if (state is MoviesListPopularLoading) {
            return Center(child: CircularProgressIndicator(),);
          } else if (state is MoviesListPopularSuccess) {
            return SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: state.movies.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 200,
                    height: 200,
                    child: Text(state.movies[index].title),
                  );
                },
                scrollDirection: Axis.horizontal
              ),
            );
          } else if (state is MoviesListPopularError) {
            return Center(child: Text(state.message));
          }
          return Center(child: CircularProgressIndicator(),);
        },
      ),
    );
  }
}
