part of 'similler_books_cubit.dart';

sealed class SimillerBooksState extends Equatable {
  const SimillerBooksState();

  @override
  List<Object> get props => [];
}

final class SimillerBooksInitial extends SimillerBooksState {}

final class SimillerBooksSuccess extends SimillerBooksState {
  final List<BookModel> books;

  const SimillerBooksSuccess({required this.books});
}

final class SimillerBooksFailuer extends SimillerBooksState {
  final String errMessage;

  const SimillerBooksFailuer({required this.errMessage});
}

final class SimillerBooksLoading extends SimillerBooksState {}
