import 'package:flutter/material.dart';

class Elevate_Button extends StatelessWidget {
  final String text;

  const Elevate_Button({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,height: 40,
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
