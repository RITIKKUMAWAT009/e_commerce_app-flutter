import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this.width=350,
    this.height=400,
    required this.imageUrl,
    this.applyImageRadius = false,
    this.border,
    this.backgroundColor = Colors.transparent,
    this.fit = BoxFit.contain,
    this.padding = const EdgeInsets.all(TSize.md),
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius = TSize.md,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit fit;
  final EdgeInsetsGeometry padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin:const EdgeInsets.only(right: 5),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
            borderRadius: applyImageRadius
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.zero),
        child: ClipRRect(
            borderRadius: applyImageRadius
                ? BorderRadius.circular(TSize.md)
                : BorderRadius.zero,
            child: Image(
              image: isNetworkImage
                  ? NetworkImage(imageUrl)
                  : AssetImage(imageUrl) as ImageProvider,
              fit: fit,
            ),),
      ),
    );
  }
}
