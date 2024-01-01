import 'package:blind_date/components/app_button.dart';
import 'package:blind_date/components/app_drop_down.dart';
import 'package:blind_date/components/app_label_text_field.dart';
import 'package:blind_date/utils/fire_auth.dart';
import 'package:blind_date/utils/fire_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../models/profile.dart';
import '../utils/logger.dart';

class ProfileInputPage extends StatefulWidget {
  const ProfileInputPage({super.key});

  @override
  State<ProfileInputPage> createState() => _ProfileInputPageState();
}

class _ProfileInputPageState extends State<ProfileInputPage> {
  TextEditingController _edtName = TextEditingController();
  String _txtSex = "male";


  @override
  void initState() {
    super.initState();
    fireAuth.signInAnonymously();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("title_info_input".tr)),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appLabelTextField("name".tr, _edtName, (s) {
              setState(() {});
            }),
            SizedBox(height: 10),
            appDropDown(context, "sex", ["male", "female"], _txtSex, (s) {
              _txtSex = s!;
            }),
            Expanded(child: SizedBox()),
          ],
        ),
      ),
      bottomSheet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          appButton("confirm".tr, () async {
            Profile target = Profile(_edtName.text, _txtSex, "");
            await FireStore.updateProfile(target);
            await Get.offAndToNamed("/home");
          }, isDisabled: _edtName.text.isEmpty),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
