import 'package:flutter/material.dart';


import 'Drawer_items.dart';

class Drawer extends StatelessWidget {
  const Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 50,
      child:Column(children:const [
         Drawer_items(text: 'Dashboard', icon: Icons.dashboard,),
      ],)
    );
  }
}