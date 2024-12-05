import 'package:bookly_app/core/constants/assets/assets_images.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .36,
      // the aspectRatio takes its height from the parent of this item not from this sizedBox , in case the parent didn't have a specified height if will take its height from this sizedBox
      child: AspectRatio(
        aspectRatio: 1.2 / 2,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            imageUrl,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
