import 'package:flutter/material.dart';
import 'package:progress_state_button/progress_button.dart';

import '../../../../core/app_export.dart';
import '../models/payment_model.dart';

class PaymentController extends GetxController {
  TextEditingController? paymentValueController =
      TextEditingController(text: "");

  ButtonState btnState = ButtonState.idle;

  onPay() async {
    btnState = ButtonState.loading;
    update();
    await Future.delayed(Duration(seconds: 2));
    btnState = ButtonState.idle;
    update();
    Get.back();
  }

  void onChipClick(value) {
    if (paymentValueController?.text == null ||
        paymentValueController?.text != "") {
      int am = int.parse(paymentValueController!.text);
      paymentValueController!.text = (am + value).toString();
    } else {
      paymentValueController!.text = value.toString();
    }

    update();
    if (paymentValueController?.text != "") {
      if (int.parse(paymentValueController!.text) > 500) {
        Get.snackbar("Not Allowed", "Payment amount is not sufficient",
            colorText: Colors.white, backgroundColor: Colors.red);
      }
    }
  }
}
