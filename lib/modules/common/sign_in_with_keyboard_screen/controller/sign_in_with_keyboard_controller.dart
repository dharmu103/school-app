import 'package:firebase_auth/firebase_auth.dart';
import 'package:school_app/core/app_export.dart';
import 'package:flutter/material.dart';

class SignInWithKeyboardController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  signInWithEmail() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text);

      if (userCredential.user?.email != null) {
        PrefUtils.sharedPreferences?.setString("uid", userCredential.user!.uid);
        print(userCredential.user?.email);
        // signin();
        return "success";
      } else {
        Get.snackbar("Error", "Please contact the administrator",
            colorText: Colors.red, backgroundColor: Colors.white);
        return "error";
      }
    } catch (e) {
      Get.snackbar("Error", "Please contact the administrator",
          colorText: Colors.red, backgroundColor: Colors.white);
      return "error";
    }
  }

  signin() {
    FocusManager.instance.primaryFocus?.unfocus();
    String? loginAs = PrefUtils.sharedPreferences?.getString("login_as");
    print(emailController.text.trim());
    print(loginAs);
    if (loginAs == "lbl_student".tr &&
        emailController.text.trim() == "student@gmail.com") {
      Get.toNamed(AppRoutes.homeScreen);
    } else if (loginAs == "lbl_employee".tr &&
        emailController.text.trim() == "employee@gmail.com") {
      Get.toNamed(AppRoutes.employeeScreen);
    } else if (loginAs == "lbl_vendor".tr &&
        emailController.text.trim() == "vendor@gmail.com") {
      Get.toNamed(AppRoutes.vendorScreen);
    }
  }

  signinDebugMode() {
    String? loginAs = PrefUtils.sharedPreferences?.getString("login_as");
    print(emailController.text.trim());
    print(loginAs);
    if (loginAs == "lbl_student".tr) {
      Get.toNamed(AppRoutes.homeScreen);
    } else if (loginAs == "lbl_employee".tr) {
      Get.toNamed(AppRoutes.employeeScreen);
    } else if (loginAs == "lbl_vendor".tr) {
      Get.toNamed(AppRoutes.vendorScreen);
    }
  }
}
