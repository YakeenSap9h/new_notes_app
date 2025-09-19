import 'package:flutter/material.dart';
import 'package:new_notes_app/views/widgets/custom_app_bar.dart';


class EditeNotesViewBody extends StatelessWidget {
  const EditeNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(height: 50),
          CustomAppBar(title: "Edit Note", icon: Icons.check)
         
        ],
      ),
    );
  }
}
