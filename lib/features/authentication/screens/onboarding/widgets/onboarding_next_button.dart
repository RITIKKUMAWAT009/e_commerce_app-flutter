import 'package:e_commerce_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helper/helper_function.dart';
class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark=THelperFunction.isDarkMode(context);
    return Positioned(
        right: TSize.defaultSpace,
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        child:  ElevatedButton(
          style:ElevatedButton.styleFrom(shape: CircleBorder(),backgroundColor:isDark? TColors.primary:TColors.dark ),
          onPressed: ()=>OnBoardingController.instance.nextPage(),child:  Icon(Iconsax.arrow_right_34 ,color: Colors.white,),));
  }
}
