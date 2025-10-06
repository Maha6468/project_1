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
      body: SafeArea(
        child: Center(
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
                Text_F_Field_With_Icon(hintText: 'Password',),
                SizedBox(height: 10,),
                Elevate_Button(text: 'Sign In',width: 320,height: 40,onPressed: (){},),
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
