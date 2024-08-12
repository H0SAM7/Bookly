import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.image, this.icon, this.onTap});
  final String image;
  final IconData? icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24),
      child: Row(
        children: [
          Image.asset(
            image,
            height: 18,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                //   GoRouter.of(context).push(AppRouter.kSearchView);
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
