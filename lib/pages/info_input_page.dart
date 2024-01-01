import 'package:blind_date/components/app_button.dart';
import 'package:blind_date/components/app_drop_down.dart';
import 'package:blind_date/components/app_label_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/logger.dart';

class InfoInputPage extends StatefulWidget {
  const InfoInputPage({super.key});

  @override
  State<InfoInputPage> createState() => _InfoInputPageState();
}

class _InfoInputPageState extends State<InfoInputPage> {
  TextEditingController _edtName = TextEditingController();
  String _txtSex = "male";

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
          appButton("confirm".tr, () {
            logger.i("confirm");
          }),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
