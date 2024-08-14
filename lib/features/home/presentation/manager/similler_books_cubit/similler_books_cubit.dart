import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_rebo_impl.dart';
import 'package:equatable/equatable.dart';
part 'similler_books_state.dart';

class SimillerBooksCubit extends Cubit<SimillerBooksState> {
  SimillerBooksCubit() : super(SimillerBooksInitial());
  Future<void> simillerBooks({required String category}) async {
    emit(SimillerBooksLoading());
    var result = await HomeRepoImpl().featchSimillerBooks(category: category);
    result.fold(
        (failure) =>
            emit(SimillerBooksFailuer(errMessage: failure.errMessage!)),
        (books) => emit(SimillerBooksSuccess(books: books)));
  }
}
