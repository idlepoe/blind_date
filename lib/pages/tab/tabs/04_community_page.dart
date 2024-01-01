import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabCommunityPage extends StatefulWidget {
  const TabCommunityPage({super.key});

  @override
  State<TabCommunityPage> createState() => _TabCommunityPageState();
}

class _TabCommunityPageState extends State<TabCommunityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: Text("male"),
            title: Text("test"),
            subtitle: Text("name 20:05"),
            trailing: Column(
              children: [
                Text("0"),
                Text("comment".tr),
              ],
            ),
          ),
          ListTile(
            leading: Text("male"),
            title: Text("test"),
            subtitle: Text("name 20:05"),
            trailing: Column(
              children: [
                Text("0"),
                Text("comment".tr),
              ],
            ),
          ),
          ListTile(
            leading: Text("male"),
            title: Text("test"),
            subtitle: Text("name 20:05"),
            trailing: Column(
              children: [
                Text("0"),
                Text("comment".tr),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add)),
    );
  }
}
