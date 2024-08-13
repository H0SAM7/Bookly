import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_rebo_impl.dart';
import 'package:equatable/equatable.dart';
part 'news_books_state.dart';

class NewsBooksCubit extends Cubit<NewsBooksState> {
  NewsBooksCubit() : super(NewsBooksInitial());


  Future<void> newsBooks() async {
    emit(NewsBooksLoading());
    var result = await HomeRepoImpl().featchNewsBooks();
    result.fold((failure) => emit(NewsBooksFailure(failure.errMessage!)),
        (books) => emit(NewsBooksSuccess(books)));
  }
}
