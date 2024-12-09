import 'package:bookly_app/core/utils/functions/launch_url.dart';
import 'package:bookly_app/features/book_details/presentation/views/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PriceAndFreePreveiw extends StatelessWidget {
  const PriceAndFreePreveiw({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          const CustomButton(
            text: "free",
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18),
              bottomLeft: Radius.circular(18),
            ),
          ),
          CustomButton(
            onPressed: () async {
              lunchCustomUrl(
                  context: context, url: bookModel.volumeInfo.previewLink);
            },
            text: bookModel.volumeInfo.previewLink == null
                ? 'Not Available'
                : 'preview',
            backgroundColor: const Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(18),
              bottomRight: Radius.circular(18),
            ),
          ),
        ],
      ),
    );
  }
}
