import 'package:bookly/core/utils/app_routes.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:bookly/core/widgets/custom_cached_image.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem(
      {super.key, required this.image, required this.bookModel});
  final String image;
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.kBookDetails, extra: bookModel);
      },
      child: Row(
        children: [
          SizedBox(height: 120, child: CustomImage(image: image)),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bookModel.volumeInfo.title,
                  style: Styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  bookModel.volumeInfo.authors![0],
                  style: Styles.textStyle14,
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    const Text(
                      'Free',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    BookRating(
                      bookModel: bookModel,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
