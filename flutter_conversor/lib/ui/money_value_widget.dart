import 'package:flutter/material.dart';

class MoneyValueWidget extends StatelessWidget {
  const MoneyValueWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 49, 49, 49),
        borderRadius: BorderRadius.circular(30)
      ),
      child: Text('1USD = 7,2493 CNY', style: TextStyle(color: Colors.white, fontSize: 16,), textAlign: TextAlign.center,),
    );
  }
}