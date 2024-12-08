import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/books_search/data/repos/serach_repo.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.serachRepo) : super(SearchBooksInitial());
  final SerachRepo serachRepo;

  Future<void> serachBooks({required String bookName}) async {
    emit(SearchBooksLoading());

    Either<Failure, List<BookModel>> result =
        await serachRepo.fetchSerachedBooks(bookName: bookName);

    return result.fold((failure) {
      emit(SearchBooksFailure(errMessage: failure.errMessage));
    }, (booksList) {
      emit(SearchBooksSuccess(booksList: booksList));
    });
  }
}
