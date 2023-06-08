
import 'package:flutter/material.dart';

class Menuscroll extends StatelessWidget {
  const Menuscroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
      height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:const [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/p5.jpg')),
   
                Text('Salad',style: TextStyle(color: Colors.white)),
                     Text('Tacos',style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}