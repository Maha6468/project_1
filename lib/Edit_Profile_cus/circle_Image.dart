import 'package:flutter/material.dart';

class Circle_Image extends StatelessWidget {
  const Circle_Image({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage("assets/images/maha.jpeg"),
        backgroundColor: Colors.grey.shade200,
      ),
        Positioned(
            bottom: 4,right: 10,
            child: Container(
              padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  shape: BoxShape.circle
                ),
                child: Icon(Icons.lock,color: Colors.white,size: 20,)))
      ],
    );
  }
}
