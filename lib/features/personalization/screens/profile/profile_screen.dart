import 'package:e_commerce_app/common/images/circular_image.dart';
import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/text_widget/section_heading.dart';
import 'package:e_commerce_app/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              ProfileMenu(title: "Name",value:"Ritik Kumawat", onPressed: () {},),
              ProfileMenu(title: "Username",value:"Ritik_Kumawat_rk", onPressed: () {},),

              const SizedBox(
                height: TSize.spaceBtwItems ,
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
               ProfileMenu(title: "User ID",value:"12345", icon: Iconsax.copy,onPressed: () {},),
              ProfileMenu(title: "E-mail",value:"RitikKumawat@gmail.com", onPressed: () {},),
              ProfileMenu(title: "Phone Number",value:"+91-907-79971740", onPressed: () {},),
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
              const SizedBox(height: TSize.spaceBtwItems,),
              Center(
                child: TextButton(
                  onPressed: (){},
                  child: const Text('Delete Account',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 15),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

