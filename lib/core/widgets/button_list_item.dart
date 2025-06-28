import 'package:flutter/material.dart';

class ButtonListItem extends StatelessWidget {
  const ButtonListItem(
      {super.key, required this.icon, required this.label, this.onPressed});
  final IconData icon;
  final String label;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Icon(icon, color: Colors.black54, size: 40),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(color: Colors.black87, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
