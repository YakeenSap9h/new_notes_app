import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:new_notes_app/consts.dart';
import 'package:new_notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:new_notes_app/models/note_model.dart';
import 'package:new_notes_app/simple_bloc_obsererver.dart';
import 'package:new_notes_app/views/notes_edit_view.dart';
import 'package:new_notes_app/views/notes_view.dart';

void main() async {
  Bloc.observer = SimplBlocoberver();
  await Hive.initFlutter();

  await Hive.openBox<NoteModel>(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AddNoteCubit())],
      child: MaterialApp(
        routes: {
          NotesEditView.id: (context) => NotesEditView(),
          NotesView.id: (context) => NotesView(),
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),

        initialRoute: NotesView.id,
      ),
    );
  }
}
