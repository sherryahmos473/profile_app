import 'package:flutter/material.dart';
import 'package:profile/core/widgets/profile_listview_item.dart';
import 'package:profile/data/models/profile_listview_item_model.dart';

class ProfileListview extends StatelessWidget {
  ProfileListview({super.key});

  final List<ItemModel> items = [
    ItemModel(icon: Icons.key, title: 'privacy Policy'),
    ItemModel(icon: Icons.payment_outlined, title: 'Payment Methods'),
    ItemModel(
        icon: Icons.notifications_active_outlined, title: 'Notifications'),
    ItemModel(icon: Icons.settings_outlined, title: 'Settings'),
    ItemModel(icon: Icons.headphones_outlined, title: 'Help'),
    ItemModel(icon: Icons.logout, title: 'Logout'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ProfileListviewItem(item: items[index]);
      },
    );
  }
}
