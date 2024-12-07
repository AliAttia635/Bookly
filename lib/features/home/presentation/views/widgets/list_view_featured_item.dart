import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewFeaturedItem extends StatelessWidget {
  const ListViewFeaturedItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .31,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.booksList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return FeaturedItem(
                    imageUrl: state.booksList[index].volumeInfo.imageLinks
                            ?.thumbnail ??
                        "https://media.istockphoto.com/id/2060984408/photo/stack-of-colorful-books-education-background-back-to-school-book-hardback-colorful-books-on.jpg?s=2048x2048&w=is&k=20&c=fMIu6GS3-sZtPEOMbFVhzFEgu3voYWaLJkuWXaFRsxY=",
                  );
                }),
          );
        } else if (state is FeaturedBooksFailure) {
          return Center(
            child: Text(state.errMessage),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
