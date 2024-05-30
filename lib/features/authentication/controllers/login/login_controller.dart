import 'package:e_commerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:e_commerce_app/features/personalization/controllers/user_controller/user_controller.dart';
import 'package:e_commerce_app/utils/helper/network_manager.dart';
import 'package:e_commerce_app/utils/popups/full_screen_loader.dart';
import 'package:e_commerce_app/utils/popups/loaders.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController{
  LoginController get instance=>Get.find();
final userController=Get.put(UserController());
  //variables
final  isRemember=false.obs;
final  hidePassword=true.obs;
final localStorage=GetStorage();
final emailController=TextEditingController();
final passwordController=TextEditingController();
final GlobalKey<FormState> loginFormKey=GlobalKey<FormState>();


  @override
  void onInit() {
    super.onInit();
   emailController.text=localStorage.read('REMEMBER_ME_EMAIL')??'' ;
   passwordController.text=localStorage.read('REMEMBER_ME_PASSWORD')??'' ;
  } //email password signIn
Future<void> emailAndPasswordSignIn()async{
  try{
    //Start loading
    FullScreenLoader.openLoadingDialog('Logging you in...', 'assets/images/animations/141594-animation-of-docer.json');

    //check internet connectivity
    final isConnected=await NetworkManager.instance.isConnected();
    if(!isConnected){
       FullScreenLoader.stopLoading();
      return;
    }
    //form validation
    if(!loginFormKey.currentState!.validate()){
      FullScreenLoader.stopLoading();
      return;
    }
    //save data if remember me is selected
    if(isRemember.value){
      localStorage.write("REMEMBER_ME_EMAIL", emailController.text.trim());
      localStorage.write("REMEMBER_ME_PASSWORD", passwordController.text.trim());
    }

    //login user with Email and password Authentication
    final userCredentials=await AuthenticationRepository.instance.loginWithEmailAndPassword(emailController.text.trim(), passwordController.text.trim());

    //remove loader
    FullScreenLoader.stopLoading();
//Redirect
  AuthenticationRepository.instance.screenRedirect();

  }catch (e){
    FullScreenLoader.stopLoading();
    Loaders.errorSnackBar(title: 'Oh Snap',message: e.toString());
  }
}


Future<void> googleSignIn()async{
    try{
      FullScreenLoader.openLoadingDialog('Logging in...', 'assets/images/animations/141594-animation-of-docer.json');

      //checking network connectivity
      final bool isConnected=await NetworkManager.instance.isConnected();
      if(!isConnected){
        FullScreenLoader.stopLoading();
        return;
      }
      final userCredential=await AuthenticationRepository.instance.loginWithGoogle();
      //save data to local storage
     await userController.instance.saveUserDataToStorage(userCredential);

     //remove loader
      FullScreenLoader.stopLoading();
      AuthenticationRepository.instance.screenRedirect();
    }catch(e){
      FullScreenLoader.stopLoading();
      Loaders.errorSnackBar(title: 'Oh Snap',message: e.toString());
    }
}
}