import 'package:blind_date/pages/tab/tabs/01_tab_matching_page.dart';
import 'package:blind_date/pages/tab/tabs/02_tab_approve_page.dart';
import 'package:blind_date/pages/tab/tabs/03_tab_like_page.dart';
import 'package:blind_date/pages/tab/tabs/04_community_page.dart';
import 'package:blind_date/pages/tab/tabs/05_cotents_page.dart';
import 'package:blind_date/pages/tab/tabs/widget/left_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const routeName = '/home';
  HomeController _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("app_name".tr), actions: [
        IconButton(
            onPressed: () {}, icon: Icon(Icons.shopping_basket_outlined)),
        IconButton(onPressed: () {}, icon: Icon(Icons.alarm)),
      ]),
      body: PageView(
        controller: _homeController.controller.value,
        children: [
          TabMatchingPage(),
          TabApprovePage(),
          TabLikePage(),
          TabCommunityPage(),
          TabContentsPage(),
        ],
        onPageChanged: (index) {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _homeController.currentIndex.value,
        showUnselectedLabels: true,
        elevation: 1,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.monitor_heart), label: "match".tr),
          BottomNavigationBarItem(
              icon: Icon(Icons.approval), label: "approve".tr),
          BottomNavigationBarItem(icon: Icon(Icons.thumb_up), label: "like".tr),
          BottomNavigationBarItem(
              icon: Icon(Icons.speaker_notes), label: "community".tr),
          BottomNavigationBarItem(
              icon: Icon(Icons.content_paste_search_rounded),
              label: "contents".tr),
        ],
        onTap: (int index) {
          setState(() {
            _homeController.currentIndex.value = index;
          });
          _homeController.controller.value.jumpToPage(index);
        },
      ),
      drawer: leftDrawer(_homeController),
    );
  }
}
