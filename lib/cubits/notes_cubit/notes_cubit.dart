import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note/constants.dart';
import 'package:note/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());
  List<NoteModel>? notes;
  fetchNotes() {
    Box<NoteModel> noteBox = Hive.box<NoteModel>(kNotesBox);
    print(noteBox.values.toList().length);

    notes = noteBox.values.toList();
    emit(NotesCubitSuccess());
  }
}
