
import 'package:flutter/material.dart';

class Top_Arrow_Icon extends StatelessWidget {
  const Top_Arrow_Icon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment(-.9, 0),
      child: Container(
          height: 40,width: 40,
          decoration: BoxDecoration(
            border: Border.all(
                color: Colors.grey
            ),
            shape: BoxShape.rectangle,

            borderRadius: BorderRadius.circular(7),
          ),
          child: Icon(Icons.arrow_back_ios_new,size: 22,color: Colors.black,)),
    );
  }
}
