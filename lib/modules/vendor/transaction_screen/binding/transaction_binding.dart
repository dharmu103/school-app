import '../controller/transaction_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TransactionScreen.
///
/// This class ensures that the TransactionController is created when the
/// TransactionScreen is first loaded.
class TransactionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransactionController());
  }
}
