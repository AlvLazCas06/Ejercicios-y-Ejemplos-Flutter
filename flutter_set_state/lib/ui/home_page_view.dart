import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  Color bgColor = Colors.white;
  Color textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter State', style: TextStyle(color: textColor)),
        backgroundColor: bgColor,
      ),
      body: Container(
        color: bgColor,
        child: Center(
          child: Text("Hello world", style: TextStyle(color: textColor)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: textColor,
        onPressed: _changeMode,
        child: bgColor == Colors.white
            ? Icon(Icons.dark_mode, color: bgColor,)
            : Icon(Icons.light_mode, color: bgColor,),
      ),
    );
  }

  void _changeMode() {
    setState(() {
      bgColor = bgColor == Colors.white ? Colors.black : Colors.white;
      textColor = textColor == Colors.white ? Colors.black : Colors.white;
    });
  }
}
