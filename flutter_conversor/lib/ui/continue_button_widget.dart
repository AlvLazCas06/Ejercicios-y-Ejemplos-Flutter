import 'package:flutter/material.dart';

class ContinueButtonWidget extends StatelessWidget {
  const ContinueButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 60,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 49, 49, 49),
        borderRadius: BorderRadius.circular(25)
      ),
      child: IconButton(
        onPressed: () {},
        icon: Text('Continue', style: TextStyle(color: Colors.white, fontSize: 16)),
      ),
    );
  }
}
