import 'package:school_app/core/app_export.dart';

import '../controller/upload_result_controller.dart';

class UploadResultBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UploadResultController());
  }
}
