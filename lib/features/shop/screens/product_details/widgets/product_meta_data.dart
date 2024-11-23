import 'package:e_commerce_app/common/images/circular_image.dart';
import 'package:e_commerce_app/common/widgets/text_widget/brand_title_text_with_verification_icon.dart';
import 'package:e_commerce_app/common/widgets/text_widget/product_price_text.dart';
import 'package:e_commerce_app/common/widgets/text_widget/product_title_text.dart';
import 'package:e_commerce_app/features/shop/models/category_model.dart';
import 'package:e_commerce_app/utils/constants/enums.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key, this.productDetail});
  final CategoryModel? productDetail;


  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///Price & Sale Price
        Row(
          children: [
            //Sale tag
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(TSize.sm),
                  color: TColors.secondary.withOpacity(0.8)),
              child: Text(
                "25%",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .apply(color: TColors.black),
              ),
            ),
            const SizedBox(
              width: TSize.spaceBtwItems,
            ),
            //price
            Text(
              "\$250",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: TSize.spaceBtwItems,
            ),
            const ProductPriceText(
              price: '175',
              isLarge: true,
            )
          ],
        ),
        const SizedBox(
          height: TSize.spaceBtwItems / 1.5,
        ),

        ///Title
         ProductTitleText(title: productDetail!.name),
        const SizedBox(
          height: TSize.spaceBtwItems / 1.5,
        ),
        //stock status
        Row(
          children: [
            const ProductTitleText(title: 'Status'),
            const SizedBox(
              width: TSize.spaceBtwItems,
            ),
            Text(
              'In Stock',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(
          height: TSize.spaceBtwItems / 1.5,
        ),

        ///Brand
        Row(
          children: [
            CircularImage(image: TImages.shoeIcon,
            width: 32,height: 32,
            overlayColor: darkMode?TColors.white:TColors.black,),
             BrandTitleWithVerifiedIcon(
              title: productDetail!.name,
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
