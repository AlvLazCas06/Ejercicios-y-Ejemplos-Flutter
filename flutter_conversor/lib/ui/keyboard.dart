import 'package:flutter/material.dart';
import 'package:flutter_conversor/shared/number_button_keyboard.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NumberButtonKeyboard(
              number: '1',
              color: Color.fromARGB(255, 222, 226, 245),
            ),
            NumberButtonKeyboard(
              number: '2',
              color: Color.fromARGB(255, 222, 226, 245),
            ),
            NumberButtonKeyboard(
              number: '3',
              color: Color.fromARGB(255, 222, 226, 245),
            ),
          ],
        ),
        SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NumberButtonKeyboard(
              number: '4',
              color: Color.fromARGB(255, 222, 226, 245),
            ),
            NumberButtonKeyboard(
              number: '5',
              color: Color.fromARGB(255, 222, 226, 245),
            ),
            NumberButtonKeyboard(
              number: '6',
              color: Color.fromARGB(255, 222, 226, 245),
            ),
          ],
        ),
        SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NumberButtonKeyboard(
              number: '7',
              color: Color.fromARGB(255, 222, 226, 245),
            ),
            NumberButtonKeyboard(
              number: '8',
              color: Color.fromARGB(255, 222, 226, 245),
            ),
            NumberButtonKeyboard(
              number: '9',
              color: Color.fromARGB(255, 222, 226, 245),
            ),
          ],
        ),
        SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NumberButtonKeyboard(
              number: '.',
              color: Color.fromARGB(255, 222, 226, 245),
            ),
            NumberButtonKeyboard(
              number: '0',
              color: Color.fromARGB(255, 234, 244, 248),
            ),
            NumberButtonKeyboard(
              number: ',',
              color: Color.fromARGB(255, 222, 226, 245),
            )
          ],
        ),
      ],
    );
  }
}
