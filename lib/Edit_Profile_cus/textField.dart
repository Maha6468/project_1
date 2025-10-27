import 'package:flutter/material.dart';

//import '../Custom_Widget_For_All;

class TextField_Custom extends StatefulWidget {
  final String text;
  final String HinText;
  const TextField_Custom({super.key, required this.text, required this.HinText,});

  @override
  State<TextField_Custom> createState() => _TextField_CustomState();
}

class _TextField_CustomState extends State<TextField_Custom> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
            SizedBox(height: 6,),
            TextField(
              decoration: InputDecoration(
                    filled: true,
                  fillColor: Colors.grey.shade200,
                    hintText: widget.HinText,

                    border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
              )
              ),
            ),

          ],
        ),
      ),
    );
  }
}
