import 'package:flutter/material.dart';
import 'package:new_notes_app/consts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        labelText: "Title",
        labelStyle: TextStyle(color: kPrimaryColor),
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
