import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/enums.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helper/helper_function.dart';
import '../../../images/circular_image.dart';
import '../../custom_shape/container/circular_container.dart';
import '../../text_widget/brand_title_text_with_verification_icon.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key, required this.showBorder, this.onTap,
  });
  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: CircularContainer(
        radius: 10,
        height: 60,
        showBorder: showBorder,
        padding: TSize.sm,
        backgroundColor: TColors.light,
        inDarkModeBackgroundColor: TColors.dark,
        child: Row(
          children: [
            Flexible(
              child: CircularImage(
                image: TImages.clothIcon,
                backgroundColor:
                THelperFunction.isDarkMode(
                    context)
                    ? TColors.dark
                    : TColors.light,
                overlayColor:
                THelperFunction.isDarkMode(
                    context)
                    ? TColors.white
                    : TColors.black,
              ),
            ),
            const SizedBox(
              height: TSize.spaceBtwItems / 2,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  const BrandTitleWithVerifiedIcon(
                    title: "Nike",
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    "256 products",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
