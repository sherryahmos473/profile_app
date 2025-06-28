import 'package:flutter/material.dart';
import 'package:profile/core/constants/constants.dart';
import 'package:profile/data/models/profile_listview_item_model.dart';

class ProfileListviewItem extends StatelessWidget {
  const ProfileListviewItem({
    required this.item,
    super.key,
  });
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: primaryColor,
        child: Icon(
          item.icon,
          color: secondaryColor,
          size: 24,
        ),
      ),
      title: Text(
        item.title,
        style: TextStyle(fontSize: 16, color: secondaryColor),
      ),
      onTap: () {},
    );
  }
}
