import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: Colors.amber,
          image: DecorationImage(
            image: AssetImage(AssetsHelper.test),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

}
