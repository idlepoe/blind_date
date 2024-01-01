import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../controllers/home_controller.dart';
import '../../../../utils/logger.dart';

Widget leftDrawer(HomeController homeController) {
  return Drawer(
    child: Column(
      children: [
        Container(
          color: Colors.red,
          height: 200,
          child: Image.network(
            homeController.me.pictureUrl,
            errorBuilder: (context, error, stackTrace) {
              return InkWell(
                  onTap: () async {
                    final pickedFile = await ImagePicker().pickImage(
                      source: ImageSource.gallery,
                    );
                    if (pickedFile != null) {
                      logger.i(pickedFile);
                    }
                  }, child: Center(child: Text("no_image_tap_add".tr)));
            },
          ),
        ),
        Text(homeController.me.name),
        Text(homeController.me.sex),
      ],
    ),
  );
}
