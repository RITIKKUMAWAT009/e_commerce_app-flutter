import 'package:e_commerce_app/common/widgets/custom_shape/container/search_container.dart';
import 'package:e_commerce_app/common/widgets/text_widget/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/hom_appbar.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'widgets/home_category.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
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
                          showActionButton: false,
                          buttonText: 'View all',
                          headingText: 'Popular Category',
                        ),
                        SizedBox(
                          height: TSize.spaceBtwItems,
                        ),
                        HomeCategory()
                      ],
                    ),
                  )
                ],
              ),
            ),
            //Body
            Padding(
              padding: EdgeInsets.all(TSize.defaultSpace),
              child: PromoSlider(
                banners: [
                  TImages.banner1,
                  TImages.banner2,
                  TImages.banner3,
                  TImages.banner4,
                  TImages.banner5,
                  TImages.banner6,
                  TImages.banner7,
                  TImages.banner8,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
