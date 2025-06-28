import 'package:flutter/material.dart';
import 'package:profile/core/widgets/button_list.dart';
import 'package:profile/core/widgets/custom_profile_image.dart';
import 'package:profile/core/widgets/profile_details.dart';
import 'package:profile/core/widgets/profile_listview.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomProfileImage(),
          ProfileDetails(),
          const SizedBox(height: 20),
          ButtonList(),
          const SizedBox(height: 20),
          Expanded(child: ProfileListview()),
        ],
      ),
    );
  }
}
