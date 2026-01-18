import 'package:flutter/material.dart';
import 'package:trip_app/shared/country_item.dart';

class ListCountry extends StatelessWidget {
  ListCountry({super.key});
  final List<Widget> countries = [
    CountryItem(width: 50, label: 'Asia', textColor: Colors.black, backgroundColor: Colors.white,),
    CountryItem(width: 75, label: 'Europe', textColor: Colors.black, backgroundColor: Colors.white,),
    CountryItem(width: 150, label: 'South America', textColor: Colors.white, backgroundColor: Colors.black,),
    CountryItem(width: 120, label: 'North America', textColor: Colors.black, backgroundColor: Colors.white,),
    CountryItem(width: 70, label: 'Africa', textColor: Colors.black, backgroundColor: Colors.white,),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,      
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => countries[index],
          separatorBuilder: (context, index) => SizedBox(width: 10),
          itemCount: countries.length,
        ),
      ),
    );
  }
}
