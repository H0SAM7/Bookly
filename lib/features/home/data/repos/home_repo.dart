import 'package:bookly/core/errors/failuers.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failuer, List<BookModel>>> featchAllbooks();
  Future<Either<Failuer, List<BookModel>>> featchBestSallerBooks();
}
