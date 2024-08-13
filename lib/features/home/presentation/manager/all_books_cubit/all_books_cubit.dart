// import 'package:bloc/bloc.dart';
// import 'package:bookly/features/home/data/models/book_model/book_model.dart';
// import 'package:bookly/features/home/data/repos/home_repo.dart';
// import 'package:equatable/equatable.dart';
// part 'all_books_state.dart';

// class AllBooksCubit extends Cubit<AllBooksState> {
//   AllBooksCubit(this.homeRepo) : super(AllBooksInitial());
//   final HomeRepo homeRepo;

//   Future<void> getAllBooks() async {
//     emit(AllBooksLoading());
//     var result = await homeRepo.featchAllbooks();
//     result.fold((failure) => emit(AllBooksFailure(failure.errMessage!)),
//         (books) => emit(AllBooksSuccess(books)));
//   }
// }
import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_rebo_impl.dart';
import 'package:equatable/equatable.dart';
part 'all_books_state.dart';

class AllBooksCubit extends Cubit<AllBooksState> {
  AllBooksCubit() : super(AllBooksInitial());
  

  Future<void> getAllBooks() async {
    emit(AllBooksLoading());
    var result = await HomeRepoImpl().featchAllbooks();
    result.fold((failure) => emit(AllBooksFailure(failure.errMessage!)),
        (books) => emit(AllBooksSuccess(books)));
  }
}
