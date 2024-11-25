import 'package:flutter/material.dart';

class BestSellerDetails extends StatelessWidget {
  const BestSellerDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        children: [
          ListTile(
            title: Text(
              "the jungle book",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
            subtitle: Text("RudYard Kipling"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "19.99 \$",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
                Text("4.8 (2390)")
              ],
            ),
          )
        ],
      ),
    );
  }
}
