import 'package:e_commerce_app/binding/navigation_menu.dart';
import 'package:e_commerce_app/features/authentication/controllers/login/login_controller.dart';
import 'package:e_commerce_app/features/authentication/screens/password_configuration/forgot_passwword.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/signup.dart';
import 'package:e_commerce_app/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSize.spaceBtwSections),
        child: Column(
          children: [
            // const SizedBox(height: TSize.spaceBtwInputFields,),

            TextFormField(
              controller: controller.emailController,
              keyboardType: TextInputType.emailAddress,
              validator: (value) => TValidator.validateEmail(value),
              decoration: InputDecoration(
                  labelText: TTexts.email,
                  labelStyle: Theme.of(context).textTheme.bodyMedium,
                  prefixIcon: const Icon(Iconsax.direct_right)),
            ),
            const SizedBox(
              height: TSize.spaceBtwInputFields,
            ),
            Obx(
              () => TextFormField(
                controller: controller.passwordController,
                validator: (value) => TValidator.validateEmptyText('Password',value),
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                    labelText: TTexts.password,
                    labelStyle: Theme.of(context).textTheme.bodyMedium,
                    prefixIcon: const Icon(Iconsax.password_check),
                    suffixIcon: IconButton(
                      icon: controller.hidePassword.value?Icon(Iconsax.eye_slash):Icon(Icons.remove_red_eye_outlined),
                      onPressed: () =>
                          controller.hidePassword.value =
                          !controller.hidePassword.value,
                    )),
              ),
            ),
            const SizedBox(
              height: TSize.spaceBtwInputFields / 2,
            ),

            // remember me & forgot pass
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Obx(
                      ()=> Checkbox(value: controller.isRemember.value, onChanged: (value) {
                        controller.isRemember.value= ! controller.isRemember.value;
                      }),
                    ),
                    const Text(TTexts.rememberME),
                  ],
                ),
                TextButton(
                  onPressed: () => Get.to(() => const ForgotPassword(),transition: Transition.zoom,duration: Duration(seconds: 1)),
                  child: const Text(TTexts.forgotPassword),
                ),
              ],
            ),
            const SizedBox(
              height: TSize.spaceBtwSections,
            ),
            //sign in button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => controller.emailAndPasswordSignIn(),
                  child: const Text(TTexts.signIn),
                )),
            const SizedBox(
              height: TSize.spaceBtwItems,
            ),

            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: isDark
                      ? const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(TColors.dark))
                      : const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(TColors.light)),
                  onPressed: () => Get.to(() => const SignUpScreen(),transition: Transition.zoom,duration: Duration(seconds: 1)),
                  child: Text(
                    TTexts.createAccount,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
