
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.star, color: Colors.yellow, size: 20),
        SizedBox(width: 6.3,),
        Text('4.0',style: Styles.textStyle16,),
           SizedBox(width: 5,),
        Text('(4000)'),
      ],
    );
  }
}