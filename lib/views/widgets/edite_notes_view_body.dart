import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:new_notes_app/models/note_model.dart';
import 'package:new_notes_app/views/widgets/custom_app_bar.dart';
import 'package:new_notes_app/views/widgets/custom_text_field.dart';

class EditeNotesViewBody extends StatefulWidget {
  const EditeNotesViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditeNotesViewBody> createState() => _EditeNotesViewBodyState();
}

class _EditeNotesViewBodyState extends State<EditeNotesViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 50),
          CustomAppBar(
            title: "Edit Note",
            icon: Icons.check,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 50),

          CustomTextField(
            hintText: widget.note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 16),

          CustomTextField(
            hintText: widget.note.subTitle,
            maxLines: 5,
            onChanged: (value) {
              content = value;
            },
          ),
        ],
      ),
    );
  }
}
