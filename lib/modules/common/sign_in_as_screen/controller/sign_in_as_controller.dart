import 'package:school_app/core/app_export.dart';

class SignInAsController extends GetxController {
  String? selectedButton = "lbl_student".tr;

  selectButton(text) {
    selectedButton = text;
    PrefUtils.sharedPreferences?.setString("login_as", selectedButton!);
    print(text);
    update();
  }
}
