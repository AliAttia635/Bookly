import 'package:bookly_app/core/constants/routes/routes.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/newest_book_details.dart';
import 'package:bookly_app/core/shared_widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewestBooksItem extends StatelessWidget {
  const NewestBooksItem({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(Routes.kBookDetailsView);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Container(
          // color: Colors.red,
          child: SizedBox(
            // CrossAxisAlignment.start بتعمل نفس شغل ال
            height: MediaQuery.of(context).size.height * .2,
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomBookImage(
                  imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
                ),
                NewestBookDetails(
                  bookModel: bookModel,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
