import 'dart:developer';

import 'package:bookly/core/utils/app_routes.dart';
import 'package:bookly/core/widgets/custom_loading_indecator.dart';
import 'package:bookly/core/widgets/err_widget.dart';
import 'package:bookly/features/home/presentation/manager/all_books_cubit/all_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllBooksCubit, AllBooksState>(
      builder: (context, state) {
        if (state is AllBooksSuccess) {
          log('all books fetched done');
          return SizedBox(
            height: MediaQuery.of(context).size.height * .25,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, ind) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context)
                            .push(AppRoutes.kBookDetails, extra: state.books[ind]);
                      },
                      child: CustomBookImage(
                        image:
                            state.books[ind].volumeInfo.imageLinks?.thumbnail ??
                                '',
                      ),
                    ),
                  );
                }),
          );
        } else if (state is AllBooksFailure) {
          return ErrWidget(
            errMess: state.errMessage,
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
