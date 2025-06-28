import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile/core/constants/constants.dart';
import 'package:profile/core/widgets/button_list_item.dart';
import 'package:profile/core/widgets/list_divider.dart';
import 'package:profile/modules/profile/views/my_orders.dart';

class ButtonList extends StatelessWidget {
  const ButtonList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonListItem(icon: Icons.person_outlined, label: 'Profile'),
          ListDivider(),
          ButtonListItem(icon: Icons.favorite_border, label: 'Wishlist'),
          ListDivider(),
          ButtonListItem(
            icon: Icons.local_offer_outlined,
            label: 'My Orders',
            onPressed: () {
              Get.to(MyOrders());
            },
          ),
        ],
      ),
    );
  }
}
