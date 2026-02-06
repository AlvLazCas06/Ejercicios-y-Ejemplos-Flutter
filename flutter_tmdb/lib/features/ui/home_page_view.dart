import 'package:flutter/material.dart';
import 'package:flutter_tmdb/features/movies_list_popular/ui/movie_list_page.dart';
import 'package:flutter_tmdb/features/people_list_popular/ui/people_list_page.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Listados de películas y actores'),),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.movie_creation_outlined),
            icon: Icon(Icons.movie),
            label: 'Películas',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.account_circle_outlined),
            icon: Icon(Icons.account_circle),
            label: 'Actores',
          )
        ],
      ),
      body: [
        MovieListPage(),
        PeopleListPage()
      ][currentPageIndex],
    );
  }
}