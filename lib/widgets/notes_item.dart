import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note/cubits/notes_cubit/notes_cubit.dart';
import 'package:note/models/note_model.dart';
import 'package:note/widgets/edit_note_view.dart';

class NotesItem extends StatelessWidget {
  final NoteModel note;

  const NotesItem({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => EditNoteView(note: note,)));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Color(note.color), borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: EdgeInsets.only(left: 16, top: 24, bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                  title: Text(
                    note.title,
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(note.subTitle,
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.4),
                            fontSize: 20)),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      note.delete();
                      BlocProvider.of<NotesCubit>(context).fetchNotes();
                    },
                    icon: Icon(
                      FontAwesomeIcons.trash,
                      color: Colors.black,
                      size: 26,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(note.date,
                    style: TextStyle(color: Colors.black.withOpacity(0.4))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
