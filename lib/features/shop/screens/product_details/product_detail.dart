import 'package:e_commerce_app/common/widgets/text_widget/section_heading.dart';
import 'package:e_commerce_app/features/shop/models/category_model.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/rating_and_share.dart';
import 'package:e_commerce_app/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key,  this.productDetail});
  final CategoryModel? productDetail;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //product image slider
             ProductImageSlider(productDetail: productDetail,),
            //product details
            Padding(
              padding: const EdgeInsets.all(TSize.defaultSpace),
              child: Column(
                children: [
                  //Rating and share
                  const RatingAndShare(),

                  /// prince,title,stock,brand
                   ProductMetaData(productDetail: productDetail,),

                  /// Attribute
                   ProductAttributes(),
                  const SizedBox(
                    height: TSize.spaceBtwSections,
                  ),

                  /// checkout btn
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Checkout'))),
                  const SizedBox(height: TSize.spaceBtwSections),

                  /// Description

                  const SectionHeading(
                      showActionButton: false,
                      headingText: 'Description',
                      buttonText: ""),
                   ReadMoreText(
                    productDetail!.name,  trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// Reviews
                  Divider(),
                  SizedBox(height: TSize.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SectionHeading(showActionButton: false, headingText: 'Reviews(199)', buttonText: "",onPressed: (){},),
                  IconButton(onPressed: (){Get.to(()=>const ProductReviewScreen());}, icon: Icon(Iconsax.arrow_right_3))
                    ],
                  )
                 , SizedBox(height: TSize.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
