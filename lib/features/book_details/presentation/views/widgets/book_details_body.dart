import 'package:bookly_app/core/constants/fonts/fonts.dart';
import 'package:bookly_app/core/shared_widgets/custom_book_image.dart';
import 'package:bookly_app/core/shared_widgets/rating.dart';
import 'package:bookly_app/core/themes/styles.dart';

import 'package:bookly_app/features/book_details/presentation/views/widgets/price_and_free_preview.dart';

import 'package:bookly_app/features/book_details/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 6),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomBookImage(
              imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? "",
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              textAlign: TextAlign.center,
              bookModel.volumeInfo.title,
              style: Styles.textStyle30.copyWith(
                  fontFamily: kGtSectraFine, fontWeight: FontWeight.bold),
            ),
            Text(
              bookModel.volumeInfo.authors?[0] ?? "unknown author",
              style: Styles.textStyle16.copyWith(color: Colors.grey),
            ),
            const SizedBox(
              height: 5,
            ),
            Rating(
              rate: bookModel.volumeInfo.averageRating ?? 0,
              ratingNumber: bookModel.volumeInfo.ratingsCount ?? 0,
            ),
            const SizedBox(
              height: 12,
            ),
            PriceAndFreePreveiw(
              bookModel: bookModel,
            ),
            const SizedBox(
              height: 15,
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
            const SimilarBooksListView()
          ],
        ),
      ),
    );
  }
}
