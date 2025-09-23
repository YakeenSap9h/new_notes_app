import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:new_notes_app/models/note_model.dart';
import 'package:new_notes_app/views/notes_edit_view.dart';

class NoteViewItem extends StatelessWidget {
  const NoteViewItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, NotesEditView.id);
      },
      child: Container(
        padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),

              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  note.subTitle,
                  style: TextStyle(
                    color: Color(0xff7F663E).withValues(alpha: 0.5),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                },
                icon: Icon(FontAwesomeIcons.trash),
                color: Colors.black,
                iconSize: 34,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                note.date,
                style: TextStyle(
                  color: Color(0xff7F663E).withValues(alpha: 0.5),
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
