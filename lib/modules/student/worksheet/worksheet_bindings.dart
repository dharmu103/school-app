import 'package:get/get.dart';
import 'package:school_app/modules/student/worksheet/worksheet_controller.dart';

class WorkSheetBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(WorkSheetController());
  }
}
