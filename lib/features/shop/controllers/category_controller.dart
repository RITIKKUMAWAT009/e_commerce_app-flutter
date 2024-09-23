import 'package:e_commerce_app/data/repositories/categories/category_repository.dart';
import 'package:e_commerce_app/features/shop/models/category_model.dart';
import 'package:e_commerce_app/localizations/dummy_data/dummy_data.dart';
import 'package:e_commerce_app/utils/popups/full_screen_loader.dart';
import 'package:e_commerce_app/utils/popups/loaders.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  static CategoryController get instance => Get.find();

  final isLoading = false.obs;
  final _categoryRepo = Get.put(CategoryRepository());
  RxList<CategoryModel> allCategoryList = <CategoryModel>[].obs;
  RxList<CategoryModel> featuredCategories = <CategoryModel>[].obs;

  @override
  void onInit() {
    isLoading.value=true;
    fetchCategories();
    super.onInit();
  }

  //load category data

  Future<void> fetchCategories() async {
    try {
      //show loader while loading
      isLoading.value = true;
      // FullScreenLoader.openLoadingDialog('text', '');
      List<CategoryModel> categories = await _categoryRepo.getAllCategories();
print('after calling in ccont.');
      //update category list
      allCategoryList.assignAll(categories);
      //filter featured categories
      featuredCategories.assignAll(allCategoryList
          .where((category) => category.isFeatured && category.parentId.isEmpty)
          .toList());
    } catch (e) {
      Loaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    } finally {
      Future.delayed(Duration(seconds: 3),() => isLoading.value=false,);
      // isLoading.value=false;
    }
  }
// load selected category data

// Get category or sub category products

//upload data to firestore
Future<void>uploadData()async{
    try{
      await _categoryRepo.uploadDummyData(DummyData.categories);
      Loaders.successSnackBar(title: 'Data Uploaded Successfully');
    }catch(e){
      Loaders.errorSnackBar(title: 'Oh Snap',message: e);
    }
}
}
