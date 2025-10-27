import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:project_1/screen_page/sign_In.dart';
import 'package:project_1/screen_page/update_Password.dart';
import '../Custom_Widget_For_All/elevated_button.dart';
import '../Custom_Widget_For_All/text_form_field.dart';
import 'main_Screen.dart';

class LoginIn extends StatefulWidget {

   LoginIn({super.key});

  @override
  State<LoginIn> createState() => _LoginInState();
}

class _LoginInState extends State<LoginIn> {
  bool _isChecked=true;

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
              Text_Form_Field(label: "Password",filled: true,fillColor: Colors.grey[200],sufIcon: Icons.visibility_off_outlined,),
              SizedBox(height: 1,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                          value: _isChecked,
                          onChanged: (value){
                            setState(() {
                              _isChecked=value!;
                            });
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

              Elevated_Button(text: "Log In",width: 320,height: 50,
                onPressed:(){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>MainScreen()));
                },),
              SizedBox(height: 10,),
              SizedBox(
                width: 320,height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                        ),
                        side: BorderSide(color: Colors.black12)
                    ),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Sign_In()));
                    }, child:Text("Register",style: TextStyle(color: Colors.black),)),
              ),

              SizedBox(height: 30,),
              Text("Or continue with",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold),),

              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide.none,
                          padding: EdgeInsets.symmetric(vertical: 12),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)
                          )
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset("assets/images/google.png",fit:BoxFit.cover,height: 28,),
                            SizedBox(width: 10,),
                            Flexible(
                              child: Text(
                                "Google",style: TextStyle(color: Colors.black),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                   Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                            side: BorderSide.none,
                            padding: EdgeInsets.symmetric(vertical: 12),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)
                            )
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset("assets/images/facebook.png",fit:BoxFit.cover,height: 28,),
                            SizedBox(width: 10,),
                            Flexible(
                              child: Text(
                                "Facebook",style: TextStyle(color: Colors.black),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6,),
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
