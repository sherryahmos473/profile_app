
import 'package:flutter/material.dart';

class ListItemDetails extends StatelessWidget {
  const ListItemDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text("\$7.50", style: TextStyle(fontWeight: FontWeight.bold)),
        Text("1x uds.", style: TextStyle(fontWeight: FontWeight.bold)),
        Text("Total: \$7.50",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
      ],
    );
  }
}
