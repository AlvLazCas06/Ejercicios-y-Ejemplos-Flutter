import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_popcorn_tmdb/core/models/movie_type.dart';
import 'package:flutter_popcorn_tmdb/core/services/movie_list_service.dart';
import 'package:flutter_popcorn_tmdb/features/movie_list/bloc/movie_list_bloc.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  late MovieListBloc movieListBloc;
  bool popularSelect = true;

  @override
  void initState() {
    super.initState();
    movieListBloc = MovieListBloc(MovieListService())
      ..add(MovieListFetchAll(movieType: MovieType.popular));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Popcorn App')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 45,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Color.fromARGB(255, 9, 38, 64),
                  width: 2.5,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          popularSelect = true;
                        });
                        movieListBloc.add(
                          MovieListFetchAll(movieType: MovieType.popular),
                        );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: popularSelect
                            ? Color.fromARGB(255, 9, 38, 64)
                            : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Text(
                        'Popular',
                        style: TextStyle(
                          color: popularSelect
                              ? Colors.greenAccent.shade100
                              : Color.fromARGB(255, 9, 38, 64),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          popularSelect = false;
                        });
                        movieListBloc.add(
                          MovieListFetchAll(movieType: MovieType.topRated),
                        );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: popularSelect
                            ? Colors.white
                            : Color.fromARGB(255, 9, 38, 64),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Text(
                        'Top rated',
                        style: TextStyle(
                          color: popularSelect
                              ? Color.fromARGB(255, 9, 38, 64)
                              : Colors.greenAccent.shade100,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          BlocBuilder<MovieListBloc, MovieListState>(
            bloc: movieListBloc,
            builder: (context, state) {
              if (state is MovieListLoading) {
                return Center(child: CircularProgressIndicator());
              }
              if (state is MovieListSuccess) {
                return SizedBox(
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: state.movies.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsetsGeometry.all(10),
                        child: Column(
                          children: [
                            Container(
                              width: 130,
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://image.tmdb.org/t/p/w500${state.movies[index].posterPath}',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              state.movies[index].title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(state.movies[index].releaseDate),
                          ],
                        ),
                      );
                    },
                  ),
                );
              }
              if (state is MovieListError) {
                return Center(child: Text(state.message));
              }
              return Center(child: CircularProgressIndicator());
            },
          ),
        ],
      ),
    );
  }
}
