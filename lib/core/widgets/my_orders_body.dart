import 'package:flutter/material.dart';
import 'package:profile/core/widgets/my_orders_listview_item.dart';

class MyOrdersBody extends StatelessWidget {
  const MyOrdersBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => MyOrdersListviewItem(),
      itemCount: 5,
    );
  }
}
