import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabContentsPage extends StatefulWidget {
  const TabContentsPage({super.key});

  @override
  State<TabContentsPage> createState() => _TabContentsPageState();
}

class _TabContentsPageState extends State<TabContentsPage> {
  @override
  Widget build(BuildContext context) {
    return Text(this.runtimeType.toString());

  }
}
