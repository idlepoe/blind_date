import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../models/profile.dart';
import '../utils/fire_auth.dart';
import '../utils/fire_store.dart';

class ProfileController extends GetxController {
  var _name = "".obs;
  var _sex = "male".obs;
  var _photoUrl = "".obs;

  get name => _name;

  set name(value) {
    _name = value;
  }

  Future<void> updateProfile(Profile user) async {
    await FireStore.updateProfile(user);
  }

  get sex => _sex;

  set sex(value) {
    _sex = value;
  }

  get photoUrl => _photoUrl;

  set photoUrl(value) {
    _photoUrl = value;
  }
}
