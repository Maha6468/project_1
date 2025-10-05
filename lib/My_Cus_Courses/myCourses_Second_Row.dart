import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Second_Row extends StatelessWidget {
  final String text;
  final String text_second;
  const Second_Row({super.key, required this.text, required this.text_second});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
        TextButton(onPressed: (){
          
        },
            child: Row(
              children: [
                Text(text_second,style: TextStyle(color: Colors.deepPurpleAccent),),
                Icon(Icons.arrow_forward_ios_rounded,color: Colors.deepPurpleAccent,)
              ],
            ))
      ],
    );
  }
}
