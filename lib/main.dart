import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app.dart';
import 'data/repositories/authentication/authentication_repository.dart';
import 'firebase_options.dart';

Future<void> main() async {
  // Add widget binding
  final WidgetsBinding widgetsBinding=WidgetsFlutterBinding.ensureInitialized();
  //  init local storage
  await GetStorage.init();
  //TODO: init payment methode

  //TODO: await native splash
FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  //Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((FirebaseApp value) => Get.put(AuthenticationRepository()));;

  //TODO: Initialize Authentication

  runApp(const MyApp());
}

///android   1:787682423724:android:1ac845cde753ff313f4009
// ios       1:787682423724:ios:299b172b166ca2c93f4009
// macos     1:787682423724:ios:299b172b166ca2c93f4009
