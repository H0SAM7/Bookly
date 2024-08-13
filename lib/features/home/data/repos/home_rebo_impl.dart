import 'package:bookly/core/errors/failuers.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo{
  @override
  Future<Either<Failuer, List<BookModel>>> featchAllbooks() {
    // TODO: implement featchAllbooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failuer, List<BookModel>>> featchBestSallerBooks() {
    // TODO: implement featchBestSallerBooks
    throw UnimplementedError();
  }

}