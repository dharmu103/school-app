import 'package:school_app/core/app_export.dart';

class SignUpController extends GetxController {
  signinDebugMode() {
    String? loginAs = PrefUtils.sharedPreferences?.getString("login_as");

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
