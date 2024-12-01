import 'package:bookly_app/core/constants/assets/assets_images.dart';
import 'package:flutter/material.dart';

class CustomFeaturedItem extends StatelessWidget {
  const CustomFeaturedItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // the aspectRatio takes its height from listview.builder sizedBox not from this sizedBox
      // height: MediaQuery.of(context).size.height * .29,
      child: AspectRatio(
        aspectRatio: 1.95 / 3,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetsImages.testImage,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
