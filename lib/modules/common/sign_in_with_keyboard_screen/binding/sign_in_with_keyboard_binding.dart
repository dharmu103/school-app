import '../controller/sign_in_with_keyboard_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignInWithKeyboardScreen.
///
/// This class ensures that the SignInWithKeyboardController is created when the
/// SignInWithKeyboardScreen is first loaded.
class SignInWithKeyboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInWithKeyboardController());
  }
}
