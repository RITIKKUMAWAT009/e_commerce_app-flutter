import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationLoaderWidget extends StatelessWidget {
  const AnimationLoaderWidget({super.key,
    required this.text,
    required this.animation,
    this.showAction = false,
    this.actionText,
    this.onActionPressed});

  final String text, animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(animation,
              width: MediaQuery
                  .of(context)
                  .size
                  .width *
                  0.8), //display lottie anim
          const SizedBox(
            height: TSize.defaultSpace,
          ),
          Text(
            text,
            style: Theme
                .of(context)
                .textTheme
                .bodyMedium, textAlign: TextAlign.center,
          ),
          const SizedBox(height: TSize.defaultSpace,),
          showAction ? SizedBox(
            width: 250,
            child: OutlinedButton(onPressed: onActionPressed,
              style: OutlinedButton.styleFrom(backgroundColor: TColors.dark),
              child: Text(actionText!, style: Theme
                  .of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(color: TColors.light),),),
          ):const SizedBox(),
        ],
      ),
    );
  }
}
