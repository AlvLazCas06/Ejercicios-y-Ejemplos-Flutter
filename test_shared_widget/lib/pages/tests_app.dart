import 'package:flutter/material.dart';
import 'package:test_shared_widget/shared/play_store_app.dart';

class TestsApp extends StatelessWidget {
  const TestsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          PlayStoreApp(label1: 'Rovlut - Más que un banco', lable2: 'Finanzas Banco y banca online', value: 4.7),
          PlayStoreApp(label1: 'Rovlut - Más que un banco', lable2: 'Finanzas Banco y banca online', value: 4.7),
          PlayStoreApp(label1: 'Rovlut - Más que un banco', lable2: 'Finanzas Banco y banca online', value: 4.7)
        ],
      ),
    );
  }
}