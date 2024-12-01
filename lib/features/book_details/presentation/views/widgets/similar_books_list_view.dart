import 'package:bookly_app/features/book_details/presentation/views/widgets/similar_books_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 9,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return SimilarBooksItem();
          }),
    );
  }
}
