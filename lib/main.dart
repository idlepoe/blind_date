import 'package:blind_date/pages/tab/home_page.dart';
import 'package:blind_date/pages/profile_input_page.dart';
import 'package:blind_date/pages/splash_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_frame/flutter_web_frame.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

import 'controllers/splash_controller.dart';
import 'firebase_options.dart';
import 'locale/messages.dart';

Future<void> main() async {
  await GetStorage.init();
  Get.put(SplashController());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Messages(),
      locale: Get.deviceLocale,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: false,
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        }),
      ),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        bottom: true,
        child: FlutterWebFrame(
          builder: (context) {
            return MaterialApp(
              home: SplashPage(),
            );
          },
          maximumSize: Size(475.0, 812.0),
          enabled: kIsWeb,
          backgroundColor: Colors.grey,
        ),
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: '/', page: () => SplashPage()),
        GetPage(name: '/input', page: () => ProfileInputPage()),
        GetPage(name: '/home', page: () => HomePage()),
      ],
    );
  }
}
