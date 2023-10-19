import '../controller/sign_in_as_controller.dart';
import 'package:get/get.dart';

class SignInAsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInAsController());
  }
}
