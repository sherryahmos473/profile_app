
import 'package:flutter/material.dart';
import 'package:profile/core/constants/constants.dart';

class CustomTextfieldTitle extends StatelessWidget {
  const CustomTextfieldTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: TextStyle(
          color: kdarkOrange,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ));
  }
}
