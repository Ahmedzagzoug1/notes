import 'package:flutter/material.dart';
import 'package:note/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final int maxLines;
  final Function(String?)? onSaved;

  const CustomTextField(
      {super.key,
      required this.hint,
      this.maxLines = 1,
      this.onSaved});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hintText: this.hint,
          hintStyle: TextStyle(color: kPrimaryColor),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(kPrimaryColor)),
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
         return null;
        }
      },
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
