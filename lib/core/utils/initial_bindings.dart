import 'package:school_app/core/app_export.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());

    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
