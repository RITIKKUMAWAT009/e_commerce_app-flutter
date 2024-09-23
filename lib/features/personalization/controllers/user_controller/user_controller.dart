import 'package:e_commerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:e_commerce_app/data/repositories/user/user_repository.dart';
import 'package:e_commerce_app/features/authentication/models/user_model.dart';
import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:e_commerce_app/features/personalization/screens/profile/widgets/delete_verification_screen.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helper/network_manager.dart';
import 'package:e_commerce_app/utils/popups/full_screen_loader.dart';
import 'package:e_commerce_app/utils/popups/loaders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();
  final userRepo = Get.put(UserRepository());
  final isProfileLoading = false.obs;
  final GlobalKey<FormState> reAuthFormKey = GlobalKey<FormState>();
  final verifyEmail=TextEditingController();
  final verifyPassword=TextEditingController();


  @override
  void onInit() {
    super.onInit();
    fetchUserData();
  }

  Rx<UserModel> user = UserModel.empty().obs;

  Future<void> fetchUserData() async {
    try {
      isProfileLoading.value = true;
      final user = await userRepo.getUserRecord();
      this.user(user);
    } catch (e) {
      user(UserModel.empty());
    } finally {
      isProfileLoading.value = false;
    }
  }

  Future<void> saveUserDataToStorage(UserCredential? userCredential) async {
    try {
      if (userCredential != null) {
        final nameParts =
            UserModel.nameParts(userCredential.user!.displayName ?? '');
        final userName =
            UserModel.generateUserName(userCredential.user!.displayName ?? '');
        //map data
        final user = UserModel(
            id: userCredential.user!.uid,
            firstName: nameParts[0],
            lastName:
                nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '',
            userName: userName,
            email: userCredential.user!.email ?? '',
            phoneNumber: userCredential.user!.phoneNumber ?? '',
            profilePicture: userCredential.user!.photoURL ?? '');

        await userRepo.saveUserRecord(user);
      }
    } catch (e) {
      Loaders.warningSnackBar(
          title: 'Data not saved',
          message:
              'Something went wrong while saving your Information. You can re-save your data in your Profile');
    }
  }
//Delete account Warning
  void deleteAccountWarningPopup(){
    Get.defaultDialog(
      contentPadding: EdgeInsets.all(TSize.md),
      title: 'Delete Account',
      middleText:
        'Are you sure you want to delete your account permanently? This action is not reversible and all of your data will be removed permanently.',
      confirm: ElevatedButton(onPressed: () async=>deleteUserAccount(),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red,side: BorderSide(color: Colors.red),),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text('Delete'),
          ),
      ),
cancel: OutlinedButton(onPressed: ()=>Navigator.of(Get.overlayContext!).pop(), child: Text('Cancle'))
    );
  }
  Future<void> deleteUserAccount() async {
    try {
      FullScreenLoader.openLoadingDialog('Processing',
          'assets/images/animations/141594-animation-of-docer.json');
//first re authenticate user
      final auth = AuthenticationRepository.instance;
      final provider =
          auth.authUser!.providerData.map((e) => e.providerId).first;
      if (provider.isNotEmpty) {
        if (provider == 'google.com') {
          await auth.loginWithGoogle();
          await auth.deleteAccount();
          FullScreenLoader.stopLoading();
          Get.offAll(() => const LoginScreen());
        } else if (provider == 'password') {
          FullScreenLoader.stopLoading();
          Get.to(() =>const DeleteVerificationScreen());
        }
      }
    } catch (e) {
      Loaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }

  Future<void>reAuthenticateEmailAndPassword()async{
  try{
    FullScreenLoader.openLoadingDialog('Processing', 'assets/images/animations/141594-animation-of-docer.json');
    //check internet
    final isConnected=await NetworkManager.instance.isConnected();
    print("cheking connection");
    if(!isConnected){
      FullScreenLoader.stopLoading();
      return;
    }
    if(reAuthFormKey.currentState!.validate()){
      FullScreenLoader.stopLoading();
      return;
    }
    print('reAuth in userCo');
    await AuthenticationRepository.instance.reAuthenticateWithEmailAndPassword(verifyEmail.text.trim(), verifyPassword.text.trim());
    print('reAuth');
    await AuthenticationRepository.instance.deleteAccount();
    FullScreenLoader.stopLoading();
  }catch(e){
    FullScreenLoader.stopLoading();
    Loaders.errorSnackBar(title: "Oh Snap",message: e.toString());
  }
  }

}
