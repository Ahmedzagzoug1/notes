part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteCubitState {}

final class AddNoteCubitInitial extends AddNoteCubitState {}

final class AddNoteCubitLoding extends AddNoteCubitState {}

final class AddNoteCubitSucess extends AddNoteCubitState {}

final class AddNoteCubitFailure extends AddNoteCubitState {
  final String errMassage;

  AddNoteCubitFailure( this.errMassage);

}
