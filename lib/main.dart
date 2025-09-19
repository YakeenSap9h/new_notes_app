import 'package:flutter/material.dart';
import 'package:new_notes_app/views/notes_edit_view.dart';
import 'package:new_notes_app/views/notes_view.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:
      {
        NotesEditView.id : (context)=> NotesEditView() ,
        NotesView.id : (context)=> NotesView() ,
      } ,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),

      initialRoute: NotesView.id,
    );
  }
}
