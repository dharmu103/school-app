import 'package:get/get.dart';

import '../controller/student_transaction_controller.dart';

class StudentTransactionBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StudentTransactionController());
  }
}
