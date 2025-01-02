import 'package:flutter/material.dart';
import 'package:note/widgets/custom_appBar.dart';
import 'package:note/widgets/notesList_view_builder.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppbar(),
          Expanded(child: NotesListViewBuilder())
        ],
      ),
    );
  }
}

