import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffect extends StatelessWidget {
  const ShimmerEffect(
      {super.key,
      required this.width,
      required this.height,
      required this.radius,
      this.color});

  final double width, height, radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Shimmer.fromColors(
      baseColor: dark ?TColors.primary.withOpacity(0.5) :TColors.grey.withOpacity(0.5),
      highlightColor: dark ? Colors.white.withOpacity(0.4) : Colors.white,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: color ?? (dark ? TColors.darkerGrey : Colors.red),
          borderRadius: BorderRadius.circular(radius)
        ),
      ),
    );
  }
}
