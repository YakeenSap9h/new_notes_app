
import 'package:flutter/material.dart';

class NoteViewItem extends StatelessWidget {
  const NoteViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: Color(0xffFDCC7E),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              "Flutter tips",
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),

            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Text(
                "Build your Career with thrwat samy ",
                style: TextStyle(
                  color: Color(0xff7F663E).withValues(alpha: 0.5),
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete),
              color: Colors.black,
              iconSize: 34,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              "Mars 12/2022",
              style: TextStyle(
                color: Color(0xff7F663E).withValues(alpha: 0.5),
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
