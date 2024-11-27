import 'package:bookly_app/core/constants/fonts/fonts.dart';
import 'package:bookly_app/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              "Harry Potter And the Goblet of fire sdsdsdvdsvsdvsdvsdvsdv",
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
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.solidStar,
                      color: Colors.yellow,
                      size: 16,
                    ),
                    const SizedBox(
                      width: 6.5,
                    ),
                    Text(
                      "4.8",
                      style: Styles.textStyle16,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "(2390)",
                      style: Styles.textStyle14.copyWith(color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
