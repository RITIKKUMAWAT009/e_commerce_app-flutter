import 'package:e_commerce_app/common/widgets/effects/category_shimmer_effect.dart';
import 'package:e_commerce_app/features/shop/controllers/category_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categoryController = Get.put(CategoryController());
    return Obx(
      (){
        if(categoryController.isLoading.value){
          return const CategoryShimmer();
        }else{
         return SizedBox(
        height: 80,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: categoryController.allCategoryList.length,
            itemBuilder: (_, index) {
              return VerticalImageText(
                image: categoryController.allCategoryList[index].imageUrl ,
                title: categoryController.allCategoryList[index].name,
                onTap: () {},
              );
            }),
      );}}
    );
  }
}
