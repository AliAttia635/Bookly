import 'package:bookly_app/features/home/presentation/views/widgets/custom_featured_item.dart';
import 'package:flutter/material.dart';

class ListViewFeaturedItem extends StatelessWidget {
  const ListViewFeaturedItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .29,
      child: ListView.builder(
          itemCount: 7,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CustomFeaturedItem();
          }),
    );
  }
}
