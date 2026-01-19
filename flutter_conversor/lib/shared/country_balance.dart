import 'package:flutter/material.dart';

class CountryBalance extends StatelessWidget {
  const CountryBalance({
    super.key,
    required this.urlPicture,
    required this.countryLabel,
    required this.moneySymbol,
    required this.quantity,
    required this.otherQuantity
  });

  final String urlPicture;
  final String countryLabel;
  final String moneySymbol;
  final String quantity;
  final String otherQuantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 100,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 236, 238, 235),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(quantity, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              Text('Balance: $moneySymbol$otherQuantity', style: TextStyle(color: Color.fromARGB(255, 81, 84, 77)), )
            ],
          ),
          Container(
            height: 60,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(color: Color.fromARGB(255, 206, 209, 214)),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              children: [
                Image.asset(urlPicture, width: 25,),
                SizedBox(width: 3,),
                Text(countryLabel, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                SizedBox(width: 5,),
                Icon(Icons.keyboard_arrow_down)
              ],
            ),
          )
        ],
      ),
    );
  }
}