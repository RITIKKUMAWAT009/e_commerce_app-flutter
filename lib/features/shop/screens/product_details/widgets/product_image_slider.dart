import 'package:e_commerce_app/features/shop/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/images/rounded_image.dart';
import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shape/container/cured_edge_container_widget.dart';
import '../../../../../common/widgets/icon/circular_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helper/helper_function.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,  this.productDetail,
  });
final CategoryModel? productDetail;
  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunction.isDarkMode(context);
    return CurvedEdgesWidget(
      child: Container(
        color: isDarkMode ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            //main large image
             SizedBox(
              height: 400,
              child: Padding(
                padding:
                EdgeInsets.all(TSize.productImageRadius * 2),
                child: Center(
                  child: Image(
                    image: NetworkImage(productDetail!.imageUrl),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              left: TSize.defaultSpace,
              bottom: 30,
              child: SizedBox(
                height: 80,
                child: ListView.separated(scrollDirection: Axis.horizontal,shrinkWrap: true,
                  separatorBuilder: (_,__)=>const SizedBox(width: TSize.spaceBtwItems-10,), itemCount: 1,itemBuilder: (_,index)=> RoundedImage(
                    imageUrl: productDetail!.imageUrl,
                    width: 80,
                    isNetworkImage: true,
                    padding: const EdgeInsets.all(TSize.sm),
                    border: Border.all(color: TColors.primary),
                    borderRadius: 10,applyImageRadius: true,
                    backgroundColor:
                    isDarkMode ? TColors.dark : TColors.white,
                  ),),
              ),
            ),
            TAppBar(showBackArrow: true,actions: [CircularIcon(backgroundColor: true, onPressed: (){}, icon: Iconsax.heart5,iconColor: Colors.red,width: 40,height: 40,)],)
          ],
        ),
      ),
    );
  }
}
