
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/data/services/firebase_storage_service.dart';
import 'package:e_commerce_app/utils/exceptions/firebase_exceptions.dart';
import 'package:e_commerce_app/utils/exceptions/platform_exceptions.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../features/shop/models/category_model.dart';

class CategoryRepository extends GetxController{

  final _db=FirebaseFirestore.instance;

  //get all category
Future<List<CategoryModel>> getAllCategories()async{
  try{
    print('inside get all categories');
final snapshot=await _db.collection('Categories').get();
    print('after calling getallcategories methode');
    print(snapshot);
final list=snapshot.docs.map((document) => CategoryModel.fromDocumentSnapshot(document)).toList();
print(list);
return list;
  }on FirebaseException catch(e){
    throw TFirebaseException(e.code).message;
  }on PlatformException catch(e){
    throw TPlatformException(e.code).message;
  }catch(e){
    throw 'Something went wrong. Please try again';
  }
}

//get sub categories


//upload Categories to the cloud firebase
Future<void> uploadDummyData(List<CategoryModel>categories)async{
  try{
    //object
    final storage=Get.put(FirebaseStorageService());
    //loop through each category
    for(var category in categories){
      //get image link from local assets
      final file=await storage.getImageDataFromAssets(category.imageUrl);

      //upload image get its url
      final url=await storage.uploadImageData('Categories',file,category.name);
      //assign URL to category.image attribute
      category.imageUrl=url;
      //store category in FireStore
      await _db.collection('Categories').doc(category.id).set(category.toJson());
    }
  }on FirebaseException catch(e){
    throw TFirebaseException(e.code).message;
  }on PlatformException catch(e){
    throw TPlatformException(e.code).message;
  }catch(e){
    throw 'Something went wrong. Please try again';
  }
}
}