

import 'package:flutter/material.dart';

import 'app_colors.dart';

class call_to_action extends StatelessWidget {
  final IconData ?icon;
  final String text;
  final Color color;
 
  const call_to_action({super.key,  this.icon, required this.text, required this.color,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          color:primarycolor,
          borderRadius: BorderRadius.circular(20),
        ),
        
        child: Center(
          child: Row(children: [
            Icon(icon,size: 20,),
            const SizedBox(width: 10,),
            Center(child: Text(text,style: const TextStyle(color: Colors.black),)),
          ]),
        ),
      ),
    );
  }
}