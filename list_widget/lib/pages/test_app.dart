import 'package:flutter/material.dart';
//import 'package:list_widget/shared/bottom_navigation_button.dart';
import 'package:list_widget/shared/list_item.dart';

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Actores',
          style: TextStyle(
            fontFamily: 'AvantGarde',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ListItem(
            urlPicture:
                'https://media.themoviedb.org/t/p/w300_and_h450_face/nraZoTzwJQPHspAVsKfgl3RXKKa.jpg',
            firstName: 'Jackie',
            lastName: 'Chan',
          ),
          ListItem(
            urlPicture:
                'https://media.themoviedb.org/t/p/w235_and_h235_face/nXA9vMvskmIDB5NqHCkTQPmemep.jpg',
            firstName: 'Angelina',
            lastName: 'Jolie',
          ),
          ListItem(
            urlPicture:
                'https://media.themoviedb.org/t/p/w235_and_h235_face/nZdVry7lnUkE24PnXakok9okvL4.jpg',
            firstName: 'Vin',
            lastName: 'Diesel',
          ),
        ],
      ),
      /*bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          BottomNavigationButton(icon: Icons.home, label: 'Home'),
          BottomNavigationButton(icon: Icons.camera, label: 'Booking'),
          BottomNavigationButton(icon: Icons.favorite, label: 'List'),
          BottomNavigationButton(icon: Icons.person, label: 'Profile'),
        ],
      ),*/
    );
  }
}
