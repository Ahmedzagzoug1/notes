import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note/cubits/notes_cubit/notes_cubit.dart';
import 'package:note/models/note_model.dart';
import 'package:note/widgets/custom_button.dart';
import 'package:note/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(children: [
        const SizedBox(
          height: 32,
        ),
        CustomTextField(
          hint: 'title',
          onSaved: (value) {
            title = value;
          },
        ),
        const SizedBox(
          height: 16,
        ),
        CustomTextField(
          hint: 'content',
          maxLines: 5,
          onSaved: (value) {
            subtitle = value;
          },
        ),
        SizedBox(
          height: 16,
        ),
        BlocListener<AddNoteCubit, AddNoteCubitState>(
          listener: (context, state) {
            if (state is AddNoteCubitSucess) {
              BlocProvider.of<NotesCubit>(context).fetchNotes();
              setState(() {
                
              });
            }
          },
          child: BlocBuilder<AddNoteCubit, AddNoteCubitState>(
            builder: (context, state) {
              return CustomButton(
                isloading: state is AddNoteCubitLoding ? true : false,
                onTap: () async {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDate = DateTime.now();
                    var formattedDate = DateFormat.yMEd().format(currentDate);
                    NoteModel noteModel = NoteModel(
                        title: title!,
                        subTitle: subtitle!,
                        date: formattedDate.toString(),
                        color: Colors.blue.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);

                    BlocProvider.of<NotesCubit>(context).fetchNotes();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
        ),
        const SizedBox(
          height: 16,
        )
      ]),
    );
  }
}
