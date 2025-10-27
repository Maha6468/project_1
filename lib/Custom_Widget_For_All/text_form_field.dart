
import 'package:flutter/material.dart';

class Text_Form_Field extends StatelessWidget {
  final String label;
  final bool filled;
  final Color? fillColor;
  final IconData? preIcon;
  final IconData? sufIcon;
  const Text_Form_Field({super.key, required this.label, required this.filled, this.fillColor, this.preIcon, this.sufIcon});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 330,
      child: TextFormField(
        decoration: InputDecoration(
          labelText:label,
          //hintText: "Maha",
          filled:filled,
          fillColor: fillColor,
         // prefixIcon: Icon(Icons.add_alert),
          prefixIcon: preIcon != null ? Icon(preIcon) : null,
         // suffixIcon: Icon(Icons.add),
          suffixIcon: sufIcon!=null? Icon(sufIcon):null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
