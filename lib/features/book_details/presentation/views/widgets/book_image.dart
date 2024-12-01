import 'package:bookly_app/core/constants/assets/assets_images.dart';
import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  const BookImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .35,
      child: AspectRatio(
        aspectRatio: 1.95 / 3,
        child: Container(
          child: Image.asset(
            AssetsImages.testImage,
          ),
        ),
      ),
    );
  }
}
