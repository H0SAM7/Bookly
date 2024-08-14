import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:bookly/features/home/presentation/views/widgets/news_books_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_list_view.dart';
import 'package:bookly/features/splash/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                widget: Image.asset(
                  AssetsHelper.logo,
                  height: 18,
                ),
                icon: FontAwesomeIcons.magnifyingGlass,
              ),
              const BooksListView(),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'News Sales',
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: NewsListView(),
          ),
        )
      ],
    ));
  }
}
