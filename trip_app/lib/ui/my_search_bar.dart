import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.search),
        Text('Search'),
        Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(40)
          ),
          child: Icon(Icons.settings, color: Colors.white,),
        )
      ],
    );
  }
}