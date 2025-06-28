import 'package:flutter/material.dart';
import 'package:profile/core/widgets/custom_appbar.dart';
import 'package:profile/core/widgets/profile_body.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'My Profile', editIcon: true),
      body: ProfileBody(),
    );
  }
}
