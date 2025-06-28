import 'package:flutter/material.dart';
import 'package:profile/core/widgets/custom_appbar.dart';
import 'package:profile/core/widgets/edit_profile_body.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Edit Profile'),
      body: Expanded(child: SingleChildScrollView(child: EditProfileBody())),
    );
  }
}
