import 'package:e_commerce_app/features/shop/screens/home/home.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationExample extends StatelessWidget {
  const NavigationExample({super.key});
  @override
  Widget build(BuildContext context) {
    final controller=Get.put(NavigationController());
    final isDark=THelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          indicatorColor: isDark? TColors.white.withOpacity(.3):TColors.black.withOpacity(0.3),
          backgroundColor: isDark?TColors.black:TColors.white,
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index)=> controller.selectedIndex.value=index,
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Iconsax.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.shop),
              label: 'Store',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.heart),
              label: 'Saved',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.user),
              label: 'Profile',
            ),
          ],
        ),
      ),body: Obx(()=> controller.screen[controller.selectedIndex.value]),

    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex=0.obs;
  final screen=[const HomeScreen(),Container(color: Colors.pinkAccent,),Container(color: Colors.red,),Container(color: Colors.orangeAccent,)];
}
