import 'dart:developer';

import 'package:bookly/core/widgets/custom_loading_indecator.dart';
import 'package:bookly/core/widgets/err_widget.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/manager/all_books_cubit/all_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/news_books_cubit/news_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBooksCubit, NewsBooksState>(
      builder: (context, state) {
        if (state is AllBooksLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is NewsBooksSuccess && state.books.isNotEmpty) {
          log('loading news books done');
          return NewsBooksListView(
            booksList: state.books,
          );
        } else if (state is NewsBooksFailure) {
          return  ErrWidget(errMess: state.errMessage,);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}

class NewsBooksListView extends StatelessWidget {
  const NewsBooksListView({super.key, required this.booksList});
  final List<BookModel> booksList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: booksList.length,
          itemBuilder: (context, ind) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: BookListViewItem(
                image: booksList[ind].volumeInfo.imageLinks.thumbnail,
                bookModel: booksList[ind],
              ),
            );
          }),
    );
  }
}
