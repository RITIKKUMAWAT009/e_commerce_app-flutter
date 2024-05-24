import 'package:e_commerce_app/common/images/circular_image.dart';
import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/text_widget/section_heading.dart';
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
              Row(
                children: [
                Expanded(flex: 3,child: Text('Name',style: Theme.of(context).textTheme.bodySmall,overflow: TextOverflow.ellipsis,),),
                Expanded(flex: 5,child: Text('Ritik Kumawat',style: Theme.of(context).textTheme.bodyMedium,overflow: TextOverflow.ellipsis,),),
              const Expanded(child : Icon(Iconsax.arrow_right_34,size: 18,),),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
