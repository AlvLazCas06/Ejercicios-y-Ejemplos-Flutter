import 'package:flutter/material.dart';

class PlayStoreApp extends StatelessWidget {
  const PlayStoreApp({
    super.key,
    required this.label1,
    required this.lable2,
    required this.value,
  });

  final String label1;
  final String lable2;
  final double value;

  @override
  Widget build(BuildContext context) {
    return 
        Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label1, style: TextStyle(fontSize: 18)),
              SizedBox(height: 2),
              Text(lable2, style: TextStyle(fontSize: 14)),
              SizedBox(height: 1.5),
              Text(
                value.toString(),
                style: TextStyle(
                  backgroundColor: Color.fromARGB(255, 185, 185, 216),
                ),
              ),
            ],
          ),
        );
  }
}
