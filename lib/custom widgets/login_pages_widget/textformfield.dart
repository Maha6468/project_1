import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'button.dart';

class MyTextFormField extends StatefulWidget {
  final String label;
  final String label1;
  final bool filled;
  final Color? fillColor;

  const MyTextFormField({super.key,
    required this.label, required this.label1, required this.filled, required this.fillColor,

  });

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 330,
          child: TextFormField(
            decoration: InputDecoration(
              labelText:widget.label,
              filled:widget.filled,
              fillColor: widget.fillColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        SizedBox(
          width: 330,
          child: TextFormField(
            decoration: InputDecoration(
              labelText:widget.label1,
              filled: widget.filled,
              fillColor:widget.fillColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
              suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
            ),
          ),
        ),
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

           }, child: Text(
             "Forgot password",
             style: TextStyle(
                 color: Colors.black,
                 decoration: TextDecoration.underline
             ),
           ))

          ],

        ),

        Elevate_Button(text: "Log In",),
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
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Sign Up clicked!")),
                    );
                  }
              )
            ]

          )
        )

      ],
    );
  }
}

