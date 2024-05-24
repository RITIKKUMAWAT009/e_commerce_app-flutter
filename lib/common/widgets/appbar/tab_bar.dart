import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';

class RTabBar extends StatelessWidget implements PreferredSizeWidget{
  const RTabBar({super.key, required this.tabs});
final List<Widget>tabs;
  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return Material(
      color: dark?TColors.black:TColors.white,
      child: TabBar(
          physics: AlwaysScrollableScrollPhysics(),
          tabAlignment: TabAlignment.start,
          isScrollable: true,
          indicatorColor: TColors.primary,
          unselectedLabelColor: TColors.darkGrey,
          labelColor: dark
              ? TColors.white
              : TColors.primary,
          tabs: tabs),
    );
  }

  @override
   Size get preferredSize => Size.fromHeight(TDeviceUtils.geAppBarHeight());
}
