import 'package:bookly_app/core/themes/styles.dart';
import 'package:bookly_app/features/books_search/presentation/views/widgets/custom_text_field.dart';
import 'package:bookly_app/features/books_search/presentation/views/widgets/list_view_search_result.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/neweset_books_item.dart';

import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          CustomTextField(),
          SizedBox(
            height: 10,
          ),
          Text(
            "Serach Result : ",
            style: Styles.textStyle16,
          ),
          SizedBox(
            height: 10,
          ),
          ListViewSearchResult()
        ],
      ),
    );
  }
}
