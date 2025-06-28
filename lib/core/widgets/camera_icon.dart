import 'package:flutter/material.dart';
import 'package:profile/core/constants/constants.dart';

class CameraIcon extends StatelessWidget {
  const CameraIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: CircleAvatar(
        radius: 20,
        backgroundColor: primaryColor,
        child: IconButton(
          icon: const Icon(Icons.camera_alt_outlined,
              color: kdarkOrange),
          onPressed: () {
            // Add your edit profile logic here
          },
        ),
      ),
    );
  }
}
