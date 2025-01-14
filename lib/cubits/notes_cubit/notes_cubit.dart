import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note/constants.dart';
import 'package:note/models/note_model.dart';

part 'notes_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());
  fetchNotes() async {
    emit(NotesCubitLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      var notes = noteBox.values.toList();
      emit(NotesCubitSuceess(notes));
    } catch (e) {
      emit(NotesCubitFailure(e.toString()));
    }
  }
}
