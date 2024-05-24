import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/device/device_utility.dart';
import '../../utils/helper/helper_function.dart';
import '../widgets/custom_shape/container/circular_container.dart';
import '../widgets/products/product_card/brand_card.dart';

class BrandShowCase extends StatelessWidget {
  const BrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return CircularContainer(
      height: 195,
      padding: TSize.sm,
      radius: 10,
      showBorder: true,
      backgroundColor: TColors.light.withOpacity(0.8),
      inDarkModeBackgroundColor: Colors.transparent,
      margin: EdgeInsets.only(bottom: TSize.spaceBtwItems),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //brand with product count
          BrandCard(showBorder: false),
          SizedBox(height: TSize.spaceBtwItems,),
          //brand top 3 products
          Row(
            mainAxisSize: MainAxisSize.min,
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: CircularContainer(
        height: 100,
        padding: TSize.sm,
        width: TDeviceUtils.getScreenWidth(context) / 4.5,
        radius: 10,
        backgroundColor: THelperFunction.isDarkMode(context)
            ? TColors.darkerGrey
            : TColors.light,
        margin: const EdgeInsets.only(right: TSize.sm),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
