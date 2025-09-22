import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:new_notes_app/views/widgets/add_bottom_sheet_body.dart';
import 'package:new_notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static final String id = "NotesView";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        body: NotesViewBody(),
      
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff67F0E8),
      
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true ,
              context: context,
              builder: (context) {
                return AddBottomSheetBody();
              },
            );
          },
          child: Icon(Icons.add, color: Colors.black),
        ),
      ),
    );
  }
}
