import 'package:e_commerce_app/common/widgets/custom_shape/container/search_container.dart';
import 'package:e_commerce_app/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:e_commerce_app/common/widgets/text_widget/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/hom_appbar.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:iconsax/iconsax.dart';

import 'widgets/home_category.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PrimaryHeaderContainer(
              child: Column(
                children: [
                  //appbar
                  HomeAppBar(),
                  //search bar
                  SizedBox(
                    height: TSize.spaceBtwSections,
                  ),
                  SearchContainer(
                    text: 'Search in Store',
                    icon: Iconsax.search_normal,
                    padding: EdgeInsets.symmetric(horizontal: TSize.defaultSpace),
                  )
                  //categories
                  ,
                  SizedBox(
                    height: TSize.spaceBtwSections,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: TSize.defaultSpace),
                    child: Column(
                      children: [
                        SectionHeading(
                          textColor: TColors.white,
                          showActionButton: true,
                          buttonText: 'View all',
                          headingText: 'Popular Category',
                        ),
                        SizedBox(
                          height: TSize.spaceBtwItems,
                        ),
                        HomeCategory()
                      ],
                    ),
                  ),
                  SizedBox(height: TSize.spaceBtwSections,)
                ],
              ),
            ),
            //Body
            Padding(
              padding: const EdgeInsets.all(TSize.defaultSpace),
              child: Column(
                children: [
                  const PromoSlider(
                    banners: [
                      TImages.productImage1,
                      TImages.productImage2,
                      TImages.productImage3,
                      TImages.productImage4,
                      TImages.productImage5,
                      TImages.productImage6,
                    ],
                  ),
                  const SizedBox(
                    height: TSize.spaceBtwSections,
                  ),
                  GridView.builder(
                    itemCount: 18,
                      physics:const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,crossAxisSpacing: TSize.gridViewSpacing,mainAxisSpacing: TSize.gridViewSpacing,mainAxisExtent: 288),
                      itemBuilder:(_,index)=>const ProductVerticalCard(),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
