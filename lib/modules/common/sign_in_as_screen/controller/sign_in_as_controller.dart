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
    DocumentSnapshot doc = await FirebaseFirestore.instance
        .collection("appinfo")
        .doc("latest")
        .get();
    print(doc);
    if (doc.data() != null) {
      Map<String, dynamic>? data = doc.data() as Map<String, dynamic>;
      if (data["version"] == "1.0.0") {
        PrefUtils.sharedPreferences?.setString("login_as", selectedButton!);
        print(text);

        Get.toNamed(AppRoutes.signInWithKeyboardScreen);
      } else {
        Get.snackbar("Error", "Please Contect Provider",
            colorText: Colors.white, backgroundColor: Colors.red);
      }
    } else {
      Get.snackbar("Error", "Please Contect Provider",
          colorText: Colors.white, backgroundColor: Colors.red);
    }
  }

  selectButtondebug(text) {
    selectedButton = text;
    PrefUtils.sharedPreferences?.setString("login_as", selectedButton!);
    print(text);

    update();
    Get.toNamed(AppRoutes.signInWithKeyboardScreen);
  }
}
