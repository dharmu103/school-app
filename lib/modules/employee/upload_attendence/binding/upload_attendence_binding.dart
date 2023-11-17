import 'package:school_app/core/app_export.dart';
import 'package:school_app/modules/employee/upload_attendence/controller/upload_attendence_controller.dart';

class UploadAttendenceBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UploadAttendenceController());
  }
}
