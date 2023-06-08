

import 'package:flutter/material.dart';

class app_text extends StatelessWidget {
  final String text;
  final double? fontsize;
  const app_text({super.key, required this.text, this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 15,color: Colors.amber),
    );
}}