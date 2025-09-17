import 'package:flutter/material.dart';
import 'package:new_notes_app/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: const Row(
        children: [
          Text("Notes", style: TextStyle(color: Colors.white, fontSize: 28)),
          Spacer(),
          CustomSearchIcon(),
        ],
      ),
    );
  }
}
