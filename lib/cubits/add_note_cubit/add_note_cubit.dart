import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note/constants.dart';
import 'package:note/models/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubit() : super(AddNoteCubitInitial());
  Color color = Color(0xffE26D5A);
  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNoteCubitLoding());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);

      await noteBox.add(note);
      emit(AddNoteCubitSucess());
    } catch (e) {
      emit(AddNoteCubitFailure(e.toString()));
    }
  }
}
