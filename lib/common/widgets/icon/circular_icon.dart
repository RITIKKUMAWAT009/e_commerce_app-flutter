import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key, this.iconColor,required this.backgroundColor, required this.onPressed, this.height, this.width, required this.icon,
  });

  final Color? iconColor;
  final bool backgroundColor;
  final VoidCallback onPressed ;
  final IconData icon;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    final bool isDarkMode=THelperFunction.isDarkMode(context);
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color:backgroundColor?isDarkMode? TColors.white.withOpacity(0.3):TColors.white.withOpacity(0.9):null,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(child: IconButton(onPressed: (){},icon: Icon(icon),color:iconColor ,)),
    );
  }
}
