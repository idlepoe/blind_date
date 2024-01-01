import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../models/profile.dart';
import '../utils/fire_auth.dart';
import '../utils/fire_store.dart';

class HomeController extends GetxController {
  var controller = PageController(initialPage: 0).obs;
  var currentIndex = 0.obs;

  var me = Profile.fromJson({});

  @override
  void onInit() {
    super.onInit();
    Timer(Duration(seconds: 1),() async {
      me = await FireStore.getMyProfile();
      if (fireUser == null || me.name.isEmpty) {
        await Get.offAndToNamed("/");
      }
    });
  }

}
