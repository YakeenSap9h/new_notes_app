import 'package:flutter/material.dart';
import 'package:new_notes_app/models/note_model.dart';
import 'package:new_notes_app/views/widgets/edite_notes_view_body.dart';

class NotesEditView extends StatelessWidget {
  const NotesEditView({super.key});
  static final String id = "NotesEditView";
  
  @override
  Widget build(BuildContext context) {    
    NoteModel note = ModalRoute.of(context)!.settings.arguments as NoteModel;
    return Scaffold(body: EditeNotesViewBody(note:  note,));
  }
}
