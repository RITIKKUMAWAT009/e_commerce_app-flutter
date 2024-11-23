import 'dart:io';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageService extends GetxController{
  static FirebaseStorageService get instance=> Get.find();

  final _firebaseStorage=FirebaseStorage.instance;

//upload local assets from IDE
//Return a Unit8List containing image data
Future<Uint8List>getImageDataFromAssets(String path)async{
  try{
    final byteData=await rootBundle.load(path);
    final imageData=byteData.buffer.asUint8List(byteData.offsetInBytes,byteData.lengthInBytes);
    return imageData;
  }catch(e){
    throw 'Error loading image data: $e';
  }
}
//upload image using imageData on cloud storage
//returns the download URL of the uploaded image
Future<String> uploadImageData (String path,Uint8List image,String name)async{
  try{
    final ref=_firebaseStorage.ref(path).child(name);
    await ref.putData(image);
    final url=await ref.getDownloadURL();
    return url;
  }catch(e){
    //handle exception gracefully
    if(e is FirebaseException){
      throw 'Firebase Exception: ${e.message}';
    }else if(e is SocketException){
      throw 'Network Error: ${e.message}';
    }else if(e is PlatformException){
      throw 'PlatForm Exception: ${e.message}';
    }else{
      throw 'Something Went Wrong! Please try again.';
    }
  }
}
}