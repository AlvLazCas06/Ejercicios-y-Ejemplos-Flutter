import 'package:flutter/material.dart';
import 'package:flutter_conversor/shared/country_balance.dart';

class CountryBalanceSelect extends StatelessWidget {
  const CountryBalanceSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.center,
      children: [
        Column(
          children: [
            CountryBalance(
              countryLabel: 'USD',
              moneySymbol: '\$',
              quantity: '140.00',
              otherQuantity: '150.56',
              urlPicture: 'assets/images/flag_usa.png',
            ),
            SizedBox(height: 10),

            CountryBalance(
              countryLabel: 'CNY',
              moneySymbol: '¥',
              quantity: '1014.902',
              otherQuantity: '246.63',
              urlPicture: 'assets/images/flag_china.png',
            ),
          ],
        ),
        CircleAvatar(
          backgroundColor: Color.fromARGB(255, 52, 52, 52),
          child: Icon(Icons.swap_horiz, color: Colors.white),
        ),
      ],
    );
  }
}
