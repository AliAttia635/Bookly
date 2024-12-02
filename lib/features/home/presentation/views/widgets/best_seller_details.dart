import 'package:bookly_app/core/constants/fonts/fonts.dart';
import 'package:bookly_app/core/shared_widgets/rating.dart';
import 'package:bookly_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class BestSellerDetails extends StatelessWidget {
  const BestSellerDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              "Harry Potter And the Goblet of fire",
              style: Styles.textStyle20.copyWith(
                fontFamily: kGtSectraFine,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              "RudYard Kipling",
              style: Styles.textStyle14,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "19.99 \$",
                  style:
                      Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
                ),
                const Rating(
                  rate: 4.8,
                  ratingNumber: 2390,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
