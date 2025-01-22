import 'package:flutter/material.dart';
import 'package:note/constants.dart';

class CustomTextField extends StatelessWidget {
  final String? hint;
  final int maxLines;
  final Function(String?)? onSaved;
  final Function(String)? onChanged;
  final String? text;

  const CustomTextField(
      {super.key,
       this.hint,
      this.maxLines = 1,
      this.onSaved,
      this.onChanged, this.text});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: text,
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hintText: this.hint,
          hintStyle: TextStyle(color: kPrimaryColor),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(kPrimaryColor)),
      onSaved: onSaved,
      onChanged: onChanged,
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
