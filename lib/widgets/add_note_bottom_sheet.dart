import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note/widgets/custom_button.dart';
import 'package:note/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(padding: EdgeInsets.symmetric(horizontal: 16),
    child:Container(
      child: SingleChildScrollView(child:  Column(
      children: [
        SizedBox(height: 32,),
        CustomTextField(hint: 'title'),
        SizedBox(height: 16,),
                CustomTextField(hint: 'content',
                maxLines: 5,),
                SizedBox(height: 16,),
                CustomButton(),SizedBox(height: 16,)

      ],
    ),),
    ));
  }
}