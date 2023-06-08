import 'package:flutter/material.dart';
import 'package:web_tt/commom%20widget/app_theme/app_text.dart';


class Drawer_items extends StatelessWidget {
 final String text;
 final IconData icon;
  const Drawer_items({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: app_text(text: text,),
      leading: Icon(icon,size: 20,),

    );
  }
}