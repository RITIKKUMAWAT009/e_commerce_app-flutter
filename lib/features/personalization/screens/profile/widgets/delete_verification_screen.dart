import 'package:e_commerce_app/features/personalization/controllers/user_controller/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helper/helper_function.dart';
import '../../../../../utils/validators/validation.dart';

class DeleteVerificationScreen extends StatelessWidget {
  const DeleteVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=UserController.instance;
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Verify your account',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: TSize.spaceBtwItems,
            ),
            Form(
              key: controller.reAuthFormKey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: controller.verifyEmail,
                      validator: (value) =>
                          TValidator.validateEmail(value),
                      expands: false,
                      decoration: InputDecoration(
                          labelText: TTexts.email,
                          labelStyle: Theme.of(context).textTheme.bodyMedium,
                          prefixIcon: const Icon(Icons.email)),
                    ),
                    const SizedBox(
                      height: TSize.spaceBtwInputFields,
                    ),
                    TextFormField(
                      controller: controller.verifyPassword,
                      validator: (value) =>
                          TValidator.validatePassword(value),
                      expands: false,
                      decoration: InputDecoration(
                          labelText: TTexts.password,
                          labelStyle: Theme.of(context).textTheme.bodyMedium,
                          prefixIcon: const Icon(Iconsax.lock)),
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
                  onPressed: ()async=>controller.reAuthenticateEmailAndPassword(),
                  child: Text('Verify'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
