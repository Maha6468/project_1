import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:project_1/screen_page/sign_In.dart';
import 'package:project_1/screen_page/update_Password.dart';
import '../Cus_Wid_For_All/button.dart';
import '../Cus_Wid_For_All/text_F_Field.dart';
import '../Cus_Wid_For_All/text_F_Field_with_Icon.dart';
import 'main_Screen.dart';

class LoginIn extends StatelessWidget {
  const LoginIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text("Log In",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
              SizedBox(height: 15,),
              Text_Form_Field(label: "Email",filled: true,fillColor: Colors.grey[200],),
              SizedBox(height: 10,),
              Text_F_Field_With_Icon(hintText: "Password",),
              SizedBox(height: 1,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                          value: true,
                          onChanged: (value){

                          }),
                      Text("Remember me"),
                    ],
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Update_Password()));
                  }, child: Text(
                    "Forgot password",
                    style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.underline
                    ),
                  ))

                ],

              ),

              Elevate_Button(text: "Log In",width: 320,height: 40,
                onPressed:(){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>MainScreen()));
                },),
              SizedBox(height: 10,),
              SizedBox(
                width: 320,height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                        ),
                        side: BorderSide(color: Colors.black12)
                    ),
                    onPressed: (){

                    }, child:Text("Register",style: TextStyle(color: Colors.black),)),
              ),

              SizedBox(height: 30,),
              Text("Or continue with",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold),),

              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(onPressed: (){

                  }, child: Text("Google")),

                  OutlinedButton(onPressed: (){

                  }, child: Text("Facebook")),
                ],
              ),
              SizedBox(height: 20,),
              Text.rich(
                  TextSpan(
                      text:"Not have an account yet?",
                      children: [
                        TextSpan(
                            text: "Sign up",style: TextStyle(color: Colors.deepPurple,fontSize:20 ),
                            recognizer: TapGestureRecognizer()
                              ..onTap=(){
                                Navigator.push(context,MaterialPageRoute(builder: (context)=>Sign_In()));
                              }
                        )
                      ]

                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
