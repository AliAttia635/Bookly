import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  HomeRepo homeRepo;

  Future<void> getFeaturedBooks() async {
    emit(FeaturedBooksLoading());

    Either<Failure, List<BookModel>> result =
        await homeRepo!.fetchFeaturedBooks();
    result.fold((failue) {
      emit(FeaturedBooksFailure(errMessage: failue.errMessage));
    }, (booksList) {
      emit(FeaturedBooksSuccess(booksList: booksList));
    });
  }
}
