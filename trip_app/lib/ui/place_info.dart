import 'package:flutter/material.dart';

class PlaceInfo extends StatelessWidget {
  const PlaceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 300,
      
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              'https://th.bing.com/th/id/OIP.ZVew47fYghErZk_FdDOKWAAAAA?w=205&h=141&c=7&r=0&o=7&pid=1.7&rm=3',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.darken,
              color: Colors.black.withValues(alpha: 0.4),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: BoxBorder.all(color: Color.fromARGB(255, 121, 187, 203))
                  ),
                  child: Icon(Icons.favorite, color: Colors.white,),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Brazil', style: TextStyle(color: Colors.white.withValues(alpha: 0.7)),),
                    Text('Rio de Janeiro', style: TextStyle(fontSize: 20, color: Colors.white),),
                    Row(
                      children: [
                        Container(
                          width: 50,
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: BoxBorder.all(color: Color.fromARGB(128, 255, 255, 255))
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.star, color: Colors.white, size: 12,),
                              Text('5.0', style: TextStyle(color: Colors.white, fontSize: 12),)
                            ],
                          ),
                        ),
                        SizedBox(width: 16,),
                        Text('143 reviews', style: TextStyle(color: Colors.white.withValues(alpha: 0.7)),)
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
