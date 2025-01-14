import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note/widgets/add_note_form.dart';
import 'package:note/widgets/custom_button.dart';
import 'package:note/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Container(
          child: BlocConsumer<AddNoteCubit, AddNoteCubitState>(
        listener: (context, state) {
          // TODO: implement listener
          if (state is AddNoteCubitFailure) {
            print(state.errMassage);
          }
          if (state is AddNoteCubitSucess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteCubitLoding,
            child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: SingleChildScrollView(child: AddNoteForm())),
          );
        },
      )),
    );
  }
}
