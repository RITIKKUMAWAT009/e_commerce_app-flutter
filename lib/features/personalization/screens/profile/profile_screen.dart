import 'package:e_commerce_app/common/images/circular_image.dart';
import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/text_widget/section_heading.dart';
import 'package:e_commerce_app/features/personalization/controllers/user_controller/user_controller.dart';
import 'package:e_commerce_app/features/personalization/screens/profile/widgets/delete_verification_screen.dart';
import 'package:e_commerce_app/features/personalization/screens/profile/widgets/edit_name_screen.dart';
import 'package:e_commerce_app/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../data/repositories/authentication/authentication_repository.dart';
import '../../../../utils/constants/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=UserController.instance;
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CircularImage(
                      image: TImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture')),
                  ],
                ),
              ),
              const SizedBox(
                height: TSize.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),
              const SectionHeading(
                  showActionButton: false,
                  headingText: "Profile Information",
                  buttonText: ""),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),
              ProfileMenu(
                title: "Name",
                value: controller.user.value.fullName,
                onPressed: () =>Get.to(()=>const ChangeNameScreen(),transition: Transition.zoom,duration: const Duration(milliseconds: 600)),
              ),
              ProfileMenu(
                title: "Username",
                value: controller.user.value.userName,
                onPressed: () {},
              ),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),
              const Divider(),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),
              const SectionHeading(
                  showActionButton: false,
                  headingText: "Personal Information",
                  buttonText: ""),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),
              ProfileMenu(
                title: "User ID",
                value: controller.user.value.id,
                icon: Iconsax.copy,
                onPressed: () {},
              ),
              ProfileMenu(
                title: "E-mail",
                value: controller.user.value.email,
                onPressed: () {},
              ),
              ProfileMenu(
                title: "Phone Number",
                value: controller.user.value.phoneNumber,
                onPressed: () {},
              ),
              ProfileMenu(
                title: "Gender",
                value: "Male",
                onPressed: () {},
              ),
              ProfileMenu(
                title: "Date of Birth",
                value: "17 Oct, 1994",
                onPressed: () {},
              ),
              const Divider(),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    // showDialog(
                    //   context: context,
                    //   builder: (context) {
                    //     return AlertDialog(
                    //       backgroundColor: dark ? Colors.black : Colors.white,
                    //       elevation: 5,shadowColor: Colors.red,actionsOverflowAlignment:OverflowBarAlignment.center,
                    //       icon: const Icon(Icons.delete,color: Colors.red,size: 40,),
                    //       title: Text(
                    //         'Delete',
                    //         style: TextStyle(
                    //             color: dark ? Colors.white : Colors.black),
                    //       ),
                    //       content: Text(
                    //         'Are you sure to Delete your account',
                    //         style: TextStyle(
                    //             color: dark ? Colors.white : Colors.black),
                    //       ),
                    //       actions: [
                    //         ElevatedButton(
                    //           onPressed: () {
                    //             Get.back();
                    //           },
                    //           style: ElevatedButton.styleFrom(
                    //               backgroundColor: TColors.grey),
                    //           child: Text(
                    //             'Cancel',
                    //             style: Theme.of(context).textTheme.titleLarge,
                    //           ),
                    //         ),
                    //         ElevatedButton(
                    //             onPressed: ()=>Get.to(()=>DeleteVerificationScreen()),
                    //             style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
                    //             child: Text(
                    //               'Delete',
                    //               style: Theme.of(context).textTheme.titleLarge,
                    //             ))
                    //       ],
                    //       actionsAlignment: MainAxisAlignment.spaceAround,
                    //     );
                    //   },
                    // );
                     controller.deleteAccountWarningPopup();
                  },
                  child: const Text(
                    'Delete Account',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
