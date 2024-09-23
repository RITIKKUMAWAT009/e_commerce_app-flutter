import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/appbar/tab_bar.dart';
import 'package:e_commerce_app/common/widgets/custom_shape/container/search_container.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce_app/common/widgets/text_widget/section_heading.dart';
import 'package:e_commerce_app/features/shop/controllers/category_controller.dart';
import 'package:e_commerce_app/features/shop/screens/store/widgets/category_tab.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/product_card/brand_card.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = CategoryController.instance.featuredCategories;
    return DefaultTabController(
      initialIndex: 0,
      length: categories.length,
      child: Scaffold(
          backgroundColor: THelperFunction.isDarkMode(context)
              ? TColors.black
              : TColors.white,
          appBar: TAppBar(
            title: Text(
              "Store",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            actions: [
              CartCounterIcon(iconColor: TColors.white, onPressed: () {})
            ],
          ),
          body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  expandedHeight: 440,
                  pinned: true,
                  floating: true,
                  automaticallyImplyLeading: false,
                  backgroundColor: THelperFunction.isDarkMode(context)
                      ? TColors.black
                      : TColors.white,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSize.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        const SizedBox(
                          height: TSize.spaceBtwItems,
                        ),
                        const SearchContainer(
                          text: "Search in Store",
                          showBorder: true,
                          showBackground: false,
                        ),
                        const SizedBox(
                          height: TSize.spaceBtwSections,
                        ),
                        SectionHeading(
                          showActionButton: true,
                          headingText: "Featured Brands",
                          buttonText: "View all",
                          onPressed: () {},
                        ),
                        const SizedBox(
                          height: TSize.spaceBtwItems / 1.5,
                        ),
                        RGridLayout(
                            mainAxisExtent: 80,
                            itemCount: 4,
                            itemBuilder: (_, index) {
                              return BrandCard(
                                showBorder: true,
                                onTap: () {},
                              );
                            })
                      ],
                    ),
                  ),
                  bottom: RTabBar(
                    tabs: categories.map((element) => Tab(child: Text(element.name,))).toList()
                  ),
                ),
              ];
            },
            //body
            body: TabBarView(
              children:categories.map((category) => CategoryTab(category:category)).toList()
            ),
          )),
    );
  }
}
