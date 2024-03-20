import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'reset_password.dart';
class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Heading
            Text(TTexts.forgetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: TSize.spaceBtwItems,),
            Text(TTexts.forgetPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,),
            const SizedBox(height: TSize.spaceBtwSections*2,),

            //text field
            TextFormField(
              decoration: const InputDecoration(labelText: "Enter Email",prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height: TSize.spaceBtwSections,),
            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=> Get.off(()=> const ResetPassword()),child:const Text('Submit'),),),

          ],
        ),
      ),
    );
  }
}
