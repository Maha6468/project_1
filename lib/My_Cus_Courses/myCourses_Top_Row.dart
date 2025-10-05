import 'package:flutter/material.dart';

class Top_Row extends StatelessWidget {
  final String text;
  const Top_Row({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
            Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Icon(Icons.arrow_back_ios_new,size: 25,)),
            Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            Icon(Icons.more_vert)

      ],
    );
  }
}
