import 'package:flutter/material.dart';
import 'package:new_notes_app/views/widgets/custom_text_field.dart';

class AddBottomSheetBody extends StatelessWidget {
  const AddBottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: [SizedBox(height: 32), CustomTextField()]),
      ),
    );
  }
}
