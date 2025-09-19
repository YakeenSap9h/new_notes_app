import 'package:flutter/material.dart';
import 'package:new_notes_app/views/widgets/custom_app_bar.dart';
import 'package:new_notes_app/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
         CustomAppBar(title: "Notes", icon:Icons.search ,),
          SizedBox(height: 20),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
