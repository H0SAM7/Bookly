
import 'package:bookly/core/utils/app_routes.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSallerItem extends StatelessWidget {
  const BestSallerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRoutes.kBookDetails);
      },
      child: Row(
        children: [
          SizedBox(
            height: 120,
            child: AspectRatio(
              aspectRatio: 2.8 / 4,
              child: Container(
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    image: DecorationImage(
                      image: AssetImage(AssetsHelper.test),
                      fit: BoxFit.fill,
                    )),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Best Seller Best Seller Best Seller Best SellerBest SellerBest Seller Best Seller Best SellerBest Seller Best SellerBest SellerBest Seller Best SellerBest Seller Best Seller',
                  style: Styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'tttttttttttttttttttttttttt',
                  style: Styles.textStyle14,
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      'Free',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      )
                      
                    ),
                    const Spacer(),
                    BookRating()
                   
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

