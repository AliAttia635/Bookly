import 'package:bookly_app/features/home/presentation/manager/newest_books_cuit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/neweset_books_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewNewestBooks extends StatelessWidget {
  const ListViewNewestBooks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            shrinkWrap:
                true, // Ensures the ListView only takes up the space it needs.
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.booksList.length,
            itemBuilder: (context, index) {
              return NewestBooksItem(
                bookModel: state.booksList[index],
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return Text(state.errMessage);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
