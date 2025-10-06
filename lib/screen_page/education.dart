import 'package:flutter/material.dart';

import '../Cus_Wid_For_All/custom_Menu_Icon.dart';
import '../Edit_Profile_cus/circle_Image.dart';
import '../My_Cus_Courses/myCourses_Top_Row.dart';

class Education_Page extends StatelessWidget {
  const Education_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.school, color: Colors.white, size: 25,)),
              SizedBox(width: 5,),
              Text("Education", style: TextStyle(color: Colors.deepPurpleAccent,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: 5,),
          Circle_Image(),
          Text("Andrew Applpie",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Text("3555045545"),
          SizedBox(height: 15,),
          Custom_TextField(text: 'Edit Profile',
            prefixIcon: Icon(Icons.person, color: Colors.deepPurpleAccent,),),
          Custom_TextField(text: 'Downloaded Course',
            prefixIcon: Icon(Icons.download, color: Colors.deepPurpleAccent,),),
          Custom_TextField(text: 'Change Password',
            prefixIcon: Icon(Icons.key, color: Colors.deepPurpleAccent,),),
          TextField_2(prefixIcon_2:Icon(Icons.exit_to_app_outlined,color: Colors.deepPurpleAccent,), text_2: 'Log Out',),
          Align(
            alignment: Alignment(.9, 3),
              child: Custom_Menu_Icon()),


        ],
      ),
    );
  }
}

class Custom_TextField extends StatelessWidget {
  final String text;
  final Widget prefixIcon;
  final Widget ? suffixIcon;
  const Custom_TextField({super.key, required this.text, required this.prefixIcon, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)
          ),
          prefixIcon:prefixIcon,
          hintText:text,hintStyle: TextStyle(fontWeight: FontWeight.bold),
          suffixIcon: suffixIcon?? Icon(Icons.arrow_forward_ios_rounded),
        ),
      ),
    );
  }
}

class TextField_2 extends StatelessWidget {
  final String text_2;
  final Widget prefixIcon_2;
  const TextField_2({super.key, required this.prefixIcon_2, required this.text_2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none
          ),
          //enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey),),
         // focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          prefixIcon:prefixIcon_2,
          hintText:text_2,hintStyle: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );;
  }
}


