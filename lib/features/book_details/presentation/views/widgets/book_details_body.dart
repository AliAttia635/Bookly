import 'package:bookly_app/core/constants/assets/assets_images.dart';
import 'package:bookly_app/core/constants/fonts/fonts.dart';
import 'package:bookly_app/core/shared_widgets/rating.dart';
import 'package:bookly_app/core/themes/styles.dart';
import 'package:bookly_app/features/book_details/presentation/views/widgets/book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BookImage(),
        Text(
          "The Jungle Book",
          style: Styles.textStyle30
              .copyWith(fontFamily: kGtSectraFine, fontWeight: FontWeight.bold),
        ),
        Text(
          "RudYard Kipling",
          style: Styles.textStyle16.copyWith(color: Colors.grey),
        ),
        SizedBox(
          height: 5,
        ),
        Rating(
          rate: 4.8,
          ratingNumber: 2390,
        ),
      ],
    );
  }
}
