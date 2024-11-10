import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  const ListWidget(
      {super.key, required this.icon, required this.icon2, required this.text});
  final IconData icon;
  final String text;
  final IconData icon2;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: ListTile(
            leading: Icon(icon, color: Colors.blue), // Leading icon
            title: Text(
              text,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: Icon(icon2, color: Colors.grey), // Trailing icon (arrow)
            onTap: () {
              // Handle tap event, e.g., navigate to another screen
            },
          ),
        ));
  }
}
