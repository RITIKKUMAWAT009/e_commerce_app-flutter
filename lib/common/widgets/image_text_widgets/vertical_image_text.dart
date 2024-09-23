import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key, required this.image, required this.title,  this.textColor=TColors.textWhite, this.backgroundColor=TColors.white, this.onTap,
  });
  final String image,title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: TSize.sm),
            width: 56,
            height: 56,
            padding: const EdgeInsets.all(TSize.sm),
            decoration: BoxDecoration(
                color: backgroundColor != null? (THelperFunction.isDarkMode(context) ?TColors.black :TColors.white):Colors.transparent,
                borderRadius:
                BorderRadius.circular(100)),
            child: Image(height: 56,width: 56,
              image: NetworkImage(image),
              fit: BoxFit.cover,
              // color: (THelperFunction.isDarkMode(context) ?TColors.white :TColors.black),
            ),
          ),
          const SizedBox(
            height: TSize.spaceBtwItems/2,
          ),
          SizedBox(width: 50,
            child: Text(title,style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor)
              ,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,),),
        ],
      ),
    );
  }
}
