import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helper/helper_function.dart';

class TermAndConditions extends StatelessWidget {
  const TermAndConditions({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final isDark=THelperFunction.isDarkMode(context);
    return Text.rich(TextSpan(children: [
      TextSpan(
          text: '${TTexts.iAgreeTo} ',
          style: Theme.of(context).textTheme.bodySmall),
      TextSpan(
        text: '${TTexts.privacyPolicy} ',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(
          color:
          isDark ? TColors.white : TColors.primary,
          decoration: TextDecoration.underline,
          decorationColor:
          isDark ? TColors.white : TColors.primary,
        ),
      ),
      TextSpan(
          text: '${TTexts.and} ',
          style: Theme.of(context).textTheme.bodySmall),
      TextSpan(
        text: '${TTexts.termOfUse} ',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(
          color:
          isDark ? TColors.white : TColors.primary,
          decoration: TextDecoration.underline,
          decorationColor:
          isDark ? TColors.white : TColors.primary,
        ),
      ),
    ],),);
  }
}
