import 'package:flutter/material.dart';

class NumberButtonKeyboard extends StatelessWidget {
  const NumberButtonKeyboard({
    super.key, required this.number,
    required this.color
  });
  final String number;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      height: 65,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 237, 242, 246),
        borderRadius: BorderRadius.circular(20)
      ),
      child: IconButton(onPressed: () {}, icon: Text(number, style: TextStyle(fontSize: 36),)),
    );
  }
}
