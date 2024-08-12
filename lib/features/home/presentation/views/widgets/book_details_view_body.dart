import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/splash/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
          child: CustomAppBar(
            widget: IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
            icon: Icons.shopping_cart_outlined,
          ),
        ),
         Padding(

          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.2),
          child: const CustomBookImage(),
        ),
      ],
    );
  }
}
