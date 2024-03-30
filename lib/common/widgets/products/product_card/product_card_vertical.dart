import 'package:e_commerce_app/common/images/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/custom_shape/container/circular_container.dart';
import 'package:e_commerce_app/common/widgets/icon/circular_icon.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

import '../../../styles/shadow.dart';

class ProductVerticalCard extends StatelessWidget {
  const ProductVerticalCard({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = THelperFunction.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [ShadowStyle.verticalBoxShadow],
        borderRadius: BorderRadius.circular(TSize.productImageRadius),
        color: isDarkMode ? TColors.darkerGrey : TColors.light,
      ),
      child: Column(
        children: [
          //Thumbnail ,WishList button,Discount Tag
          CircularContainer(
            height: 180,
            padding: TSize.sm,
            backgroundColor: isDarkMode ? TColors.dark : TColors.light,
            child:  Stack(
              children: [
                //thumbnail image
              const  RoundedImage(
                  imageUrl: TImages.productImage1,
                  applyImageRadius: true,
                ),

                ///sale tag
                Positioned(
                  left: 1,
                  top: 12,
                  child: Container(
                    padding:const EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(TSize.sm),color: TColors.secondary.withOpacity(0.7)),
                    child:  Text("25%",style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.black),
                  ),),
                ),
                Positioned(
                  right: 1,
                  child: CircularIcon(onPressed: (){},icon: Iconsax.heart5,),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

