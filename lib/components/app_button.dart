import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget appButton(String label, void Function() action) {
  return Container(
    height: 40,
    width: double.infinity,
    child: ElevatedButton(onPressed: action, child: Text(label)),
  );
}
