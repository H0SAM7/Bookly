import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.color,
      required this.txtColor,
      this.borderRadius, required this.txt});
  final Color color, txtColor;
  final String txt;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(16),
        ),
      ),
      onPressed: () {},
      child: Text(
        txt,
        style: Styles.textStyle16.copyWith(
          color: txtColor,
          fontWeight: FontWeight.w900,
          fontSize: 18,
        ),
      ),
    );
  }
}
