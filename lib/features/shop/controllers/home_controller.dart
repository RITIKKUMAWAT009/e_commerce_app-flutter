import 'package:e_commerce_app/data/repositories/categories/category_repository.dart';
import 'package:e_commerce_app/data/services/firebase_storage_service.dart';
import 'package:e_commerce_app/features/shop/models/category_model.dart';
import 'package:e_commerce_app/utils/logging/logger.dart';
import 'package:e_commerce_app/utils/popups/loaders.dart';
import 'package:get/get.dart';
class HomeController extends GetxController{
  static HomeController get instance=>Get.find();
  final CategoryRepository _categoryRepository=Get.put(CategoryRepository());
  final carousalCurrentIndex=0.obs;
  final RxList<CategoryModel> favoriteProduct=<CategoryModel>[].obs;
  RxBool isLoadingProductData=false.obs;

@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getProductData();
    // getFavorites();
  }

  void updatePageIndicator(index){
    carousalCurrentIndex.value=index;
  }
RxList<CategoryModel>productData=<CategoryModel>[].obs; 
Future<void>getProductData()
async{
isLoadingProductData.value=true;
try {
  productData.value=await _categoryRepository.getAllCategories(collectionName:"Products");
  favoriteProduct.value=productData.where((element) => element.isFavorite==true).toList();
  isLoadingProductData.value=false;
  update();
} catch (e) {
  RLoggerHelper.error('Error getting product data: $e');
  Loaders.errorSnackBar(title:"Something went wrong" ,message: e.toString());
  isLoadingProductData.value=false;
  update();
}

}
Future<void> saveFavorite(CategoryModel favroitData)async{
  try{
    favroitData.isFavorite=true;
    await _categoryRepository.saveFavorite(favroitData);
    Loaders.successSnackBar(title: 'Added to Favorites');
    update();
  }catch(e){
RLoggerHelper.error('Error saving favorite: $e');
Loaders.errorSnackBar(title:"Something went wrong" ,message: e.toString());
  }
}
// Future<void>getFavorites()async{
//   isLoadingProductData.value=true;
//   try{
//     favoriteProduct.value=await _categoryRepository.getFavorites();
//     isLoadingProductData.value=false;
//   }catch(e){
// RLoggerHelper.error('Error getting favorites: $e');
// Loaders.errorSnackBar(title:"Something went wrong" ,message: e.toString());
// isLoadingProductData.value=false;
//   }
// }
void deleteFavorite(CategoryModel favroitData)async{
  try{
    favroitData.isFavorite=false;
    await _categoryRepository.saveFavorite(favroitData);
    Loaders.successSnackBar(title: 'Removed from Favorites');
    update();
  }catch(e){
RLoggerHelper.error('Error deleting favorite: $e');
Loaders.errorSnackBar(title:"Something went wrong" ,message: e.toString());
  }
}
}