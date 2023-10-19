import '../controller/vendor_hp_controller.dart';
import 'package:get/get.dart';

class VendorHpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VendorHpController());
  }
}
