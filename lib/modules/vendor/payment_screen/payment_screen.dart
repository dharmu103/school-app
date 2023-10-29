import 'package:flutter/services.dart';
import 'package:school_app/modules/vendor/vendor_hp_one_draweritem/vendor_hp_one_draweritem.dart';
import 'package:school_app/widgets/vendor_app_bar.dart';

import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_text_form_field.dart';
import '../../student/home_screen_five_draweritem/home_screen_five_draweritem.dart';
import 'controller/payment_controller.dart';
import 'package:flutter/material.dart';
import 'package:school_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class PaymentScreen extends GetWidget<PaymentController> {
  const PaymentScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          appBar: VendorAppBar(),
          //   key: _key, // Assign the key to Scaffold.

          endDrawer: Drawer(
            child: VendorHpOneDraweritem(),
          ),
          body: Container(
              //   width: Get.width,
              height: Get.height,
              //   padding: EdgeInsets.only(top: 53.v),
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
                    height: 62.v,
                    width: 333.h,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 116.v),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgStarpattern,
                    height: 62.v,
                    width: 333.h,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 70.v),
                  ),
                  Container(
                    width: Get.width,
                    height: Get.height,
                    margin: EdgeInsets.only(top: 93.v),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusStyle.roundedBorderUp25,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 50.v,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse109,
                          height: 66.adaptSize,
                          width: 66.adaptSize,
                          radius: BorderRadius.circular(
                            33.h,
                          ),
                        ),
                        SizedBox(height: 12.v),
                        Text(
                          "Muskan Sharma".tr,
                          style: CustomTextStyles.titleSmallOnPrimary,
                        ),
                        SizedBox(height: 10.v),
                        Text(
                          "Available Balance: 500",
                          style: CustomTextStyles.bodyMediumPrimary
                              .copyWith(color: theme.colorScheme.primary),
                        ),
                        SizedBox(height: 45.v),
                        Text(
                          "Enter amount to pay".tr,
                          //   style: CustomTextStyles.bodyMediumGray800,
                        ),
                        SizedBox(height: 11.v),
                        Container(
                            height: 60.v,
                            width: 172.h,
                            child: TextFormField(
                              autofocus: true,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.titleLargeOnPrimary,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  filled: true, border: UnderlineInputBorder()),
                            )),
                        SizedBox(height: 19.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Chip(
                              label: Text(
                                "100+".tr,
                                style: CustomTextStyles.labelLargeBlack900,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 18.h),
                              child: Chip(
                                label: Text(
                                  "200+".tr,
                                  style: CustomTextStyles.labelLargeBlack900,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 18.h),
                              child: Chip(
                                label: Text(
                                  "300+".tr,
                                  style: CustomTextStyles.labelLargeBlack900,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 27.h),
                              child: Chip(
                                label: Text(
                                  "500+".tr,
                                  style: CustomTextStyles.labelLargeBlack900,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        CustomElevatedButton(
                          text: "lbl_continue".tr,
                          margin: EdgeInsets.all(18),
                        ),
                        SizedBox(height: 56.v),
                      ],
                    ),
                  ),
                ],
              ))),
    );
  }
}
