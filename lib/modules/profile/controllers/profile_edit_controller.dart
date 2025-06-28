import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile/modules/profile/controllers/profile_controller.dart';

enum UpdateStatus { idle, loading, success, error }

class ProfileEditController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final dobController = TextEditingController();

  RxBool gender = true.obs;
  Rx<UpdateStatus> updateStatus = UpdateStatus.idle.obs;

  @override
  void onInit() {
    final user = Get.find<ProfileController>().user.value;
    nameController.text = user?.name ?? '';
    emailController.text = user?.email ?? '';
    phoneController.text = user?.mobileNumber ?? '';
    dobController.text = user?.dateOfBirth ?? '';
    gender.value = user?.gender ?? true;

    super.onInit();
  }

  void updateGender(bool value) {
    gender.value = value;
  }

  Future<void> updateUserDataInFirestore() async {
    updateStatus.value = UpdateStatus.loading;
    try {
      await FirebaseFirestore.instance.collection('user').doc('user').update({
        'name': nameController.text,
        'email': emailController.text,
        'mobileNumber': phoneController.text,
        'dateOfBirth': dobController.text,
        'gender': gender.value,
      });
      print("✅ Data updated successfully");
      updateStatus.value = UpdateStatus.success;
      final profileController = Get.find<ProfileController>();
      await profileController.fetchUserData();
    } catch (e) {
      updateStatus.value = UpdateStatus.error;
      print("❌ Failed to update user data: $e");
    }
  }
}
