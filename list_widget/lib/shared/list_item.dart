import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.urlPicture,
    required this.firstName,
    required this.lastName
  });

  final String urlPicture;
  final String firstName;
  final String lastName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(urlPicture),
        Text(firstName),
        Text(lastName)
      ],
    );
  }
}