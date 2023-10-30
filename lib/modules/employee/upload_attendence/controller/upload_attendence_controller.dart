import 'package:flutter/material.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:school_app/core/app_export.dart';
import 'package:school_app/widgets/dialogs/upload_success_dialog.dart';

class UploadAttendenceController extends GetxController {
  List attendenceList = List.generate(20, (index) => null);
  ButtonState btnState = ButtonState.idle;

  onTabTrue(index) {
    attendenceList[index] = true;
    update();
  }

  onTabFalse(index) {
    attendenceList[index] = false;
    update();
  }

  onUploadAttendence() async {
    btnState = ButtonState.loading;
    update();
    await Future.delayed(Duration(seconds: 1));
    Get.dialog(UploadDailogWidget());
    btnState = ButtonState.idle;
    update();
  }
}
