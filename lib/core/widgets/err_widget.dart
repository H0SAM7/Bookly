import 'package:flutter/material.dart';

class ErrWidget extends StatelessWidget {
  const ErrWidget({super.key, required this.errMess});
  final String errMess;
  @override
  Widget build(BuildContext context) {
    return  Text(errMess);
  }
}