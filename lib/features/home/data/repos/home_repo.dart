import 'package:bookly/core/errors/failuers.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> featchAllbooks();
  Future<Either<Failure, List<BookModel>>> featchNewsBooks();
  Future<Either<Failure, List<BookModel>>> featchSimillerBooks({required String category});
}
