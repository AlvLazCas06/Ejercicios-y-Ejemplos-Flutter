import 'package:flutter/material.dart';

class CountryItem extends StatelessWidget {
  const CountryItem({
    super.key,
    required this.width,
    required this.label,
    required this.textColor,
    required this.backgroundColor,
  });
  final double width;
  final String label;
  final Color textColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: backgroundColor
      ),
      child: Text(label, style: TextStyle(fontSize: 14, color: textColor,), textAlign: TextAlign.center,),
    );
  }
}
