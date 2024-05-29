import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key, required this.title, required this.value, required this.onPressed,  this.icon=Iconsax.arrow_right_34,
  });
final String title;
final String value;
final VoidCallback onPressed;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSize.spaceBtwItems/1.5),
        child: Row(
          children: [
            Expanded(flex: 3,child: Text(title,style: Theme.of(context).textTheme.bodySmall,overflow: TextOverflow.ellipsis,),),
            Expanded(flex: 5,child: Text(value,style: Theme.of(context).textTheme.bodyMedium,overflow: TextOverflow.ellipsis,),),
             Expanded(child : Icon(icon,size: 18,),),
          ],),
      ),
    );
  }
}
