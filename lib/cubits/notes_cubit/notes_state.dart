part of 'notes_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}

final class NotesCubitLoading extends NotesCubitState {}

final class NotesCubitSuceess extends NotesCubitState {
  List notes;
  NotesCubitSuceess(this.notes);
}

final class NotesCubitFailure extends NotesCubitState {
  String errMessage;
  NotesCubitFailure(this.errMessage);
}
