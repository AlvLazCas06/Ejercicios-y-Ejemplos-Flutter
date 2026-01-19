import 'package:flutter/material.dart';
import 'package:flutter_conversor/ui/continue_button_widget.dart';
import 'package:flutter_conversor/ui/country_balance_select.dart';
import 'package:flutter_conversor/ui/keyboard.dart';
import 'package:flutter_conversor/ui/money_value_widget.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 222, 226, 245),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 235, 238, 239),
                borderRadius: BorderRadius.circular(25) 
              ),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.close)),
            ),
            Column(
              children: [
                Text('Between Accounts', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                Text('No commission', style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 106, 110, 119)),)
              ],
            ),
            SizedBox(width: 60,)
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 222, 226, 245)
        ),
        child: Column(
          children: [
            MoneyValueWidget(),
            SizedBox(height: 15,),
            CountryBalanceSelect(),
            SizedBox(height: 15,),
            Keyboard(),
            SizedBox(height: 15,),
            ContinueButtonWidget()
          ],
        ),
      ),
    );
  }
}