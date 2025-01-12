import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note/widgets/add_note_form.dart';
import 'package:note/widgets/custom_button.dart';
import 'package:note/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return    Padding(padding:const EdgeInsets.symmetric(horizontal: 16),
    child: Container(
      child:const SingleChildScrollView(child:  AddNoteForm()),
    ));
  }
}