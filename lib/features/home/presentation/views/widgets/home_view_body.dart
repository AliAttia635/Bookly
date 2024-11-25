import 'package:bookly_app/core/constants/assets/assets_images.dart';
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
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const ListViewFeaturedItem(),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Best Seller",
            style: TextStyle(fontSize: 19),
            // textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 25,
          ),
          ListViewBestSeller()
        ],
      ),
    );
  }
}
