import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile/core/widgets/custom_loading_indicator.dart';
import 'package:profile/modules/profile/controllers/profile_controller.dart';

class CustomProfileImage extends StatelessWidget {
  const CustomProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProfileController>();
    return Obx(() {
      if (controller.fetchState.value == FetchStates.loading) {
        return CustomLoadingIndicator();
      } else if (controller.fetchState.value == FetchStates.success) {
        return ClipOval(
          child: Image.network(
            controller.user.value!.image,
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ),
        );
      } else {
        return CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage('assets/profile_picture.jpeg'),
        );
      }
    });
  }
}
