import 'package:blind_date/pages/tab/tabs/01_tab_matching_page.dart';
import 'package:blind_date/pages/tab/tabs/02_tab_approve_page.dart';
import 'package:blind_date/pages/tab/tabs/03_tab_like_page.dart';
import 'package:blind_date/pages/tab/tabs/04_community_page.dart';
import 'package:blind_date/pages/tab/tabs/05_cotents_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _controller = PageController(initialPage: 0);
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("app_name".tr)),
      body: PageView(
        controller: _controller,
        children: [
          TabMatchingPage(),
          TabApprovePage(),
          TabLikePage(),
          TabCommunityPage(),
          TabContentsPage(),
        ],
        onPageChanged: (index) {

        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        showUnselectedLabels: true,
        elevation: 1,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.monitor_heart), label: "match".tr),
          BottomNavigationBarItem(icon: Icon(Icons.approval), label: "approve".tr),
          BottomNavigationBarItem(
              icon: Icon(Icons.thumb_up), label: "like".tr),
          BottomNavigationBarItem(
              icon: Icon(Icons.speaker_notes), label: "community".tr),
          BottomNavigationBarItem(
              icon: Icon(Icons.content_paste_search_rounded), label: "contents".tr),
        ],
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
          _controller.jumpToPage(index);
        },
      ),
    );
  }
}
