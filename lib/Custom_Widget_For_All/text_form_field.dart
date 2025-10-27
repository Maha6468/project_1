
import 'package:flutter/material.dart';

class Text_Form_Field extends StatelessWidget {
  final String? lablText;
  final String? hinText;
  final bool filled;
  final Color? fillColor;
  final IconData? preIcon;
  final IconData? sufIcon;
  const Text_Form_Field({super.key, required this.filled, this.fillColor, this.preIcon, this.sufIcon, this.hinText, this.lablText});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 330,
      child: TextFormField(
        decoration: InputDecoration(
         // labelText:label,
          labelText: lablText != null ? lablText : null,
          //hintText: "Maha",
          hintText: hinText != null ? hinText : null,
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
