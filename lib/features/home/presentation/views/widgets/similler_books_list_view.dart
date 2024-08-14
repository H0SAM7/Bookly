import 'package:bookly/core/widgets/custom_loading_indecator.dart';
import 'package:bookly/core/widgets/err_widget.dart';
import 'package:bookly/features/home/presentation/manager/similler_books_cubit/similler_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimillerBooksListView extends StatelessWidget {
  const SimillerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimillerBooksCubit, SimillerBooksState>(
      builder: (context, state) {
        if (state is SimillerBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .25,
            child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, ind) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: CustomBookImage(
                      image:
                          state.books[ind].volumeInfo.imageLinks?.thumbnail ??
                              '',
                    ),
                  );
                }),
          );
        } else if (state is SimillerBooksFailuer) {
          return ErrWidget(errMess: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
