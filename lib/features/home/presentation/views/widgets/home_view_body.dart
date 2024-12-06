import 'package:bookly_app/core/themes/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/list_view_newest_books.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/list_view_featured_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ListViewFeaturedItem(),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Newest Books",
                  style: Styles.textStyle18,
                  // textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 20,
                ),
                const ListViewNewestBooks(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
