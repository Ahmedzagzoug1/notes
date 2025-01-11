import 'package:flutter/material.dart';
import 'package:note/widgets/custom_appbar.dart';
import 'package:note/widgets/custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppbar(title: 'Edit Note',icon: Icons.check,),
          SizedBox(height: 50,),
           CustomTextField(hint: 'title'),
           SizedBox(height: 16,),
           CustomTextField(hint: 'content',maxLines: 5,)
        ],
      ),
    );
  }
}