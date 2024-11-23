import 'package:e_commerce_app/common/images/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/custom_shape/container/circular_container.dart';
import 'package:e_commerce_app/common/widgets/icon/circular_icon.dart';
import 'package:e_commerce_app/common/widgets/text_widget/product_title_text.dart';
import 'package:e_commerce_app/features/shop/controllers/home_controller.dart';
import 'package:e_commerce_app/features/shop/models/category_model.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/product_detail.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:e_commerce_app/utils/logging/logger.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shimmer/shimmer.dart';

import '../../../styles/shadow.dart';
import '../../text_widget/brand_title_text_with_verification_icon.dart';

class ProductVerticalCard extends StatelessWidget {
   ProductVerticalCard({super.key, this.fromWishlist=false, this.productData});
  final CategoryModel? productData;
  final bool fromWishlist;
HomeController? _homeController;
  @override
  Widget build(BuildContext context) {
    if(Get.isRegistered<HomeController>()){_homeController=Get.find<HomeController>();}else{
      _homeController=Get.put(HomeController());
    }
    final bool isDarkMode = THelperFunction.isDarkMode(context);
    return  GestureDetector(
      onTap: ()=>Get.to(()=>ProductDetails(productDetail:productData),transition: Transition.zoom,duration: Duration(milliseconds: 600)),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalBoxShadow],
          borderRadius: BorderRadius.circular(20),
          color: isDarkMode ? TColors.dark.withOpacity(0.8) : TColors.light,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Thumbnail ,WishList button,Discount Tag
            Container(
              height: 180,
              decoration: BoxDecoration(
                color: isDarkMode ? TColors.dark : TColors.light,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
              ),
              child: Stack(
                children: [
                  ///thumbnail image
                  RoundedImage(
                    backgroundColor: isDarkMode ? TColors.dark : TColors.light,
                    imageUrl: productData!.imageUrl,
                    applyImageRadius: true,
                    isNetworkImage: true,
                  ),
                  ///sale tag
                  Positioned(
                    left: 1,
                    top: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(TSize.sm),
                          color: TColors.secondary.withOpacity(0.7)),
                      child: Text(
                        "25%",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 1,
                    top: 0,
                    child: CircularIcon(
                        width: 40,
                        height: 40,
                        onPressed: () {
                          if (fromWishlist) {
                            RLoggerHelper.debug("here for wishlist");
                            productData!.isFavorite=false;
                         _homeController?.deleteFavorite(productData!);
                          _homeController!.getProductData();
                          }else{

                       if(productData!.isFavorite){
                         productData!.isFavorite=false;
                         _homeController?.deleteFavorite(productData!);
                       }else{
                          productData!.isFavorite=true;
                          _homeController?.saveFavorite(productData!);
                       }
                          }
                        },
                        icon: Iconsax.heart5,
                        iconColor: productData!.isFavorite?Colors.red:Colors.grey,
                        backgroundColor: false),
                  )
                ],
              ),
            ),
              Padding(
              padding: EdgeInsets.only(left: TSize.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: productData!.name,
                  ),
                  SizedBox(
                    height: TSize.spaceBtwItems / 2,
                  ),
                  BrandTitleWithVerifiedIcon(title:"Nike" ,),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$3.5",style: Theme.of(context).textTheme.headlineMedium,),
                Container(
                  width: 55,
                  decoration:  BoxDecoration(
                    color: TColors.black,
                    borderRadius: const BorderRadius.only(topLeft:Radius.circular(TSize.cardRadiusMd),
                      bottomRight: Radius.circular(TSize.productImageRadius),),
                  ),
                  child:const SizedBox(width:TSize.iconLg*1.2 ,height:TSize.iconLg*1.2,child: Center(child: Icon(Iconsax.add,color: TColors.white))) ,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}