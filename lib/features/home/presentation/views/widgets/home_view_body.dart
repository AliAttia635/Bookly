import 'package:bookly_app/core/constants/assets/assets_images.dart';
import 'package:bookly_app/core/themes/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_featured_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/list_view_best_seller.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/list_view_featured_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListViewFeaturedItem(),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Best Seller",
              style: Styles.textStyle18,
              // textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 20,
            ),
            ListViewBestSeller()
          ],
        ),
      ),
    );
  }
}