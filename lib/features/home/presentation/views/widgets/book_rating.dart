
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key,  this.mainAxisAlignment= MainAxisAlignment.start});
 final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(Icons.star, color: Colors.yellow, size: 20),
        SizedBox(width: 6.3,),
        Text('4.0',style: Styles.textStyle16,),
           SizedBox(width: 5,),
        Text('(4000)'),
      ],
    );
  }
}