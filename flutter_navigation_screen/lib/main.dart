import 'package:flutter/material.dart';
import 'package:flutter_navigation_screen/ui/first_page_view.dart';
import 'package:flutter_navigation_screen/ui/second_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      routes: {
        '/': (context) => FirstPageView(),
        '/second': (context) => SecondPageView(),
      },
    );
  }
}