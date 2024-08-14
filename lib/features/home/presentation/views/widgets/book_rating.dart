import 'package:bookly/core/utils/style.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start, required this.bookModel});
  final MainAxisAlignment mainAxisAlignment;
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children:  [
        const Icon(Icons.star, color: Colors.yellow, size: 20),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          bookModel.volumeInfo.averageRating.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text('(${bookModel.volumeInfo.ratingsCount})'),
      ],
    );
  }
}
