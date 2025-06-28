import 'package:flutter/material.dart';
import 'package:profile/core/constants/constants.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator(color: primaryColor,));
  }
}