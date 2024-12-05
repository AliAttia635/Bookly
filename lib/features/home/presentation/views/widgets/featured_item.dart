import 'package:bookly_app/core/constants/assets/assets_images.dart';
import 'package:bookly_app/core/shared_widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: SizedBox(
        // the aspectRatio takes its height from listview.builder sizedBox not from this sizedBox
        // height: MediaQuery.of(context).size.height * .29,
        child: AspectRatio(
            aspectRatio: 1.95 / 3, child: CustomBookImage(imageUrl: imageUrl)),
      ),
    );
  }
}
