import 'package:flutter/material.dart';
import 'package:trip_app/ui/list_country.dart';
import 'package:trip_app/ui/my_search_bar.dart';
import 'package:trip_app/ui/place_info.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          MySearchBar(),
          ListCountry(),
          PlaceInfo()
        ],
      ),
    );
  }
}