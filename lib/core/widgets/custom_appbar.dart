import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:profile/core/constants/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.editIcon = false,
  });
  final String title;
  final bool editIcon;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      scrolledUnderElevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Get.back();
        },
      ),
      centerTitle: true,
      title: Text(title,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: primaryColor)),
      actions: editIcon
          ? [
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.penToSquare,
                    color: primaryColor, size: 24),
                onPressed: () {
                  Get.toNamed('/profile/edit');
                },
              )
            ]
          : null,
    );
  }
}
