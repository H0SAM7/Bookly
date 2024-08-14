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
          child: const CustomBookImage(
            image:
                'https://images.unsplash.com/photo-1579202673506-ca3ce28943ef',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        const Text(
          'The Apple Book',
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
