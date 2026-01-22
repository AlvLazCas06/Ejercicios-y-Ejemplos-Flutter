import 'package:flutter/material.dart';

class SecondPageView extends StatelessWidget {
  const SecondPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Segunda pantalla'),),
      body: Column(
        children: [
          Text('data')
        ],
      ),
    );
  }
}