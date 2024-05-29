import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../../features/authentication/models/user_model.dart';

class UserRepository extends GetxController{
  static UserRepository get instance=>Get.find();

  final FirebaseFirestore _db=FirebaseFirestore.instance;

  //function to save user data
  Future<void> saveUserRecord(UserModel user)async{
    try{
       await _db.collection('Users').doc(user.id).set(user.toJson());
    }on FirebaseException catch(e){
      throw  FirebaseException(plugin:e.plugin,message: e.message,code: e.code);
    }catch(e){
      throw 'Something went wrong, Please try again';
    }

  }
}