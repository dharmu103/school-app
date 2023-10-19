import '../controller/employ_home_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EmployHpScreen.
///
/// This class ensures that the EmployHpController is created when the
/// EmployHpScreen is first loaded.
class EmployHpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmployHomeController());
  }
}
