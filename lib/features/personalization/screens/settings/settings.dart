import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/listtiles/settings_menu_tile.dart';
import 'package:e_commerce_app/common/widgets/text_widget/section_heading.dart';
import 'package:e_commerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:e_commerce_app/features/personalization/screens/address/address.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/listtiles/user_profile_tile.dart';
import '../profile/profile_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),
                  UserProfileTile(
                    onTap: () {
                      Get.to(() => const ProfileScreen());
                    },
                  ),
                  const SizedBox(
                    height: TSize.spaceBtwSections,
                  ),
                ],
              ),
            ),
            //body
            Padding(
              padding: const EdgeInsets.all(TSize.defaultSpace),
              child: Column(
                children: [
                  const SectionHeading(
                      showActionButton: false,
                      headingText: 'Account Settings',
                      buttonText: ""),
                  const SizedBox(
                    height: TSize.spaceBtwItems,
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: "My Addresses",
                    subTitle: "Set shopping delivery address",
                    onTap: () => Get.to(() => UserAddressScreen()),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: "My Cart",
                    subTitle: "Add, remove products and move to checkout",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: "My Orders",
                    subTitle: "In-progress and Completed Orders",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.bank,
                    title: "Bank Account",
                    subTitle: "Withdraw balance to registered bank account",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: "My Coupons",
                    subTitle: "List of all the discounted coupons",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.notification,
                    title: "Notifications",
                    subTitle: "Set any kind of notification message",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                      icon: Iconsax.security_card,
                      title: "Account Privacy",
                      subTitle: "Manage data usage and connected account",
                      onTap: () {}),
                  //app settings

                  const SizedBox(
                    height: TSize.spaceBtwSections,
                  ),
                  const SectionHeading(
                      showActionButton: false,
                      headingText: "App Settings",
                      buttonText: ""),
                  const SizedBox(
                    height: TSize.spaceBtwItems,
                  ),
                  const SettingsMenuTile(
                      icon: Iconsax.document_upload,
                      title: "Load Data",
                      subTitle: "Upload Data to your Cloud Firebase"),
                  SettingsMenuTile(
                    icon: Iconsax.location,
                    title: "Geolocation",
                    subTitle: "Set recommendation based on location",
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.location,
                    title: "Safe Mode",
                    subTitle: "Search result is safe for all ages",
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.location,
                    title: "HD Image Quality",
                    subTitle: "Set image quality to be seen",
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  const SizedBox(
                    height: TSize.spaceBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              backgroundColor:dark? Colors.black:Colors.white,elevation: 5,icon: Icon(Iconsax.warning_2),
                              title: Text('Logout',style: TextStyle(color: dark?Colors.white:Colors.black),),
                              content:
                                  Text('Are you sure to logout your account',style: Theme.of(context).textTheme.titleLarge,),
                              actions: [
                                ElevatedButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: Text('Cancle',style: Theme.of(context).textTheme.titleLarge,),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: TColors.grey),
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      AuthenticationRepository.instance.logout();
                                    }, child: Text('Ok',style: Theme.of(context).textTheme.titleLarge,))
                              ],
                              actionsAlignment: MainAxisAlignment.spaceAround,
                            );
                          },
                        );
                      },
                      child: const Text('Logout'),
                    ),
                  ),
                  const SizedBox(
                    height: TSize.spaceBtwSections,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
