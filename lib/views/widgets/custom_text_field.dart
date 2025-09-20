import 'package:flutter/material.dart';
import 'package:new_notes_app/consts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.onSaved,
  });
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,

        hintStyle: TextStyle(color: kPrimaryColor),
        enabledBorder: builldBorder(Colors.white),
        focusedBorder: builldBorder(kPrimaryColor),
        errorBorder: builldBorder(Colors.red),
        focusedErrorBorder: builldBorder(Colors.red),
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
