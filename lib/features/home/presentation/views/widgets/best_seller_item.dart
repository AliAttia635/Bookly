import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_details.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_image.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: const Row(
        children: [BestSellerImage(), BestSellerDetails()],
      ),
    );
  }
}
