import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/custom_shape/container/circular_container.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.isSelected});

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunction.isDarkMode(context);
    return CircularContainer(
      radius: 10,
      padding: TSize.md,
      margin: EdgeInsets.only(bottom: TSize.spaceBtwItems),
      width: double.infinity,
      showBorder: true,
      backgroundColor: isSelected ?isDark?TColors.primary: TColors.primary.withOpacity(0.6):Colors.transparent,
      child: Stack(
        children: [
          Positioned(
              right: 5,
              top: 0,
              child: Icon(
                isSelected ? Iconsax.tick_circle5 : null,
                color: isSelected
                    ? isDark
                        ? TColors.light
                        : TColors.dark.withOpacity(0.6)
                    : null,
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Ritik kumawat",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge),
              SizedBox(height: TSize.sm / 2),
              Text("(+123) 456 7898",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge),
              SizedBox(height: TSize.sm / 2),
              Text("3b2 Mohali, Chandigarh, Punjab, INDIA Chandigarh, Punjab, INDIA Chandigarh, Punjab, INDIA",
                  softWrap: true,
                  style: Theme.of(context).textTheme.bodyMedium),
            ],
          )
        ],
      ),
    );
  }
}
