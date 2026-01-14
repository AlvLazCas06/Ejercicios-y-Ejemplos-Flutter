import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.urlPicture,
    required this.firstName,
    required this.lastName,
  });

  final String urlPicture;
  final String firstName;
  final String lastName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 250,
            height: 500,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                image: NetworkImage(urlPicture),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(200)),
            ),
          ),
          //Image.network(urlPicture),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                firstName,
                style: TextStyle(
                  fontFamily: 'AvantGarde',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                lastName,
                style: TextStyle(
                  fontFamily: 'AvantGarde',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
