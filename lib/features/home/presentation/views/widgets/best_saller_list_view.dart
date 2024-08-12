import 'package:bookly/features/home/presentation/views/widgets/best_saller_item.dart';
import 'package:flutter/material.dart';

class BestSallerListView extends StatelessWidget {
  const BestSallerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context, ind) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: BestSallerItem(),
            );
          }),
    );
  }
}
