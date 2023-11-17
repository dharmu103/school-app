import '../controller/upload_circular_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UploadCircularScreen.
///
/// This class ensures that the UploadCircularController is created when the
/// UploadCircularScreen is first loaded.
class UploadCircularBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UploadCircularController());
  }
}
