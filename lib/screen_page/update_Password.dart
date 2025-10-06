import 'package:flutter/material.dart';
import 'package:project_1/Cus_Wid_For_All/button.dart';
import 'package:project_1/Cus_Wid_For_All/text_F_Field.dart';
import 'package:project_1/Cus_Wid_For_All/text_F_Field_with_Icon.dart';

class Update_Password extends StatefulWidget {
  const Update_Password({super.key});

  @override
  State<Update_Password> createState() => _Update_PasswordState();
}

class _Update_PasswordState extends State<Update_Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Update Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
          SizedBox(height: 20,),
          Text_Form_Field(label: 'Current Password', filled: true,fillColor: Colors.grey[200],),
          SizedBox(height: 10,),
          Text_F_Field_With_Icon(label1: 'New Password',fillColor: Colors.grey[200],),
          SizedBox(height: 10,),
          Text_F_Field_With_Icon(label1: 'Confirm Password',fillColor: Colors.grey[200],),
          SizedBox(height: 20,),
          Elevate_Button(text: 'Update Now',)

        ],
      ),
    );
  }
}
