import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/notes_cubit/notes_cubit.dart';
import 'package:note/models/note_model.dart';
import 'package:note/widgets/notes_item.dart';

class NotesListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocBuilder<NotesCubit, NotesCubitState>(
      builder: (context, state) {

        List<NoteModel> notes = context.watch<NotesCubit>().notes!;

        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return NotesItem(
                  note: notes[index],
                );
              }),
        );
      },
    );
  }
}
