import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profile/core/constants/constants.dart';

class ListItemIcons extends StatelessWidget {
  const ListItemIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            border: Border.all(
              color: primaryColor,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Icon(
            FontAwesomeIcons.trashCan,
            size: 14,
            color: primaryColor,
          ),
        ),
        SizedBox(width: 8),
        Icon(Icons.add_circle_outline_outlined,
            size: 24, color: primaryColor),
      ],
    );
  }
}

