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
    return Text(this.runtimeType.toString());

  }
}
