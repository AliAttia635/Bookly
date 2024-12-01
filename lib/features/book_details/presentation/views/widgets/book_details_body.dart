import 'package:bookly_app/core/constants/assets/assets_images.dart';
import 'package:bookly_app/core/constants/fonts/fonts.dart';
import 'package:bookly_app/core/shared_widgets/rating.dart';
import 'package:bookly_app/core/themes/styles.dart';
import 'package:bookly_app/features/book_details/presentation/views/widgets/book_image.dart';
import 'package:bookly_app/features/book_details/presentation/views/widgets/price_and_free_preview.dart';
import 'package:bookly_app/features/book_details/presentation/views/widgets/similar_books_item.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const BookImage(),
          Text(
            "The Jungle Book",
            style: Styles.textStyle30.copyWith(
                fontFamily: kGtSectraFine, fontWeight: FontWeight.bold),
          ),
          Text(
            "RudYard Kipling",
            style: Styles.textStyle16.copyWith(color: Colors.grey),
          ),
          const SizedBox(
            height: 5,
          ),
          const Rating(
            rate: 4.8,
            ratingNumber: 2390,
          ),
          const SizedBox(
            height: 30,
          ),
          const PriceAndFreePreveiw(),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              "you may also like",
              style: Styles.textStyle14,
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 9,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SimilarBooksItem();
                }),
          )
        ],
      ),
    );
  }
}
