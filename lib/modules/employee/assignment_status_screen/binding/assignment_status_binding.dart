import '../controller/assignment_status_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AssignmentStatusScreen.
///
/// This class ensures that the AssignmentStatusController is created when the
/// AssignmentStatusScreen is first loaded.
class AssignmentStatusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AssignmentStatusController());
  }
}
