import 'package:blind_date/components/app_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabApprovePage extends StatefulWidget {
  const TabApprovePage({super.key});

  @override
  State<TabApprovePage> createState() => _TabApprovePageState();
}

class _TabApprovePageState extends State<TabApprovePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("no_approve_target_msg_1"),
          Text("no_approve_target_msg_2"),
          Expanded(child: SizedBox()),
          appButton("invite_friend", () {})
        ],
      ),
    );
  }
}
