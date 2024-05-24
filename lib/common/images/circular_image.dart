import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
    this.padding = TSize.sm,
    this.isNetworkImage = false,
    required this.image,
    this.width = 56,
    this.height = 56,
    this.overlayColor,
    this.backgroundColor,
    this.fit,
  });

  final double padding;
  final bool isNetworkImage;
  final String image;
  final double width;
  final double height;
  final Color? overlayColor;
  final Color? backgroundColor;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(100)),
      child: Image(
        image: isNetworkImage
            ? NetworkImage(image)
            : AssetImage(image) as ImageProvider,
        color:overlayColor),
    );
  }
}
