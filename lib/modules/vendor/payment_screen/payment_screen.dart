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
class PaymentScreen extends GetView<PaymentController> {
  const PaymentScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    final controller = Get.put(PaymentController());
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
                    height: Get.height,
                    margin: EdgeInsets.only(top: 93),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusStyle.roundedBorderUp25,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse109,
                          height: 66.adaptSize,
                          width: 66.adaptSize,
                          radius: BorderRadius.circular(
                            33,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          "Muskan Sharma".tr,
                          style: CustomTextStyles.titleSmallOnPrimary,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Available Balance: 500",
                          style: CustomTextStyles.bodyMediumPrimary
                              .copyWith(color: theme.colorScheme.primary),
                        ),
                        SizedBox(height: 40),
                        Text(
                          "Enter amount to pay".tr,
                          //   style: CustomTextStyles.bodyMediumGray800,
                        ),
                        SizedBox(height: 11),
                        Container(
                            height: 60,
                            width: 172,
                            child: GetBuilder<PaymentController>(
                              init: PaymentController(),
                              initState: (_) {},
                              builder: (_) {
                                return TextFormField(
                                  controller: controller.paymentValueController,
                                  autofocus: true,
                                  onChanged: (v) {
                                    if (v != "") {
                                      if (int.parse(v) > 500) {
                                        Get.snackbar("Not Allowed",
                                            "Payment amount is not sufficient",
                                            colorText: Colors.white,
                                            backgroundColor: Colors.red);
                                      }
                                    }
                                  },
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.titleLargeOnPrimary,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      filled: true,
                                      border: UnderlineInputBorder()),
                                );
                              },
                            )),
                        SizedBox(height: 19),
                        GetBuilder<PaymentController>(
                          init: PaymentController(),
                          initState: (_) {},
                          builder: (_) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ChoiceChip(
                                  onSelected: (v) =>
                                      controller.onChipClick(100),
                                  selected: false,
                                  label: Text(
                                    "100+".tr,
                                    style: CustomTextStyles.labelLargeBlack900,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 18),
                                  child: ChoiceChip(
                                    onSelected: (v) =>
                                        controller.onChipClick(200),
                                    selected: false,
                                    label: Text(
                                      "200+".tr,
                                      style:
                                          CustomTextStyles.labelLargeBlack900,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 18),
                                  child: ChoiceChip(
                                    onSelected: (v) =>
                                        controller.onChipClick(300),
                                    selected: false,
                                    label: Text(
                                      "300+".tr,
                                      style:
                                          CustomTextStyles.labelLargeBlack900,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 27),
                                  child: ChoiceChip(
                                    onSelected: (v) =>
                                        controller.onChipClick(500),
                                    selected: false,
                                    label: Text(
                                      "500+".tr,
                                      style:
                                          CustomTextStyles.labelLargeBlack900,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                        Spacer(),
                        GetBuilder<PaymentController>(
                          init: PaymentController(),
                          initState: (_) {},
                          builder: (_) {
                            return CustomElevatedButton(
                              text: "lbl_continue".tr,
                              margin: EdgeInsets.all(18),
                              buttonState: _.btnState,
                              onTap: () => controller.onPay(),
                            );
                          },
                        ),
                        // SizedBox(height: 56),
                      ],
                    ),
                  ),
                ],
              ))),
    );
  }
}
