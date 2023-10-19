import '../controller/home_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeScreenScreen.
///
/// This class ensures that the HomeScreenController is created when the
/// HomeScreenScreen is first loaded.
class HomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenController());
  }
}
