import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Text_F_Field_With_Icon extends StatelessWidget {
  final String label1;
  final bool filled;
  final Color? fillColor;
  const Text_F_Field_With_Icon({super.key, required this.label1, required this.filled, this.fillColor});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 330,
      child: TextFormField(
        decoration: InputDecoration(
          labelText:label1,
          filled:filled,
          fillColor:fillColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
        ),
      ),
    );
  }
}
