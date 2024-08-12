import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/splash/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
        child: Column(
          children: [
            CustomAppBar(
              image: AssetsHelper.logo,
              icon: FontAwesomeIcons.magnifyingGlass,
            )
          ],
        ),
      ),
    );
  }
}
