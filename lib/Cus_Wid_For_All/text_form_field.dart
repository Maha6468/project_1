
import 'package:flutter/material.dart';

class Text_Form_Field extends StatelessWidget {
  final String label;
  final bool filled;
  final Color? fillColor;
  final IconData? preIcon;
  const Text_Form_Field({super.key, required this.label, required this.filled, this.fillColor, this.preIcon});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 330,
      child: TextFormField(
        decoration: InputDecoration(
          labelText:label,
          filled:filled,
          fillColor: fillColor,
          prefixIcon: preIcon != null ? Icon(preIcon) : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
