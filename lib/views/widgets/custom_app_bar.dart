import 'package:flutter/material.dart';
import 'package:new_notes_app/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final Icon icon ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Text(title, style: TextStyle(color: Colors.white, fontSize: 28)),
          Spacer(),
          CustomSearchIcon(icon:icon ,),
        ],
      ),
    );
  }
}
