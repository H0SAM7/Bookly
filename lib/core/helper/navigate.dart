import 'package:flutter/material.dart';
import 'package:get/get.dart';

const Duration kDelayDuration = Duration(seconds: 2);
const Duration kTransitionDuration = Duration(milliseconds: 600);
const Transition kTransitionType = Transition.leftToRight;

void navigateToPage(Widget page) {
  Future.delayed(
    kDelayDuration,
    () {
      Get.to(() => page,
          transition: kTransitionType,
          duration: kTransitionDuration);
    },
  );
}
