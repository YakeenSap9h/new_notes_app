import 'package:flutter/material.dart';
import 'package:new_notes_app/views/widgets/edite_notes_view_body.dart';

class NotesEditView extends StatelessWidget {
  const NotesEditView({super.key});
   static  final String id = "NotesEditView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: EditeNotesViewBody(),
    );
  }
}
