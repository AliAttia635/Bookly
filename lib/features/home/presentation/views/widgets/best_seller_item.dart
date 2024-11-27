import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_details.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_image.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        // color: Colors.red,
        child: SizedBox(
          // CrossAxisAlignment.start بتعمل نفس شغل ال
          height: MediaQuery.of(context).size.height * .2,
          child: const Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [BestSellerImage(), BestSellerDetails()],
          ),
        ),
      ),
    );
  }
}
