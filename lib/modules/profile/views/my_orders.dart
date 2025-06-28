import 'package:flutter/material.dart';
import 'package:profile/core/widgets/custom_appbar.dart';
import 'package:profile/core/widgets/my_orders_body.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: 'My Orders',
      ),
      body: MyOrdersBody(),
    );
  }
}
