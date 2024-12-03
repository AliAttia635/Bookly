import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementaion implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplementaion(this.apiService);

  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?filters=free-ebooks&sort=newest&q=subject:programming');

      // List<BookModel> books = [];
      // for (var item in data['items']) {
      //   books.add(BookModel.fromJson(item));
      // }

      return right(
          data['items'].map((item) => BookModel.fromJson(item)).toList());
    } on Exception catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
