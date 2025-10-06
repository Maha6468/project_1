import 'package:flutter/material.dart';

class Cus_Text extends StatelessWidget {
  final String text;
  const Cus_Text({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
    );
  }
}
