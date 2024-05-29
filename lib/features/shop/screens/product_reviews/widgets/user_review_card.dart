import 'package:e_commerce_app/common/widgets/custom_shape/container/circular_container.dart';
import 'package:e_commerce_app/common/widgets/products/rating/rating_bar_indicator.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunction.isDarkMode(context);
    return Column(children: [
      SizedBox(height: TSize.spaceBtwItems,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(TImages.userProfileImage1),
              ),
              const SizedBox(width: TSize.spaceBtwItems),
              Text("John Doe", style: Theme.of(context).textTheme.titleLarge),
            ],
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      const SizedBox(height: TSize.spaceBtwItems),
      //review
      Row(
        children: [
          const RRatingBarIndicator(rating: 4),
          const SizedBox(width: TSize.spaceBtwItems),
          Text('01 May, 2024', style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
      const SizedBox(height: TSize.spaceBtwItems),
      const ReadMoreText(
        'The user interface of the app is quite intuitive. I was able to navigate and make purchsaes seamlessly. Great job,The user interface of the app is quite intuitive. I was able to navigate and make purchsaes seamlessly. Great jobThe user interface of the app is quite intuitive. I was able to navigate and make purchsaes seamlessly. Great jobThe user interface of the app is quite intuitive. I was able to navigate and make purchsaes seamlessly. Great jobThe user interface of the app is quite intuitive. I was able to navigate and make purchsaes seamlessly. Great job',
        trimExpandedText: 'show less',
        trimCollapsedText: 'show more',
        trimMode: TrimMode.Line,
        trimLines: 2,
        moreStyle: TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
        lessStyle: TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
      ),
      const SizedBox(height: TSize.spaceBtwItems),
      //company review
      CircularContainer(
        radius: 10,
        backgroundColor: isDark ? TColors.darkerGrey : TColors.grey,
        child: Padding(
          padding: const EdgeInsets.all(TSize.md),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "E Store",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    "02 May, 2023",
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),
              const SizedBox(height: TSize.spaceBtwItems,),
              const ReadMoreText(
                'The user interface of the app is quite intuitive. I was able to navigate and make purchsaes seamlessly. Great job,The user interface of the app is quite intuitive. I was able to navigate and make purchsaes seamlessly. Great job,The user interface of the app is quite intuitive. I was able to navigate and make purchsaes seamlessly. Great job',
                trimExpandedText: 'show less',
                trimCollapsedText: 'show more',
                trimMode: TrimMode.Line,
                trimLines: 2,
                moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: TColors.primary),
                lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: TColors.primary),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
