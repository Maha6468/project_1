import 'package:flutter/material.dart';
import 'package:project_1/screen_page/login_In.dart';
import 'package:project_1/screen_page/sign_In.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      home:Sign_In(),
    );
  }
}
