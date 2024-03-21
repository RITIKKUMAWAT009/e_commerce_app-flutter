import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helper/helper_function.dart';
class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key, required this.text, this.icon,  this.showBackground=true,  this.showBorder=true
    ,
  });

  final String text;
  final IconData? icon;
  final bool showBackground;
  final bool showBorder;
  @override
  Widget build(BuildContext context) {
    final isDark=THelperFunction.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSize.defaultSpace),
      child: Container(
        width: TDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(TSize.md),
        decoration: BoxDecoration(
          color:showBackground? isDark? TColors.dark:TColors.light:Colors.transparent,
          borderRadius: BorderRadius.circular(TSize.cardRadiusLg),
          border:showBorder? Border.all(color: TColors.grey):null,
        ),
        child: Row(
          children: [
            const Icon(Iconsax.search_normal,color: TColors.darkerGrey,),
            const SizedBox(width: TSize.spaceBtwItems,),
            Text(text,style: Theme.of(context).textTheme.bodySmall,),
          ],
        ),
      ),
    );
  }
}
