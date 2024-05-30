import 'package:e_commerce_app/common/images/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/custom_shape/container/circular_container.dart';
import 'package:e_commerce_app/common/widgets/icon/circular_icon.dart';
import 'package:e_commerce_app/common/widgets/text_widget/product_title_text.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/product_detail.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../styles/shadow.dart';
import '../../text_widget/brand_title_text_with_verification_icon.dart';

class ProductVerticalCard extends StatelessWidget {
  const ProductVerticalCard({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = THelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: ()=>Get.to(()=>ProductDetails(),transition: Transition.zoom,duration: Duration(seconds: 1)),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalBoxShadow],
          borderRadius: BorderRadius.circular(20),
          color: isDarkMode ? TColors.dark.withOpacity(0.8) : TColors.light,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Thumbnail ,WishList button,Discount Tag
            Container(
              height: 180,
              decoration: BoxDecoration(
                color: isDarkMode ? TColors.dark : TColors.light,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
              ),
              child: Stack(
                children: [
                  ///thumbnail image
                  RoundedImage(
                    backgroundColor: isDarkMode ? TColors.dark : TColors.light,
                    imageUrl: TImages.productImage1,
                    applyImageRadius: true,
                  ),
                  ///sale tag
                  Positioned(
                    left: 1,
                    top: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(TSize.sm),
                          color: TColors.secondary.withOpacity(0.7)),
                      child: Text(
                        "25%",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 1,
                    top: 0,
                    child: CircularIcon(
                        width: 40,
                        height: 40,
                        onPressed: () {},
                        icon: Iconsax.heart5,
                        iconColor: isDarkMode?Colors.red:Colors.red,
                        backgroundColor: false),
                  )
                ],
              ),
            ),
             const Padding(
              padding: EdgeInsets.only(left: TSize.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: "blue Nike shoes",
                  ),
                  SizedBox(
                    height: TSize.spaceBtwItems / 2,
                  ),
                  BrandTitleWithVerifiedIcon(title:"Nike" ,),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$3.5",style: Theme.of(context).textTheme.headlineMedium,),
                Container(
                  width: 55,
                  decoration:  BoxDecoration(
                    color: TColors.black,
                    borderRadius: const BorderRadius.only(topLeft:Radius.circular(TSize.cardRadiusMd),
                      bottomRight: Radius.circular(TSize.productImageRadius),),
                  ),
                  child:const SizedBox(width:TSize.iconLg*1.2 ,height:TSize.iconLg*1.2,child: Center(child: Icon(Iconsax.add,color: TColors.white))) ,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

