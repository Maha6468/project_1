import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Text_F_Field_With_Icon extends StatelessWidget {
  final String label1;
  final Color? fillColor;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  const Text_F_Field_With_Icon({super.key, required this.label1, this.fillColor, this.suffixIcon, this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 330,
      child: TextFormField(
        decoration: InputDecoration(
          labelText:label1,
          filled:true,
          fillColor:fillColor,
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
