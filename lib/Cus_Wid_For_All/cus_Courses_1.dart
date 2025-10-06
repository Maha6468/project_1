import 'package:flutter/material.dart';

class Cus_Courses_1 extends StatelessWidget {
  final String title;
  final String subtitle;
  const Cus_Courses_1({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
            return Card(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16)
                ),
                child: ListTile(
                  title: Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text(subtitle),
                  trailing:Container(
                    height: 40,width: 40,
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(8)
                    ),
                      child: Icon(Icons.arrow_forward,color: Colors.white,)),

                ),
              ),
            );
  }
}
