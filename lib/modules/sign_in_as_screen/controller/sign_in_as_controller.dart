import 'package:school_app/core/app_export.dart';

class SignInAsController extends GetxController {
  String? selectedButton = "lbl_student".tr;

  selectButton(text) {
    selectedButton = text;
    print(text);
    update();
  }
}
