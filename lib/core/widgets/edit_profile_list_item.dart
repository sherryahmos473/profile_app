import 'package:flutter/material.dart';
import 'package:profile/core/widgets/custom_textfield.dart';
import 'package:profile/core/widgets/custom_textfield_title.dart';

class EditProfileListItem extends StatelessWidget {
  const EditProfileListItem({super.key, required this.title, required this.controller});
  final String title;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextfieldTitle(title: title),
          const SizedBox(height: 8),
          CustomTextfield(controller: controller,)
        ],
      ),
    );
  }
}
