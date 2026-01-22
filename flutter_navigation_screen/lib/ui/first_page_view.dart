import 'package:flutter/material.dart';

class FirstPageView extends StatelessWidget {
  const FirstPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Primera pantalla'),),
      body: Column(
        children: [
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
            child: Text("Ir a la segunda pantalla (con ruta)"),
          ),
        ],
      ),
    );
  }
}
