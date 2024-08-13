import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_rebo_impl.dart';
import 'package:equatable/equatable.dart';

part 'all_books_state.dart';

class AllBooksCubit extends Cubit<AllBooksState> {
  AllBooksCubit() : super(AllBooksInitial());



  getAllBooks(){
    emit(AllBooksLoading());
    HomeRepoImpl().featchAllbooks();
  }
}
