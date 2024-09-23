import 'package:e_commerce_app/common/widgets/effects/shimmer_effect.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CategoryShimmer extends StatelessWidget {
  const CategoryShimmer({super.key, this.itemCount = 6});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (_, __) {
            return const Column(
              children: [
                //image
                ShimmerEffect(width: 55, height: 55, radius: 55,
                ),
                SizedBox(height: TSize.spaceBtwItems/2,),
                //text
                ShimmerEffect(width: 65, height: 8, radius: 1)
              ],
            );
          },
          separatorBuilder: (_, __) => const SizedBox(
                width: TSize.spaceBtwItems,
              ),
          itemCount: itemCount),
    );
  }
}
