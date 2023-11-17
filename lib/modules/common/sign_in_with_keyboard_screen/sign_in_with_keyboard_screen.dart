import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'controller/sign_in_with_keyboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:school_app/core/app_export.dart';
import 'package:school_app/core/utils/validation_functions.dart';
import 'package:school_app/widgets/custom_elevated_button.dart';
import 'package:school_app/widgets/custom_text_form_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore_for_file: must_be_immutable
class SignInWithKeyboardScreen extends GetWidget<SignInWithKeyboardController> {
  SignInWithKeyboardScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                toolbarHeight: 50,
                leadingWidth: 48,
                leading: IconButton(
                  onPressed: () {
                    onTapArrowleft();
                  },
                  icon: SvgPicture.asset(
                    ImageConstant.imgArrowleftBlack900,
                  ),
                ),
                centerTitle: true,
                title: Text(
                  "lbl_sign_in".tr,
                  style: theme.appBarTheme.titleTextStyle,
                )),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 22),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_email".tr,
                              style: theme.textTheme.bodyMedium),
                          SizedBox(height: 9),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.emailController,
                              hintText: "msg_lanlordjones_email_com".tr,
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          SizedBox(height: 16),
                          Text("lbl_password".tr,
                              style: theme.textTheme.bodyMedium),
                          SizedBox(height: 8),
                          CustomTextFormField(
                              controller: controller.passwordController,
                              textInputAction: TextInputAction.done,
                              obscureText: true),
                          SizedBox(height: 18),
                          Text("msg_forgot_password".tr,
                              style: CustomTextStyles.bodyMediumPrimary),
                          SizedBox(height: 29),
                          CustomElevatedButton(
                            text: "lbl_log_in".tr,
                            onTap: () async {
                              SystemChannels.textInput
                                  .invokeMethod('TextInput.hide');
                              //   if (kDebugMode) {
                              controller.signinDebugMode();
                              //   } else if (kReleaseMode) {
                              //   String res = await controller.signInWithEmail();
                              //   if (res == "success") {
                              //     controller.signin();
                              //     //     }
                              //   }
                            },
                          ),
                          SizedBox(height: 5),
                          PrefUtils.sharedPreferences?.getString("login_as") ==
                                  'lbl_student'.tr
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Don't have an account? "),
                                    TextButton(
                                        onPressed: () {
                                          Get.toNamed(AppRoutes.signupScreen);
                                        },
                                        child: Text(
                                          "Signup",
                                          style: CustomTextStyles
                                              .bodyMediumPrimary,
                                        ))
                                  ],
                                )
                              : SizedBox(),
                        ])))));
  }

  /// Navigates to the previous screen.

  onTapArrowleft() {
    Get.back();
  }
}
