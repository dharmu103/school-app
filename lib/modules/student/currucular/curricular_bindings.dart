import 'package:get/get.dart';
import 'curricular_controller.dart';

class CurricularBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(CurricularController());
  }
}
