import 'package:e_commerce_app/data/repositories/user/user_repository.dart';
import 'package:e_commerce_app/features/personalization/controllers/user_controller/user_controller.dart';
import 'package:e_commerce_app/features/personalization/screens/profile/profile_screen.dart';
import 'package:e_commerce_app/utils/helper/network_manager.dart';
import 'package:e_commerce_app/utils/popups/full_screen_loader.dart';
import 'package:e_commerce_app/utils/popups/loaders.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class UpdateNameController extends GetxController{
  static UpdateNameController get instance=>Get.find();

  final firstName=TextEditingController();
  final lastName=TextEditingController();
  final userController=UserController.instance;
  final userRepo=Get.put(UserRepository());
  GlobalKey<FormState> formKey=GlobalKey<FormState>();

  @override
  void onInit() {
    initializeName();
    super.onInit();
  }
 Future<void> initializeName()async{
    firstName.text=userController.user.value.firstName;
    lastName.text=userController.user.value.lastName;
  }

  Future<void> updateUserName()async{
   try{
     FullScreenLoader.openLoadingDialog('We are updating your information', 'assets/images/animations/141594-animation-of-docer.json');

     final isConnected=await NetworkManager.instance.isConnected();
     if(!isConnected){
       FullScreenLoader.stopLoading();
       return;
     }
     if(!formKey.currentState!.validate()){
       FullScreenLoader.stopLoading();
       return;
     }

     Map<String,dynamic> name={
       'FirstName':firstName.text.trim(),
       'LastName':lastName.text.trim()
     };
     await UserRepository.instance.updateSingleField(name);

     userController.user.value.firstName=firstName.text.trim();
     userController.user.value.lastName=lastName.text.trim();

     FullScreenLoader.stopLoading();
     
     Loaders.successSnackBar(title: 'Congratulations',message: 'Your name hase been updated');
     Get.off(()=>const ProfileScreen());

   }catch(e){
     Loaders.errorSnackBar(title: 'Oh Snap',message: e.toString());
   }
   }
}