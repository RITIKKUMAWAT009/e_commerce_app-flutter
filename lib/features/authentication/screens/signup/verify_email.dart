import 'package:e_commerce_app/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/signup/verify_email_controller.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key, this.email});
 final String? email;

  @override
  Widget build(BuildContext context) {
    final emailVerificationController=Get.put(VerifyEmailController());
    return WillPopScope(
      onWillPop: ()async{
        return false;
      },
      child: Scaffold(
        appBar: AppBar(automaticallyImplyLeading: false,
          actionsIconTheme: Theme.of(context).iconTheme,
          actions: [
            IconButton(
              onPressed: () => AuthenticationRepository.instance.logout(),
              icon: const Icon(Icons.clear),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSize.defaultSpace),
            child: Column(
              children: [
                //image
                Image(
                    width: THelperFunction.screenWidth() * 0.8,
                    image: const AssetImage(TImages.deliveredEmailIllustration)),
                const SizedBox(
                  height: TSize.spaceBtwSections,
                ),

                //title
                Text(
                  TTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: TSize.spaceBtwItems,
                ),
                Text(
                  email??'',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: TSize.spaceBtwItems,
                ),
                Text(
                  TTexts.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: TSize.spaceBtwItems,
                ),

                //button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Get.to(() =>emailVerificationController.checkEmailVerificationStatus(),transition: Transition.zoom,duration: const Duration(milliseconds: 600)),
                    child: const Text("Continue"),
                  ),
                ),
                const SizedBox(
                  height: TSize.spaceBtwItems,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: ()=>emailVerificationController.sendEmailVerification(),
                    child: const Text(TTexts.resendEmail),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
