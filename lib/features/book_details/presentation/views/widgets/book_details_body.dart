import 'package:bookly_app/core/constants/fonts/fonts.dart';
import 'package:bookly_app/core/shared_widgets/custom_book_image.dart';
import 'package:bookly_app/core/shared_widgets/rating.dart';
import 'package:bookly_app/core/themes/styles.dart';

import 'package:bookly_app/features/book_details/presentation/views/widgets/price_and_free_preview.dart';

import 'package:bookly_app/features/book_details/presentation/views/widgets/similar_books_list_view.dart';
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
          const CustomBookImage(
            imageUrl:
                'https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/457367216_1129441098538794_3374373838008407674_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeFxwpM5TwsKW0L5_rZQHID2ScYZBUFxgr1JxhkFQXGCvZI3_yPsJ_eatld9xoKfQpVbAIIpkJaI9dVZ5djdYRO8&_nc_ohc=wA-J7Iv9xl4Q7kNvgFh92Xc&_nc_zt=23&_nc_ht=scontent.fcai20-6.fna&_nc_gid=ALAJoi5yuMzXdo03QkC0JC0&oh=00_AYAAlbnxGtHLimI38I7nsRfuCS2_UI8OCDO6m9Wj4Vt8tw&oe=67576DFE',
          ),
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
          Rating(
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
          const SimilarBooksListView()
        ],
      ),
    );
  }
}
