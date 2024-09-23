import 'package:e_commerce_app/common/widgets/effects/shimmer_effect.dart';
import 'package:e_commerce_app/features/personalization/controllers/user_controller/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../images/circular_image.dart';
class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key, this.onTap,
  });
final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    final controller=UserController.instance;
    return controller.isProfileLoading.value!=true?  ListTile(onTap: onTap,
        leading: const CircularImage(
          image: TImages.user,
          width: 50,
          height: 50,
          padding: 0,
        ),
        title: Obx(
              ()=>Text(
          controller.user.value.fullName,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: TColors.white),
        ),),
        subtitle: Text(
          controller.user.value.email,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: TColors.white),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Iconsax.edit,
            color: TColors.white,
          ),
        ),
    ):ShimmerEffect(width: MediaQuery.of(context).size.width-50, height: 50, radius: 10);
  }
}
