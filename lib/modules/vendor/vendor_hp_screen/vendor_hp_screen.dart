import 'dart:io';

import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:school_app/modules/vendor/vendor_hp_one_draweritem/vendor_hp_one_draweritem.dart';
import 'package:school_app/widgets/custom_elevated_button.dart';
import 'package:school_app/widgets/vendor_app_bar.dart';

import '../../../widgets/custom_image_view.dart';
import 'controller/vendor_hp_controller.dart';
import 'package:flutter/material.dart';
import 'package:school_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class VendorHpScreen extends GetWidget<VendorHpController> {
  VendorHpScreen({Key? key})
      : super(
          key: key,
        );
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  QRViewController? qrViewController;
  void reassemble() {
    if (Platform.isAndroid) {
      qrViewController?.pauseCamera();
    } else if (Platform.isIOS) {
      qrViewController?.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          appBar: VendorAppBar(),
          endDrawer: Drawer(
            child: VendorHpOneDraweritem(),
          ),
          body: Container(
              width: Get.width,
              // height: Get.height,
              //   padding: EdgeInsets.only(top: 53),
              decoration: BoxDecoration(
                color: Colors.black,
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [
                    theme.colorScheme.onErrorContainer.withOpacity(1),
                    theme.colorScheme.onErrorContainer.withOpacity(0),
                  ],
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: Get.height,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(1.56, 0.48),
                          end: Alignment(0.5, -0.53),
                          colors: [
                            theme.colorScheme.primary,
                            appTheme.teal300,
                          ],
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgStarpattern,
                    height: 62,
                    width: 333,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 116),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgStarpattern,
                    height: 62,
                    width: 333,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 70),
                  ),
                  Container(
                    width: Get.width,
                    margin: EdgeInsets.only(top: 93),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusStyle.roundedBorderUp25,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Expanded(
                          child: Container(
                            //   decoration: AppDecoration.outlineBlack,
                            width: Get.width - 48,
                            height: Get.height * 0.6,
                            child: GetBuilder<VendorHpController>(builder: (_) {
                              return QRView(
                                overlay: QrScannerOverlayShape(
                                  borderColor: controller.borderColor,
                                  borderRadius: 10,
                                  borderLength: 30,
                                  borderWidth: 10,
                                ),
                                key: qrKey,
                                onQRViewCreated: (QRViewController q) =>
                                    controller.scanQr(q),
                              );
                            }),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 18, right: 18),
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: CustomElevatedButton(
                                text: "Scanning..",
                              )),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                ],
              ))),
    );
  }
}
