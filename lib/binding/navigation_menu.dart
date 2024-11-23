import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:e_commerce_app/features/personalization/screens/settings/settings.dart';
import 'package:e_commerce_app/features/shop/screens/home/home.dart';
import 'package:e_commerce_app/features/shop/screens/store/store.dart';
import 'package:e_commerce_app/features/shop/screens/wishlist/wishlist.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../utils/constants/colors.dart';

class NavigationExample extends StatelessWidget {
  const NavigationExample({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final isDark = THelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => AnimatedNotchBottomBar(
          shadowElevation: 5,
          durationInMilliSeconds: 10,
          showShadow: true,
          showBlurBottomBar: true,
          showTopRadius: true,
          textOverflow: TextOverflow.ellipsis,
          kBottomRadius: 5,
          circleMargin: 1,
          blurOpacity: 1,
          kIconSize: 20,
          maxLine: 1,
          bottomBarHeight: 34,
          notchBottomBarController:
              NotchBottomBarController(index: controller.selectedIndex.value),
          notchGradient: RadialGradient(colors: [
            Colors.blue.shade100,
            Colors.blue.shade200,
            Colors.blue.shade400,
            Colors.blue.shade700,
            Colors.blue.shade900,
          ]),
          color: Colors.blue.shade500,
          elevation: 10,
          textAlign: TextAlign.center,
          onTap: (value) => controller.selectedIndex.value = value,
          bottomBarItems: const [
            BottomBarItem(
              inActiveItem: Icon(Iconsax.home),
              activeItem: Icon(Iconsax.home),
              itemLabelWidget: Text(
                'Home',
                style: TextStyle(color: Colors.black),
              ),
            ),
            BottomBarItem(
              inActiveItem: Icon(Icons.storefront_outlined),
              activeItem: Icon(Icons.storefront_outlined),
              itemLabelWidget: Text(
                'Store',
                style: TextStyle(color: Colors.black),
              ),
            ),
            BottomBarItem(
              inActiveItem: Icon(Iconsax.heart),
              activeItem: Icon(Iconsax.heart),
              itemLabelWidget: Text(
                'Wishlist',
                style: TextStyle(color: Colors.black),
              ),
            ),
            BottomBarItem(
              inActiveItem: Icon(Iconsax.user),
              activeItem: Icon(Iconsax.user),
              itemLabelWidget: Text(
                'Profile',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      body: Obx(() => controller.screen[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screen = [
    const HomeScreen(),
    const StoreScreen(),
     FavouriteScreen(),
    const SettingsScreen()
  ];
}
