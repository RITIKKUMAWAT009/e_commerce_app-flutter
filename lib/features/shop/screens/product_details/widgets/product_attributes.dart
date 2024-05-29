import 'package:e_commerce_app/common/widgets/custom_shape/container/circular_container.dart';
import 'package:e_commerce_app/common/widgets/text_widget/product_price_text.dart';
import 'package:e_commerce_app/common/widgets/text_widget/product_title_text.dart';
import 'package:e_commerce_app/common/widgets/text_widget/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';

import 'choice_chip.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunction.isDarkMode(context);
    return Column(
      children: [
        //selected item price and Dsc
        CircularContainer(
          radius: 10,
          padding: TSize.sm,
          backgroundColor: isDark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              //title,price and stock status
              Row(
                children: [
                  const SectionHeading(
                      showActionButton: false,
                      headingText: 'Variation',
                      buttonText: ""),
                  const SizedBox(
                    width: TSize.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ProductTitleText(
                            title: 'Price',
                            smallSize: true,
                          ),
                          const SizedBox(
                            width: TSize.spaceBtwItems,
                          ),
                          //Actual Price
                          Text(
                            "\$125",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: TSize.spaceBtwItems),
                          const ProductPriceText(price: '120'),
                        ],
                      ),
                      Row(
                        children: [
                          const ProductTitleText(
                              title: 'Stock', smallSize: true),
                          const SizedBox(width: TSize.spaceBtwItems),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              //Variation Description
              const ProductTitleText(
                  title:
                      'This is the Description of the Product and it can go upto max 4 lines.',
                  smallSize: true,
                  maxLines: 4),
            ],
          ),
        ),
        const SizedBox(
          height: TSize.spaceBtwItems,
        ),
        //Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(
                showActionButton: false, headingText: 'Colors', buttonText: ""),
            const SizedBox(
              height: TSize.spaceBtwItems / 2,
            ),

            Wrap(
              spacing: 8,
              children: [
              RChoiceChip(
                text: 'Green',
                selected: true,
                onSelected: (value) {},
              ),
              RChoiceChip(text: 'Blue', selected: false, onSelected: (value) {}),
              RChoiceChip(
                  text: 'Yellow', selected: false, onSelected: (value) {}),

            ],)
            ],
        ) ,Column(crossAxisAlignment: CrossAxisAlignment.start
          ,
          children: [
            const SectionHeading(
                showActionButton: false, headingText: 'Sizes', buttonText: ""),
            const SizedBox(
              height: TSize.spaceBtwItems / 2,
            ),
          Wrap(
            spacing: 8,children: [
            RChoiceChip(
              text: 'EU 34',
              selected: true,
              onSelected: (value) {},
            ),
            RChoiceChip(text: 'EU 36', selected: false, onSelected: (value) {}),
            RChoiceChip(
                text: 'EU 38', selected: false, onSelected: (value) {}),

          ],) ],
        )
      ],
    );
  }
}
