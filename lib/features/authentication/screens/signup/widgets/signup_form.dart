import 'package:e_commerce_app/features/authentication/controllers/signup/signup_controller.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/widgets/term_and_conditions.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:e_commerce_app/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final isDark = THelperFunction.isDarkMode(context);
    return Form(
      key: controller.signUpForKey,
      child: Column(
        children: [
          Row(
            children: [
              //first name
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      TValidator.validateEmptyText('First Name', value),
                  expands: false,
                  decoration: InputDecoration(
                      labelText: TTexts.firstName,
                      labelStyle: Theme.of(context).textTheme.bodyMedium,
                      prefixIcon: const Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(
                width: TSize.spaceBtwInputFields,
              ),
              //lastname
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) =>
                      TValidator.validateEmptyText('Last Name', value),
                  expands: false,
                  decoration: InputDecoration(
                      labelText: TTexts.lastName,
                      labelStyle: Theme.of(context).textTheme.bodyMedium,
                      prefixIcon: const Icon(Iconsax.user)),
                ),
              )
            ],
          ),
          const SizedBox(
            height: TSize.spaceBtwInputFields,
          ),
          //username
          TextFormField(
            controller: controller.userName,
            validator: (value) =>
                TValidator.validateEmptyText('User Name', value),
            decoration: InputDecoration(
                labelText: TTexts.userName,
                labelStyle: Theme.of(context).textTheme.bodyMedium,
                prefixIcon: const Icon(Iconsax.user)),
          ),
          const SizedBox(
            height: TSize.spaceBtwInputFields,
          ),
          //email
          TextFormField(
            controller: controller.email,
            validator: (value) => TValidator.validateEmail(value),
            decoration: InputDecoration(
                labelText: TTexts.email,
                labelStyle: Theme.of(context).textTheme.bodyMedium,
                prefixIcon: const Icon(Icons.email_outlined)),
          ),
          const SizedBox(
            height: TSize.spaceBtwInputFields,
          ),
          //phone number
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => TValidator.validatePhoneNumber(value),
            decoration: InputDecoration(
                labelText: TTexts.phoneNo,
                labelStyle: Theme.of(context).textTheme.bodyMedium,
                prefixIcon: const Icon(Iconsax.call)),
          ),
          const SizedBox(
            height: TSize.spaceBtwInputFields,
          ),
          //password
          Obx(
                ()=>TextFormField(
              obscureText: controller.hidePassword.value,
              controller: controller.password,
              validator: (value) => TValidator.validatePassword(value),
              decoration: InputDecoration(
                  prefixIcon: const Icon(Iconsax.password_check),
                  labelText: TTexts.password,
                  labelStyle: Theme.of(context).textTheme.bodyMedium,
                  suffixIcon:  IconButton(icon:controller.hidePassword.value==true?const Icon(Iconsax.eye_slash):const Icon(Iconsax.eye),onPressed: (){controller.hidePassword.value= !controller.hidePassword.value;},)),
            ),
          ),
          const SizedBox(
            height: TSize.spaceBtwInputFields,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                  width: 24,
                  height: 24,
                  child: Obx(()=> Checkbox(value: controller.privacyPolicy.value, onChanged: (value) {
                    controller.privacyPolicy.value=value!;
                  }))),
              const SizedBox(
                width: TSize.spaceBtwItems,
              ),
              const TermAndConditions(),
            ],
          ),
          const SizedBox(
            height: TSize.spaceBtwSections,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){
                print("on signup click");
    controller.signup();
    },child: const Text(TTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
