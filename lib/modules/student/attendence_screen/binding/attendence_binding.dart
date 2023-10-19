import '../controller/attendence_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AttendenceScreen.
///
/// This class ensures that the AttendenceController is created when the
/// AttendenceScreen is first loaded.
class AttendenceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AttendenceController());
  }
}
