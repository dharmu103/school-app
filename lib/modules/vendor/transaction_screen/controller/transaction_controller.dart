import 'package:school_app/core/app_export.dart';

/// A controller class for the TransactionScreen.
///
/// This class manages the state of the TransactionScreen, including the
/// current transactionModelObj
class TransactionController extends GetxController {
//   Rx<TransactionModel> transactionModelObj = TransactionModel().obs;
  int? transactionOrder = 0;

  void changeListOrder(int? v) {
    transactionOrder = v!;
    update();
  }
}
