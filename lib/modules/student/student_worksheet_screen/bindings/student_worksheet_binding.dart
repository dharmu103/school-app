import 'package:get/get.dart';

import '../controller/student_worksheet_controller.dart';

class StudentWorkSheetBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StudentWorkSheetController());
  }
}
