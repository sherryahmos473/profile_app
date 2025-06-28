import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile/core/constants/constants.dart';
import 'package:profile/core/widgets/camera_icon.dart';
import 'package:profile/core/widgets/custom_button.dart';
import 'package:profile/core/widgets/custom_profile_image.dart';
import 'package:profile/core/widgets/custom_textfield_title.dart';
import 'package:profile/core/widgets/edit_profile_list_item.dart';
import 'package:profile/core/widgets/gender_selector.dart';
import 'package:profile/core/widgets/profile_details.dart';
import 'package:profile/modules/profile/controllers/profile_edit_controller.dart';

class EditProfileBody extends StatelessWidget {
  const EditProfileBody({super.key});
  @override
  Widget build(BuildContext context) {
    ProfileEditController editController = Get.find<ProfileEditController>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Stack(
            children: [
              CustomProfileImage(),
              CameraIcon(),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          color: kLightOrange,
          child: ProfileDetails(),
        ),
        const SizedBox(height: 10),
        EditProfileListItem(
            title: 'Full Name', controller: editController.nameController),
        EditProfileListItem(
            title: 'Email', controller: editController.emailController),
        EditProfileListItem(
            title: 'Phone Number', controller: editController.phoneController),
        EditProfileListItem(
            title: 'Date of Birth', controller: editController.dobController),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomTextfieldTitle(title: 'Gender'),
        ),
        GenderSelector(),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 30),
          child: Center(child: CustomButton()),
        ),
      ],
    );
  }
}
