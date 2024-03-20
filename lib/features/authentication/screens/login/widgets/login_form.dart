
import 'package:e_commerce_app/binding/navigation_menu.dart';
import 'package:e_commerce_app/features/authentication/screens/password_configuration/forgot_passwword.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/signup.dart';
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
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: TSize.spaceBtwSections),
        child: Column(
          children: [
            // const SizedBox(height: TSize.spaceBtwInputFields,),

            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: TTexts.email,
                  labelStyle: Theme.of(context).textTheme.bodyMedium,
                  prefixIcon: const Icon(Iconsax.direct_right)),
            ),
            const SizedBox(
              height: TSize.spaceBtwInputFields,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: TTexts.password,
                  labelStyle: Theme.of(context).textTheme.bodyMedium,
                  prefixIcon: const Icon(Iconsax.password_check),
                  suffixIcon: const Icon(Iconsax.eye_slash)),
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
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TTexts.rememberME),
                  ],
                ),
                TextButton(
                  onPressed: ()=> Get.to(()=>const ForgotPassword()),
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
                  onPressed: () =>Get.to(()=>const NavigationExample()),
                  child: const Text(TTexts.signIn),
                )),
            const SizedBox(
              height: TSize.spaceBtwItems,
            ),

            SizedBox(
                width: double.infinity,
                child: ElevatedButton(style:isDark? const ButtonStyle(backgroundColor: MaterialStatePropertyAll(TColors.dark)):const ButtonStyle(backgroundColor: MaterialStatePropertyAll(TColors.light)
                ),
                  onPressed: () =>Get.to(()=>const SignUpScreen()),
                  child:  Text(TTexts.createAccount, style: Theme.of(context).textTheme.bodyMedium,),
                )),
          ],
        ),
      ),
    );
  }
}