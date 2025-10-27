import 'package:flutter/material.dart';
import 'package:project_1/Custom_Widget_For_All/top_arrow_icon.dart';

import '../Custom_Widget_For_All/elevated_button.dart';
import '../Custom_Widget_For_All/text_F_Field_with_Icon.dart';
import '../Custom_Widget_For_All/text_form_field.dart';

//import '../Cus_Wid_For_All/elevated_button.dart';
//import '../Cus_Wid_For_All/text_form_field.dart';
//import '../Cus_Wid_For_All/text_F_Field_with_Icon.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({super.key});

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Top_Arrow_Icon(),
                SizedBox(height: 0),
                Center(child: Text("Sign In",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
                SizedBox(height: 10,),
                Text_Form_Field(lablText: 'First name', filled: true,fillColor: Colors.grey[200],),
                SizedBox(height: 10,),
                Text_Form_Field(lablText: 'Last name', filled: true,fillColor: Colors.grey[200],),
                SizedBox(height: 10,),
                Text_Form_Field(lablText: 'Email', filled: true,fillColor: Colors.grey[200],),
                SizedBox(height: 10,),
                Text_Form_Field(lablText: 'Password', filled: true,fillColor: Colors.grey[200],sufIcon: Icons.visibility_off_outlined,),
                SizedBox(height: 10,),
                Elevated_Button(text: 'Sign In',width: 320,height: 40,onPressed: (){},),
                SizedBox(height: 5,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent
                  ),
                    onPressed: (){
                  Navigator.pop(context);
                }, child:Text("back",style: TextStyle(color: Colors.white),))
        
        
              ],
            ),
          ),
        ),
      ),
    );
  }
}
