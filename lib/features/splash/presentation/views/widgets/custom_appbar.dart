import 'package:bookly/core/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.icon, this.onTap, required this.widget});

  final IconData? icon;
  final Widget widget;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24),
      child: Row(
        children: [
          widget,
          const Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRoutes.kSearchView);
              },
              icon: Icon(
                icon,
                size: 22,
              ))
        ],
      ),
    );
  }
}
