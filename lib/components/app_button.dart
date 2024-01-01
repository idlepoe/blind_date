import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget appButton(String label, void Function() action,
    {bool isDisabled = false}) {
  return Container(
    height: 40,
    width: double.infinity,
    child: ElevatedButton(
        onPressed: isDisabled ? null : action, child: Text(label)),
  );
}
