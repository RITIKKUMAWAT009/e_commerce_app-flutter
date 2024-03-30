import 'package:flutter/material.dart';
class ProductTitleText extends StatelessWidget {
  const ProductTitleText({
    super.key,
    required this.title,
    this.maxLines,
    this.textAlign=TextAlign.left,
    this.smallSize=true,
  });
  final String title;
  final int? maxLines;
  final bool smallSize;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(title,
      style: smallSize ?Theme.of(context).textTheme.labelLarge: Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines:maxLines,
      textAlign:textAlign);
  }
}
