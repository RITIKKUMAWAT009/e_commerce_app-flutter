import 'package:flutter/material.dart';
class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key, required this.showActionButton, required this.headingText, required this.buttonText, this.textColor, this.onPressed,
  });
  final  bool showActionButton;
  final String headingText,buttonText;
  final Color? textColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(headingText,style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor),maxLines: 1,overflow: TextOverflow.ellipsis,),
        if(showActionButton) TextButton(onPressed: onPressed, child:  Text(buttonText))
      ],
    );
  }
}
