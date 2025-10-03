import 'package:flutter/material.dart';

import '../Cus_Wid_For_All/button.dart';
import '../Cus_Wid_For_All/text_F_Field.dart';
import '../Cus_Wid_For_All/text_F_Field_with_Icon.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({super.key});

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text("Sign In",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
              SizedBox(height: 10,),
              Text_Form_Field(label: 'First name', filled: true,fillColor: Colors.grey[200],),
              SizedBox(height: 10,),
              Text_Form_Field(label: 'Last name', filled: true,fillColor: Colors.grey[200],),
              SizedBox(height: 10,),
              Text_Form_Field(label: 'Email', filled: true,fillColor: Colors.grey[200],),
              SizedBox(height: 10,),
              Text_F_Field_With_Icon(label1: 'Password', filled: true,fillColor: Colors.grey[200],),
              SizedBox(height: 10,),
              Elevate_Button(text: 'Sign In',)
            ],
          ),
        ),
      ),
    );
  }
}
