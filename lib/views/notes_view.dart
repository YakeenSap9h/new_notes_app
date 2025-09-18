import 'package:flutter/material.dart';
import 'package:new_notes_app/views/widgets/add_bottom_sheet_body.dart';
import 'package:new_notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const AddBottomSheetBody();
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
