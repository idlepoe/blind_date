import 'package:blind_date/pages/home_page.dart';
import 'package:blind_date/pages/info_input_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';

import '../utils/fire_auth.dart';
import '../utils/logger.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        if (fireUser == null) {
          logger.i("FirebaseAuth.instance.signInAnonymously()");
          await FirebaseAuth.instance.signInAnonymously();
          await Get.off("/input");
        } else {
          if (fireUser!.displayName == null) {
            await Get.toNamed("/input");
          } else {
            await Get.toNamed("/home");
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
