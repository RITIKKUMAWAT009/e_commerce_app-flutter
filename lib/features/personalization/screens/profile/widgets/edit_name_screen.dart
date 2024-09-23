import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/features/personalization/controllers/updte_profile_controllers/update_name_controller.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/validators/validation.dart';

class ChangeNameScreen extends StatelessWidget {
  const ChangeNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpdateNameController());
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Change Name',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Use real name for easy verification. This name will appear on several screens',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: TSize.spaceBtwItems,
            ),
            Form(
              key: controller.formKey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: controller.firstName,
                      validator: (value) =>
                          TValidator.validateEmptyText('First Name', value),
                      expands: false,
                      decoration: InputDecoration(
                          labelText: TTexts.firstName,
                          labelStyle: Theme.of(context).textTheme.bodyMedium,
                          prefixIcon: const Icon(Iconsax.user)),
                    ),
                    const SizedBox(
                      height: TSize.spaceBtwInputFields,
                    ),
                    TextFormField(
                      controller: controller.lastName,
                      validator: (value) =>
                          TValidator.validateEmptyText('Last Name', value),
                      expands: false,
                      decoration: InputDecoration(
                          labelText: TTexts.lastName,
                          labelStyle: Theme.of(context).textTheme.bodyMedium,
                          prefixIcon: const Icon(Iconsax.user)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: TSize.spaceBtwSections,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                width: THelperFunction.screenWidth(),
                child: ElevatedButton(
                  onPressed: ()=>controller.updateUserName(),
                  child: Text('Update'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
