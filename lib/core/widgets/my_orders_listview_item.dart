import 'package:flutter/material.dart';
import 'package:profile/core/constants/constants.dart';
import 'package:profile/core/widgets/list_item_body.dart';
import 'package:profile/core/widgets/list_item_details.dart';
import 'package:profile/core/widgets/list_item_header.dart';

class MyOrdersListviewItem extends StatelessWidget {
  const MyOrdersListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        children: [
          ListItemHeader(),
          const Divider(
            color: primaryColor,
          ),
          ListItemBody(),
          const SizedBox(height: 12),
          ListItemDetails(),
        ],
      ),
    );
  }
}
