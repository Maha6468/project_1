import 'package:flutter/material.dart';

class Elevate_Button extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;

  const Elevate_Button({super.key, required this.text, required this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:width,height:height,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurpleAccent,
              shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              )
          ),
          onPressed: (){

          }, child:Text(text,style: TextStyle(color: Colors.white),)),
    );
  }
}
