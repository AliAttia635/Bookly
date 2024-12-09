import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/Api/api_service.dart';
import 'package:bookly_app/features/books_search/data/repos/serach_repo.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImplementation implements SerachRepo {
  final ApiService apiService;

  SearchRepoImplementation(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchSerachedBooks(
      {required String bookName}) async {
    try {
      var data = await apiService.get(endPoint: 'volumes?q=$bookName');
      return right(data['items']
          .map<BookModel>((item) => BookModel.fromJson(item))
          .toList());
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
