import 'package:e_commerce_app/common/styles/spacing_style.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark=THelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //logo ,title,subTitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    color: TColors.info,
                    fit: BoxFit.fill,
                    image: AssetImage(TImages.darkAppLogo),
                  ),
                  Text(TTexts.loginTitle,style: Theme.of(context).textTheme.headlineMedium,),
                  const SizedBox(height: TSize.sm,),
                  Text(TTexts.loginSubTitle,style: Theme.of(context).textTheme.bodyMedium,)
                ],
              ),
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: TSize.spaceBtwSections),
                  child: Column(
                    children: [
                      // const SizedBox(height: TSize.spaceBtwInputFields,),

                      TextFormField(
                        keyboardType:TextInputType.emailAddress,
                        decoration: InputDecoration(labelText: TTexts.email,labelStyle: Theme.of(context).textTheme.bodyMedium,prefixIcon: Icon(Iconsax.direct_right)),
                      ),
                      const SizedBox(height: TSize.spaceBtwInputFields,),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(labelText: TTexts.password,labelStyle: Theme.of(context).textTheme.bodyMedium,prefixIcon: Icon(Iconsax.password_check),suffixIcon: Icon(Iconsax.eye_slash)),
                      ),
                      const SizedBox(height: TSize.spaceBtwInputFields/2,),

                      // remember me & forgot pass
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value){}),
                              Text(TTexts.rememberME),
                            ],
                          ),
                          TextButton(onPressed: (){}, child: Text(TTexts.forgotPassword),),

                        ],
                      ),
                      const SizedBox(height: TSize.spaceBtwSections,),
                      //sign in button
                      SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: Text(TTexts.signIn),)),
                      const SizedBox(height: TSize.spaceBtwItems,),

                      SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: Text(TTexts.createAccount),)),
                    ],
                  ),
                ),
              ),

              //divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(color: isDark? TColors.darkGrey:TColors.grey,thickness: 0.5,indent: 60,endIndent: 5,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
