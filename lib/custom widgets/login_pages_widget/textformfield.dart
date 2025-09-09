import 'package:flutter/material.dart';

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
          width: 450,
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
          width: 450,
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

      ],
    );
  }
}
