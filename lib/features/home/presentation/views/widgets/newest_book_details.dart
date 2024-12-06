import 'package:bookly_app/core/constants/fonts/fonts.dart';
import 'package:bookly_app/core/shared_widgets/rating.dart';
import 'package:bookly_app/core/themes/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class NewestBookDetails extends StatelessWidget {
  const NewestBookDetails({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              bookModel.volumeInfo.title,
              style: Styles.textStyle20.copyWith(
                fontFamily: kGtSectraFine,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              bookModel.volumeInfo.authors[0],
              style: Styles.textStyle14,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Free",
                  style:
                      Styles.textStyle18.copyWith(fontWeight: FontWeight.bold),
                ),
                Rating(
                  rate: bookModel.volumeInfo.averageRating ?? 0,
                  ratingNumber: bookModel.volumeInfo.ratingsCount ?? 0,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
