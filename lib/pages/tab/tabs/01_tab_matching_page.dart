import 'package:blind_date/controllers/home_controller.dart';
import 'package:blind_date/utils/fire_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabMatchingPage extends StatefulWidget {
  const TabMatchingPage({super.key});

  @override
  State<TabMatchingPage> createState() => _TabMatchingPageState();
}

class _TabMatchingPageState extends State<TabMatchingPage> {
  @override
  Widget build(BuildContext context) {
    return Text(this.runtimeType.toString());
  }
}
