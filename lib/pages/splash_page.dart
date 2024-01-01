import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controllers/splash_controller.dart';

class SplashPage extends StatelessWidget {
  static const routeNamed = '/';
  SplashController _splashController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
