import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabLikePage extends StatefulWidget {
  const TabLikePage({super.key});

  @override
  State<TabLikePage> createState() => _TabLikePageState();
}

class _TabLikePageState extends State<TabLikePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("like_receive_list".tr),
        Text("like_send_list".tr),
      ],
    );

  }
}
