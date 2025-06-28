import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile/core/constants/constants.dart';
import 'package:profile/core/widgets/custom_loading_indicator.dart';
import 'package:profile/modules/profile/controllers/profile_controller.dart';

class ProfileDetails extends StatelessWidget {
  ProfileDetails({super.key});

  final controller = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.fetchState.value == FetchStates.loading) {
        return CustomLoadingIndicator();
      }
      return Column(
        children: [
          Text(
            controller.user.value!.name,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: kdarkOrange,
            ),
          ),
          const SizedBox(height: 10),
          Text.rich(
            TextSpan(
              children: [
                const TextSpan(
                  text: 'ID: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: controller.user.value!.id.toString(),
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}
