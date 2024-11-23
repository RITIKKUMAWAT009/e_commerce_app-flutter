
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/data/services/firebase_storage_service.dart';
import 'package:e_commerce_app/utils/exceptions/firebase_exceptions.dart';
import 'package:e_commerce_app/utils/exceptions/platform_exceptions.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../../../features/shop/models/category_model.dart';

class CategoryRepository extends GetxController{

  final _db=FirebaseFirestore.instance;

  //get all category
Future<List<CategoryModel>> getAllCategories({required String collectionName})async{
  try{
   
final snapshot=await _db.collection(collectionName).get();
final list=snapshot.docs.map((document) => CategoryModel.fromDocumentSnapshot(document)).toList();
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
      final url=await storage.uploadImageData('Products',file,category.name);
      //assign URL to category.image attribute
      category.imageUrl=url;
      //store category in FireStore
      await _db.collection('Products').doc(category.id).set(category.toJson());
    }
  }on FirebaseException catch(e){
    throw TFirebaseException(e.code).message;
  }on PlatformException catch(e){
    throw TPlatformException(e.code).message;
  }catch(e){
    throw 'Something went wrong. Please try again';
  }
}
Future<void>saveFavorite(CategoryModel favroitData)async{
  try{
    await _db.collection('Products').doc(favroitData.id).set(favroitData.toJson());
  }on FirebaseException catch(e){ 
    throw TFirebaseException(e.code).message;
  }on PlatformException catch(e){
    throw TPlatformException(e.code).message;
  }catch(e){
    throw 'Something went wrong. Please try again';
  }
  }
  // Future<List<CategoryModel>> getFavorites()async{
  //   try{
  //     final snapshot=await _db.collection('Products').get();
  //     final list=snapshot.docs.map((document) => CategoryModel.fromDocumentSnapshot(document)).toList();
  //     return list;
  //   }on FirebaseException catch(e){
  //     throw TFirebaseException(e.code).message;
  //   }on PlatformException catch(e){
  //     throw TPlatformException(e.code).message;
  //   }catch(e){
  //     throw 'Something went wrong. Please try again';
  //   }
  // }

}