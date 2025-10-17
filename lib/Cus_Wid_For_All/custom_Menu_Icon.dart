import 'package:flutter/material.dart';

import '../screen_page/course_2.dart';

class Custom_Menu_Icon extends StatelessWidget {
  const Custom_Menu_Icon({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment(.9, .9),
      child: Container(
        height: 50,width: 50,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.deepPurpleAccent)
          ),
          child: IconButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>Coursee_2()));
          },
              icon: Icon(Icons.filter_list,size: 35,))),
    );
  }
}
