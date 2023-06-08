import 'package:flutter/material.dart';

import 'views/mobile views/Home/Home.dart';
import 'views/mobile views/Login page/Homeview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home:  const Homemenu()
    );
  }
}

