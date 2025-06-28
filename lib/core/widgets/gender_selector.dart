import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile/core/widgets/gender_selector_body.dart';
import 'package:profile/modules/profile/controllers/profile_edit_controller.dart';

class GenderSelector extends StatelessWidget {
  GenderSelector({super.key});

  final controller = Get.find<ProfileEditController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Row(
          children: [
            Expanded(
              child: GenderSelectorBody(
                gender: 'Male',
                isSelected: controller.gender.value == true,
                onTap: () => controller.updateGender(true),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: GenderSelectorBody(
                gender: 'Female',
                isSelected: controller.gender.value == false,
                onTap: () => controller.updateGender(false),
              ),
            ),
          ],
        ),
      );
    });
  }
}
