import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  HomeRepo homeRepo;

  Future<void> getNewestBooks() async {
    emit(NewestBooksLoading());

    Either<Failure, List<BookModel>> result = await homeRepo.fetchNewestBooks();

    result.fold((faliure) {
      emit(NewestBooksFailure(errMessage: faliure.errMessage));
    }, (booksList) {
      emit(NewestBooksSuccess(booksList: booksList));
    });
  }
}
