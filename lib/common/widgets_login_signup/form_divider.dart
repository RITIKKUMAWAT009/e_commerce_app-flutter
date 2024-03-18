import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.dividerText
  });
final String dividerText;
  @override
  Widget build(BuildContext context) {
    final bool isDark=THelperFunction.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
              color: isDark ? TColors.darkGrey : TColors.grey,
              thickness: 1,
              indent: 60,
              endIndent: 5,
            )),
         Text(dividerText),
        Flexible(
            child: Divider(
              color: isDark ? TColors.darkGrey : TColors.grey,
              thickness: 1,
              indent: 5,
              endIndent: 60,
            )),
      ],
    );
  }
}
