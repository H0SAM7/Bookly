import 'dart:developer';

import 'package:bookly/core/widgets/custom_loading_indecator.dart';
import 'package:bookly/core/widgets/err_widget.dart';
import 'package:bookly/features/home/presentation/manager/all_books_cubit/all_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllBooksCubit, AllBooksState>(
      builder: (context, state) {
      if(state is AllBooksSuccess){
        log('Doneeeeeeeee');
          return SizedBox(
          height: MediaQuery.of(context).size.height * .25,
          child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, ind) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomBookImage(),
                );
              }),
        );
      }
      else if(state is AllBooksLoading){
        return const CustomLoadingIndecator();
      }
      else{
        return const ErrWidget();
      }
      },
    );
  }
}
