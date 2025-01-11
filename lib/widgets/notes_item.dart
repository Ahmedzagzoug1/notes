import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note/widgets/edit_note_view.dart';

class NotesItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: (){Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>EditNoteView())
      );
      },child: Container(
        decoration: BoxDecoration(
          color: Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16)
        ),
        child: Padding(padding: EdgeInsets.only(left: 16,top: 24,bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text('Flutter Tips', style: TextStyle(color: Colors.black, 
              fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('build with Ahmed Elsaghier' ,
                 style: TextStyle(color: Colors.black.withOpacity(0.4),
                fontSize: 20)),
              ),
              trailing: IconButton(onPressed: (){},icon:Icon( FontAwesomeIcons.trash,
              color: Colors.black,size: 26,),)
            ),

            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text('jun 11, 2025',
               style: TextStyle(color: Colors.black.withOpacity(0.4))),
            )
          ],
        ),),
      ),
    );
  }
}