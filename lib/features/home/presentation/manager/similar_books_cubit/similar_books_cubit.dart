import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo, this.bookModel)
      : super(SimilarBooksInitial());
  HomeRepo homeRepo;
  BookModel bookModel;

  Future<void> getSimilarBooks() async {
    emit(SimilarBooksLoading());

    Either<Failure, List<BookModel>> result = await homeRepo.fetchSilimarBooks(
        category: bookModel.volumeInfo.categories?[0] ?? "general");

    result.fold((faliure) {
      emit(SimilarBooksFailure(errMessage: faliure.errMessage));
    }, (booksList) {
      emit(SimilarBooksSuccess(booksList: booksList));
    });
  }
}
