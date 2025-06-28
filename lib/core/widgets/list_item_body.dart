
import 'package:flutter/material.dart';
import 'package:profile/core/widgets/list_item_icons.dart';

class ListItemBody extends StatelessWidget {
  const ListItemBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            'assets/nightstand.jpg',
            width: 70,
            height: 70,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Serenity Nightstand",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xFFD48D7C),
                ),
              ),
              SizedBox(height: 4),
              Text(
                "In a looreet purus. Integer turpis quam, looreet id orci nec, ultrices...",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        ListItemIcons(),
      ],
    );
  }
}
