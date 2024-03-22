
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/features/shop/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/images/rounded_image.dart';
import '../../../../../common/widgets/custom_shape/container/circular_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
    required this.banners,
  });
final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller=Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _)=>controller.updatePageIndicator(index),
          ),
          items: banners.map((url) => RoundedImage(imageUrl: url,applyImageRadius:true,)).toList(),
        ),
        const SizedBox(height: TSize.spaceBtwItems,),
        Obx(
            ()=> Row(
             mainAxisSize: MainAxisSize.min,
            children: [
              for(int i=0;i<banners.length; i++)  CircularContainer(
                margin:const EdgeInsets.only(right: 10),
                width: 20,
                height: 4,
                backgroundColor:controller.carousalCurrentIndex.value==i?TColors.primary:TColors.grey,
              ),
            ],
          ),
        )
      ],
    );
  }
}
