import 'package:e_commerce_app/features/authentication/screens/signup/widgets/term_and_conditions.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,

  });
  @override
  Widget build(BuildContext context) {
    final isDark=THelperFunction.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              //first name
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                      labelText: TTexts.firstName,
                      labelStyle:
                      Theme.of(context).textTheme.bodyMedium,
                      prefixIcon:const Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(
                width: TSize.spaceBtwInputFields,
              ),
              //lastname
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                      labelText: TTexts.lastName,
                      labelStyle:
                      Theme.of(context).textTheme.bodyMedium,
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
            decoration: InputDecoration(
                labelText: TTexts.phoneNo,
                labelStyle: Theme.of(context).textTheme.bodyMedium,
                prefixIcon: const Icon(Iconsax.call)),
          ),
          const SizedBox(
            height: TSize.spaceBtwInputFields,
          ),
          //password
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.password_check),
                labelText: TTexts.password,
                labelStyle: Theme.of(context).textTheme.bodyMedium,
                suffixIcon: const Icon(Iconsax.eye_slash)),
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
                  child:
                  Checkbox(value: true, onChanged: (value) {})),
              const SizedBox(
                width: TSize.spaceBtwItems,
              ),
            const TermAndConditions(),
            ],
          ),
          const SizedBox(height: TSize.spaceBtwSections,),
          SizedBox(width:double.infinity,child: ElevatedButton(onPressed: (){},child:const Text(TTexts.createAccount),),)
        ],
      ),
    );
  }
}

