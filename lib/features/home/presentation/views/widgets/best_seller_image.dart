import 'package:bookly_app/core/constants/assets/assets_images.dart';
import 'package:flutter/material.dart';

class BestSellerImage extends StatelessWidget {
  const BestSellerImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: AspectRatio(
        aspectRatio: 1.2 / 2,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
                image: AssetImage(AssetsImages.testFlick), fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
