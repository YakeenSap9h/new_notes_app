import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:new_notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:new_notes_app/views/widgets/add_note_form.dart';

class AddBottomSheetBody extends StatelessWidget {
  const AddBottomSheetBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
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
              return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading ? true : false,
                child: const AddNoteForm(),
              );
            },
          ),
        ),
      ),
    );
  }
}
