import 'package:school_app/core/app_export.dart';
import 'package:flutter/material.dart';

class SignInWithKeyboardController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
}
