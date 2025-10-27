import 'package:flutter/material.dart';
import '../Custom_Widget_For_All/elevated_button.dart';
import '../Custom_Widget_For_All/text_form_field.dart';

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
          Text_Form_Field(lablText: 'Current Password', filled: true,fillColor: Colors.grey[200],),
          SizedBox(height: 10,),
          Text_Form_Field(lablText: 'New Password', filled: true,fillColor: Colors.grey[200],sufIcon: Icons.visibility_off_outlined,),
          SizedBox(height: 10,),
          Text_Form_Field(lablText: 'Confirm Password', filled: true,fillColor: Colors.grey[200],sufIcon: Icons.visibility_off_outlined,),
          SizedBox(height: 20,),
          Elevated_Button(text: 'Update Now',width: 320,height: 50,onPressed: (){},)

        ],
      ),
    );
  }
}
