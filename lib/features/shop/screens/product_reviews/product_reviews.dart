import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:e_commerce_app/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/rating/rating_bar_indicator.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: const TAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),
      //body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                    "Rating and reviews are verified and are from people who use the same type of device that you use"),
                const SizedBox(
                  height: TSize.spaceBtwItems,
                ),
                //overall product rating
                Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Text(
                          '4.8',
                          style: Theme.of(context).textTheme.displayLarge,
                        )),
                    const Expanded(
                      flex: 7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProgressIndicatorAndRating(
                            text: '5',
                            value: 1,
                          ),
                          ProgressIndicatorAndRating(
                            text: '4',
                            value: 0.8,
                          ),
                          ProgressIndicatorAndRating(
                            text: '3',
                            value: 0.6,
                          ),
                          ProgressIndicatorAndRating(
                            text: '2',
                            value: 0.4,
                          ),
                          ProgressIndicatorAndRating(
                            text: '1',
                            value: 0.2,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                //rating
                RRatingBarIndicator(
                  rating: 3.5,
                ),
                Text("1230", style: Theme.of(context).textTheme.bodyMedium),
                SizedBox(height: TSize.spaceBtwItems),

                //user review
                Container(
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return  UserReviewCard();
                    },
                  ),
                )

                // UserReviewCard(),
                // UserReviewCard(),
                // UserReviewCard(),
              ],
            ),
          ),
        ),

    );
  }
}
