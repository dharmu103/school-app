import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:school_app/core/app_export.dart';

/// A controller class for the VendorHpScreen.
///
/// This class manages the state of the VendorHpScreen, including the
/// current vendorHpModelObj
class VendorHpController extends GetxController {
  QRViewController? qrController;

  Color borderColor = Colors.red;
  @override
  void onInit() {
    // scanQr();
    super.onInit();
  }

  Future<PermissionStatus> _getCameraPermission() async {
    var status = await Permission.camera.status;
    if (!status.isGranted) {
      final result = await Permission.camera.request();
      return result;
    } else {
      return status;
    }
  }

  scanQr(QRViewController? qrViewController) async {
    PermissionStatus status = await _getCameraPermission();
    if (status == PermissionStatus.granted) {
      this.qrController = qrViewController;

      qrController?.scannedDataStream.listen((event) async {
        Barcode result = event;
        if (result.code != null) {
          borderColor = Colors.green.shade900;
          update();
          //   qrController?.dispose();
          await Future.delayed(Duration(seconds: 1), () {
            Get.toNamed(AppRoutes.vendorPaymentScreen);
            borderColor = Colors.red;
            // update();
          });
        }
        print(
            'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}');
      });
    }
  }
//   FlutterBarcodeScanner.getBarcodeStreamReceiver()
//          .listen((barcode) {
//          /// barcode to be used
//          });
}
