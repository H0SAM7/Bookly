import 'package:bookly/core/utils/style.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/box_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
 final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .30),
          child:  CustomBookImage(
            image:
                bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
         Text(
          bookModel.volumeInfo.title,
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        const Text(
          'The Apple Book',
          style: Styles.textStyle18,
        ),
         BookRating(
          bookModel: bookModel,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 27,
        ),
        const BoxAction(),
      ],
    );
  }
}
