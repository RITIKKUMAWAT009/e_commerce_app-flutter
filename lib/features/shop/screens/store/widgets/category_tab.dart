import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:e_commerce_app/common/widgets/text_widget/section_heading.dart';
import 'package:e_commerce_app/features/shop/controllers/home_controller.dart';
import 'package:e_commerce_app/features/shop/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
   CategoryTab({super.key, required this.category});
final  CategoryModel category;
 HomeController? _homeController;
  @override
  Widget build(BuildContext context) {
    if(Get.isRegistered<HomeController>()){
_homeController=Get.find<HomeController>();
    }else{
      _homeController=Get.put(HomeController());
    }
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(TSize.defaultSpace),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const BrandShowCase(
                  images: [
                    TImages.productImage3,
                    TImages.productImage2,
                    TImages.productImage1
                  ],
                ),  const BrandShowCase(
                  images: [
                    TImages.productImage3,
                    TImages.productImage2,
                    TImages.productImage1
                  ],
                ),
                SectionHeading(
                  showActionButton: true,
                  headingText: "You might like",
                  buttonText: "View all",
                  onPressed: () {},
                ),
                const SizedBox(
                  height: TSize.spaceBtwItems,
                ),
                GetBuilder<HomeController>(
                  builder: (controller) {
                    return RGridLayout(
                        itemCount: 10,
                        itemBuilder: (_, index) =>ProductVerticalCard(productData: _homeController!.productData[index],));
                  }
                )
              ],
            ),
          )
        ]);
  }
}
