import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget appLabelTextField(    String label, TextEditingController textEditingController,void Function(String) onChange) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label),
      TextField(
        controller: textEditingController,
        decoration: InputDecoration(
          errorText: textEditingController.text.isEmpty ? "validate_empty_string" : null,
        ),
        onChanged: onChange,
      ),
    ],
  );
}
