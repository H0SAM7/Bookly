import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context, ind) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              // child: BookListViewItem(
              //   image:
              //       'https://images.unsplash.com/photo-1579202673506-ca3ce28943ef',
                    
              // ),
            );
          }),
    );
  }
}
