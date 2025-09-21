import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:new_notes_app/views/widgets/add_note_form.dart';

class AddBottomSheetBody extends StatelessWidget {
  const AddBottomSheetBody({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print(
              "Failed to add note: ${state.errorMessage} llllllllllllllllllllllllllllllll",
            );
          }
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child:const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16),
              child:  SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
      ),
    );
  }
}
