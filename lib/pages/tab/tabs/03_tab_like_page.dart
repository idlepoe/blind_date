import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabLikePage extends StatefulWidget {
  const TabLikePage({super.key});

  @override
  State<TabLikePage> createState() => _TabLikePageState();
}

class _TabLikePageState extends State<TabLikePage> {
  @override
  Widget build(BuildContext context) {
    return Text(this.runtimeType.toString());

  }
}
