import 'package:e_commerce_app/common/widgets/icon/circular_icon.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: TSize.defaultSpace, vertical: TSize.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? TColors.darkerGrey : TColors.light,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(
                TSize.cardRadiusLg,
              ),
              topRight: Radius.circular(TSize.cardRadiusLg))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircularIcon(
                iconColor: TColors.white,
                width: 40,
                height: 40,
                backgroundColor: true,
                onPressed: () {},
                icon: Iconsax.minus,
              ),
              const SizedBox(
                width: TSize.spaceBtwItems,
              ),
              Text(
                '2',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                width: TSize.spaceBtwItems,
              ),
              CircularIcon(
                iconColor: TColors.white,
                width: 40,
                height: 40,
                backgroundColor: true,
                onPressed: () {},
                icon: Iconsax.add,
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(TSize.md),
              backgroundColor: TColors.black,
              side: BorderSide(color: TColors.black)
            ),
              onPressed: () {}, child: const Text('Add to Cart'))
        ],
      ),
    );
  }
}
