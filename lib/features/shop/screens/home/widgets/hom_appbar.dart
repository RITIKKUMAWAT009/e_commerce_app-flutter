import 'package:e_commerce_app/common/widgets/effects/shimmer_effect.dart';
import 'package:e_commerce_app/features/personalization/controllers/user_controller/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';
class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(UserController());
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppBarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: TColors.grey),
          ),
          Obx((){
            if(controller.isProfileLoading.value){
             return const  ShimmerEffect(width: 200,height: 30, radius: 10,);
            }else{
              return Text(
                controller.user.value.fullName,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .apply(color: TColors.white),
              );
            }

          }
          )
        ],
      ),
      actions: [
        CartCounterIcon(onPressed: (){},iconColor: TColors.white,)
      ],
    );
  }
}
