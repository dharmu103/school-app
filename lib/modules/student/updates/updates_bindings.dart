import 'package:get/get.dart';
import 'updates_controller.dart';

class UpdatesBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(UpdatesController());
  }
}
