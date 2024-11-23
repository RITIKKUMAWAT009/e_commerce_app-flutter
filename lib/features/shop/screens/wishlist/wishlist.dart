import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/effects/product_shimmer.dart';
import 'package:e_commerce_app/common/widgets/icon/circular_icon.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:e_commerce_app/features/shop/controllers/home_controller.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavouriteScreen extends StatefulWidget {
  FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  HomeController? _homeController;
  @override
  void initState() {
    super.initState();
    if (Get.isRegistered<HomeController>()) {
      _homeController = Get.find<HomeController>();
    } else {
      _homeController = Get.put(HomeController());
    }
    _homeController!.getProductData();
  }
bool fromWishlist=true;
  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CircularIcon(
            backgroundColor: false,
            onPressed: () {},
            icon: Icons.add,
            iconColor: isDark ? Colors.white : Colors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child:
            GetBuilder<HomeController>(
              builder: (controller) {
                return Column(
                  children: [
                    _homeController!.favoriteProduct.isEmpty
                        ? const Center(
                            child: Text('No Favorites'),
                          )
                        : RGridLayout(
                            itemCount: _homeController!.favoriteProduct.length,
                            itemBuilder: (_, index) => _homeController!
                                    .isLoadingProductData.value
                                ? buildShimmer(
                                    context, THelperFunction.isDarkMode(context))
                                : ProductVerticalCard(
                                    fromWishlist: fromWishlist,
                                    productData:
                                        _homeController!.favoriteProduct[index],
                                  ),
                          )
                  ],
                );
              }
            ),
          ),
        ),
    );
  }
}
