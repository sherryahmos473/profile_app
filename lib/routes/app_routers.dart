import 'package:get/get.dart';
import 'package:profile/modules/profile/bindings/profile_binding.dart';
import 'package:profile/modules/profile/bindings/profile_edit_binding.dart';
import 'package:profile/modules/profile/views/profile.dart';
import 'package:profile/modules/profile/views/profile_edit.dart';
import 'package:profile/modules/profile/views/my_orders.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: '/profile',
      page: () => const Profile(),
      binding: ProfileBinding(),
    ),
    GetPage(
        name: '/profile/edit',
        page: () => const ProfileEdit(),
        binding: ProfileEditBinding()),
    GetPage(
      name: '/profile/my_orders',
      page: () => const MyOrders(),
    ),
  ];
}
