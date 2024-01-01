import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../models/app_user.dart';
import '../utils/fire_auth.dart';
import '../utils/fire_store.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(Duration(seconds: 1),() async {
      AppUser appUser = await FireStore.getMyProfile();
      if (fireUser == null || appUser.name.isEmpty) {
        await Get.offAndToNamed("/");
      }
    });
  }
}
