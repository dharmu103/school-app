import 'controller/sign_in_as_controller.dart';
import 'package:flutter/material.dart';
import 'package:school_app/core/app_export.dart';
import 'package:school_app/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class SignInAsScreen extends GetWidget<SignInAsController> {
  const SignInAsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 24,
            ),
            child: GetBuilder<SignInAsController>(
              init: SignInAsController(),
              initState: (_) {},
              builder: (_) {
                return Column(
                  children: [
                    Text(
                      "msg_select_your_role".tr,
                      style: CustomTextStyles.titleMediumBlack900Medium,
                    ),
                    Spacer(),
                    CustomElevatedButton(
                      text: "lbl_student".tr,
                      margin: EdgeInsets.symmetric(horizontal: 22),
                      buttonTextStyle:
                          controller.selectedButton == "lbl_student".tr
                              ? theme.textTheme.titleMedium
                              : theme.textTheme.titleMedium
                                  ?.copyWith(color: Colors.black),
                      buttonStyle: controller.selectedButton == "lbl_student".tr
                          ? CustomButtonStyles.fillPrimaryTL28
                          : CustomButtonStyles.outLineBorderPrimary,
                      onTap: () => controller.selectButtondebug(
                        "lbl_student".tr,
                      ),
                    ),
                    CustomElevatedButton(
                      text: "lbl_employee".tr,
                      margin: EdgeInsets.only(
                        left: 22,
                        top: 19,
                        right: 22,
                      ),
                      buttonTextStyle:
                          controller.selectedButton == "lbl_employee".tr
                              ? theme.textTheme.titleMedium
                              : theme.textTheme.titleMedium
                                  ?.copyWith(color: Colors.black),
                      buttonStyle:
                          controller.selectedButton == "lbl_employee".tr
                              ? CustomButtonStyles.fillPrimaryTL28
                              : CustomButtonStyles.outLineBorderPrimary,
                      onTap: () => controller.selectButtondebug(
                        "lbl_employee".tr,
                      ),
                    ),
                    CustomElevatedButton(
                      text: "lbl_vendor".tr,
                      margin: EdgeInsets.only(
                        left: 22,
                        top: 19,
                        right: 22,
                      ),
                      buttonTextStyle:
                          controller.selectedButton == "lbl_vendor".tr
                              ? theme.textTheme.titleMedium
                              : theme.textTheme.titleMedium
                                  ?.copyWith(color: Colors.black),
                      buttonStyle: controller.selectedButton == "lbl_vendor".tr
                          ? CustomButtonStyles.fillPrimaryTL28
                          : CustomButtonStyles.outLineBorderPrimary,
                      onTap: () => controller.selectButtondebug(
                        "lbl_vendor".tr,
                      ),
                    ),
                    SizedBox(height: 67),
                    // CustomElevatedButton(
                    //   text: "lbl_continue".tr,
                    //   buttonStyle: CustomButtonStyles.fillBlack,
                    //   onTap: () {
                    //     Get.toNamed(AppRoutes.signInWithKeyboardScreen);
                    //   },
                    // ),
                    Spacer(), Text("Okulsys")
                  ],
                );
              },
            )),
      ),
    );
  }
}
