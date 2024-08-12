
import 'package:bookly/core/utils/style.dart';
import 'package:bookly/features/home/presentation/views/widgets/similler_books_list_view.dart';
import 'package:flutter/material.dart';

class SimillerBooksSection extends StatelessWidget {
  const SimillerBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You Can Also Like',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimillerBooksListView()
      ],
    );
  }
}
