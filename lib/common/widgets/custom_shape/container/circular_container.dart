import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer(
      {super.key,
      this.width = 400,
      this.height = 400,
      this.radius = 400,
      this.padding = 0,
      this.margin,
      this.backgroundColor = TColors.white,
      this.child,
      this.showBorder = false,
       this.inDarkModeBackgroundColor=Colors.grey});

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundColor;
  final Color inDarkModeBackgroundColor;
  final bool showBorder;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = THelperFunction.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: isDarkMode ? inDarkModeBackgroundColor : backgroundColor,
        border: showBorder
            ? Border.all(color: TColors.white)
            : Border.all(color: Colors.transparent),
      ),
      child: child,
    );
  }
}
