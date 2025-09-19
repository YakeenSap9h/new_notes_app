import 'package:flutter/material.dart';
import 'package:new_notes_app/consts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText,  this.maxLines =1});
  final String hintText;
  final int maxLines; 
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        
        hintStyle: TextStyle(color: kPrimaryColor),
        enabledBorder: builldBorder(Colors.white),
        focusedBorder: builldBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder builldBorder([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
