import 'package:flutter/material.dart';
import 'package:project_1/custom%20widgets/login_pages_widget/textformfield.dart';

class LoginIn extends StatelessWidget {
  const LoginIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Log In",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
          SizedBox(height: 15,),
          MyTextFormField(label: "Email",label1: "Password",filled: true,fillColor: Colors.grey[200],),
        ],
      ),
    );
  }
}
