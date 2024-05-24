import 'package:flutter/material.dart';
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
    return ListTile(onTap: onTap,
      leading: CircularImage(
        image: TImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        "Ritik kumawat",
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: TColors.white),
      ),
      subtitle: Text(
        "Ritikkumawt@gmail.com",
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: TColors.white),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Iconsax.edit,
          color: TColors.white,
        ),
      ),
    );
  }
}
