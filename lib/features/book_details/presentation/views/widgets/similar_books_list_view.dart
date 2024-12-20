import 'package:bookly_app/core/constants/routes/routes.dart';
import 'package:bookly_app/core/shared_widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .18,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: state.booksList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(Routes.kBookDetailsView,
                            extra: state.booksList[index]);
                      },
                      child: CustomBookImage(
                          imageUrl: state.booksList[index].volumeInfo.imageLinks
                                  ?.thumbnail ??
                              ""),
                    ),
                  );
                }),
          );
        } else if (state is SimilarBooksFailure) {
          return Center(
            child: Text(state.errMessage),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
