import 'package:bookly/core/errors/failuers.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> featchAllbooks() async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> featchNewsBooks() async {
    try {
      var data = await ApiServices().getAllBooks(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');

      List<BookModel> books = [];
      for (var book in data['items']) {
        books.add(BookModel.fromJson(book));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
