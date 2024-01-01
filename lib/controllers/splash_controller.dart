import 'dart:async';

import 'package:blind_date/controllers/home_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../models/profile.dart';
import '../utils/fire_auth.dart';
import '../utils/fire_store.dart';
import '../utils/logger.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(Duration(seconds: 1), () async {
      Profile appUser = await FireStore.getMyProfile();
      if (fireUser == null || appUser.name.isEmpty) {
        logger.i("FirebaseAuth.instance.signInAnonymously()");
        await Get.offAndToNamed("/input");
      } else {
        logger.i("appUser is valid");
        await Get.offAndToNamed("/home");
      }
    });
  }
}
