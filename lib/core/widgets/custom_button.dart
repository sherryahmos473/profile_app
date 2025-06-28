import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile/core/constants/constants.dart';
import 'package:profile/modules/profile/controllers/profile_controller.dart';
import 'package:profile/modules/profile/controllers/profile_edit_controller.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: () async {
        final controller = Get.find<ProfileEditController>();
        await controller.updateUserDataInFirestore();
        if (controller.updateStatus.value == UpdateStatus.success) {
          Get.snackbar(
            "✅ Profile Updated",
            "Your profile has been successfully updated.",
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.green.withValues(alpha: 0.7),
            colorText: Colors.white,
          );
        } else if (controller.updateStatus.value == UpdateStatus.error) {
          Get.snackbar(
            "❌ Update Failed",
            "Something went wrong while updating your profile.",
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red.withValues(alpha: 0.7),
            colorText: Colors.white,
          );
          Get.back();
          Get.find<ProfileController>().fetchUserData();
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(
          "Update Profile",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
