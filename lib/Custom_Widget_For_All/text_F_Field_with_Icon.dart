import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Text_F_Field_With_Icon extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  const Text_F_Field_With_Icon({super.key, this.suffixIcon, this.prefixIcon, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 330,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          filled:true,
          fillColor:Colors.grey[200],
            prefixIcon: prefixIcon,
            contentPadding: EdgeInsets.symmetric(
                vertical: 10, horizontal: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          suffixIcon: suffixIcon
        ),
      ),
    );
  }
}
