import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:school_app/core/app_export.dart';

class SignInAsController extends GetxController {
  String? selectedButton = "".tr;
  @override
  onInit() {
    super.onInit();
  }

  selectButton(text) async {
    selectedButton = text;
    update();

    PrefUtils.sharedPreferences?.setString("login_as", selectedButton!);
    print(text);

    Get.toNamed(AppRoutes.signInWithKeyboardScreen);
    //   } else {
    //     Get.snackbar("Error", "Please Contect Provider",
    //         colorText: Colors.white, backgroundColor: Colors.red);
    //   }
    // } else {
    //   Get.snackbar("Error", "Please Contect Provider",
    //       colorText: Colors.white, backgroundColor: Colors.red);
    // }
  }

  selectButtondebug(text) {
    selectedButton = text;
    PrefUtils.sharedPreferences?.setString("login_as", selectedButton!);
    print(text);

    update();
    Get.toNamed(AppRoutes.signInWithKeyboardScreen);
  }
}
