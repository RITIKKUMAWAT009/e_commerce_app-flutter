import 'package:e_commerce_app/common/styles/spacing_style.dart';
import 'package:e_commerce_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //logo ,title,subTitle
            const  LoginHeader(),
              LoginForm(isDark: isDark),
              //divider
             const FormDivider(dividerText: TTexts.orSignInWith,),
              const SizedBox(height: TSize.spaceBtwSections,),
              //footer
             const SocialButton()
            ],
          ),
        ),
      ),
    );
  }
}





