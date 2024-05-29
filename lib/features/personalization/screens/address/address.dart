import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/features/personalization/screens/address/add_new_address.dart';
import 'package:e_commerce_app/features/personalization/screens/address/widgets/single_address.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const AddNewAddress()),
        backgroundColor: TColors.primary.withOpacity(0.6),
        child: const Icon(Iconsax.add),
      ),
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Addresses',
            style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(
            TSize.defaultSpace,
          ),
          child: Column(
            children: [
              SingleAddress(isSelected: false),
              SingleAddress(isSelected: true),
            ],
          ),
        ),
      ),
    );
  }
}
