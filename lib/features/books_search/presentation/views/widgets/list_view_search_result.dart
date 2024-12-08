import 'package:bookly_app/features/books_search/presentation/manager/serach_books_cubit/search_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/neweset_books_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewSearchResult extends StatelessWidget {
  const ListViewSearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksFailure) {
          return Center(
            child: Text(state.errMessage),
          );
        } else if (state is SearchBooksLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is SearchBooksSuccess) {
          return Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: state.booksList.length,
              itemBuilder: (context, index) {
                // return NewestBooksItem();
                return NewestBooksItem(bookModel: state.booksList[index]);
              },
            ),
          );
        } else {
          return const Center(
            child: Text("start search for books"),
          );
        }
      },
    );
  }
}
