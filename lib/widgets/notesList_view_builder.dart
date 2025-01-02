import 'package:flutter/material.dart';
import 'package:note/widgets/notes_item.dart';

class NotesListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ListView.builder(itemBuilder: (context, index) {
        return NotesItem();
      }),
    );
  }
}


