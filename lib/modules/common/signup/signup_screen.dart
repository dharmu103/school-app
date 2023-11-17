import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:school_app/core/app_export.dart';
import 'package:school_app/core/utils/validation_functions.dart';
import 'package:school_app/modules/common/signup/controller/signup_controller.dart';
import 'package:school_app/widgets/custom_elevated_button.dart';
import 'package:school_app/widgets/custom_icon_button.dart';
import 'package:school_app/widgets/custom_text_form_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends StatefulWidget {
  SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool agreeTerm = true;
  int classNumber = 1;
  int? currentSections;
  int? gender;
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
                  "Sign up".tr,
                  style: theme.appBarTheme.titleTextStyle,
                )),
            body: SingleChildScrollView(
              child: Form(
                  key: _formKey,
                  child: Container(
                      width: double.maxFinite,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 22),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name".tr, style: theme.textTheme.bodyMedium),
                            SizedBox(height: 9),
                            CustomTextFormField(
                                //   controller: controller.emailController,
                                hintText: "Your name".tr,
                                textInputType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidEmail(value,
                                          isRequired: true))) {
                                    return "Please enter valid email";
                                  }
                                  return null;
                                }),
                            SizedBox(height: 16),
                            Text("lbl_email".tr,
                                style: theme.textTheme.bodyMedium),
                            SizedBox(height: 9),
                            CustomTextFormField(
                                //   controller: controller.emailController,
                                hintText: "msg_lanlordjones_email_com".tr,
                                textInputType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidEmail(value,
                                          isRequired: true))) {
                                    return "Please enter valid email";
                                  }
                                  return null;
                                }),
                            SizedBox(height: 16),
                            Text("lbl_password".tr,
                                style: theme.textTheme.bodyMedium),
                            SizedBox(height: 9),
                            CustomTextFormField(
                                //   controller: controller.emailController,
                                hintText: "msg_lanlordjones_email_com".tr,
                                textInputType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidEmail(value,
                                          isRequired: true))) {
                                    return "Please enter valid email";
                                  }
                                  return null;
                                }),
                            SizedBox(height: 16),
                            Text("Phone Number".tr,
                                style: theme.textTheme.bodyMedium),
                            SizedBox(height: 9),
                            CustomTextFormField(
                                //   controller: controller.emailController,
                                hintText: "+919876543210".tr,
                                textInputType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidEmail(value,
                                          isRequired: true))) {
                                    return "Please enter valid email";
                                  }
                                  return null;
                                }),
                            SizedBox(height: 16),
                            Text("School Name".tr,
                                style: theme.textTheme.bodyMedium),
                            SizedBox(height: 9),
                            CustomTextFormField(
                                //   controller: controller.emailController,
                                hintText: "abc public school".tr,
                                textInputType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidEmail(value,
                                          isRequired: true))) {
                                    return "Please enter valid email";
                                  }
                                  return null;
                                }),
                            SizedBox(height: 16),
                            Text("Gender".tr,
                                style: theme.textTheme.bodyMedium),
                            SizedBox(height: 9),
                            Container(
                              height: 48,
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton2(
                                  value: gender,
                                  hint: Padding(
                                    padding: const EdgeInsets.only(),
                                    child: Text("Gender",
                                        style: CustomTextStyles
                                            .bodyMediumBluegray200),
                                  ),
                                  buttonStyleData: ButtonStyleData(
                                      height: 48,
                                      width: Get.width,
                                      padding: const EdgeInsets.only(left: 15),
                                      decoration:
                                          AppDecoration.outlineGray.copyWith(
                                        color:
                                            appTheme.gray100.withOpacity(0.4),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: appTheme.blueGray100,
                                          width: 1,
                                        ),
                                      )),
                                  dropdownStyleData: DropdownStyleData(
                                    decoration:
                                        AppDecoration.outlineGray.copyWith(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: appTheme.blueGray100,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                  onChanged: (v) {
                                    setState(() {
                                      gender = v;
                                    });
                                  },

                                  items: [
                                    DropdownMenuItem(
                                      child: Text(
                                        "Male",
                                        style:
                                            CustomTextStyles.bodyMediumBlack900,
                                      ),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        "Female",
                                        style:
                                            CustomTextStyles.bodyMediumBlack900,
                                      ),
                                      value: 0,
                                    ),
                                  ],
                                  //   controller: controller.emailController,
                                ),
                              ),
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Class".tr,
                                        style: theme.textTheme.bodyMedium),
                                    SizedBox(height: 9),
                                    // CustomTextFormField(
                                    //   alignment: Alignment.center,
                                    //   hintText: "1",
                                    //   textAlign: TextAlign.center,
                                    //   textStyle:
                                    //       CustomTextStyles.bodyMediumBlack900,
                                    //   hintStyle:
                                    //       CustomTextStyles.bodyMediumBlack900,
                                    //   prefix: Icon(CupertinoIcons.minus),
                                    //   suffix: Icon(CupertinoIcons.add),
                                    //   width: Get.width * 0.43,
                                    // )
                                    Container(
                                      height: 48,
                                      decoration:
                                          AppDecoration.outlineGray.copyWith(
                                        color:
                                            appTheme.gray100.withOpacity(0.4),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: appTheme.blueGray100,
                                          width: 1,
                                        ),
                                      ),
                                      width: Get.width * 0.38,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          IconButton(
                                            iconSize: 20.adaptSize,
                                            color: appTheme.blueGray200,
                                            onPressed: () {
                                              if (classNumber > 1) {
                                                classNumber--;
                                              }
                                              setState(() {});
                                            },
                                            icon: Icon(CupertinoIcons.minus),
                                          ),
                                          Text("$classNumber"),
                                          IconButton(
                                            iconSize: 20.adaptSize,
                                            color: appTheme.blueGray200,
                                            onPressed: () {
                                              if (classNumber < 12) {
                                                classNumber++;
                                              }
                                              setState(() {});
                                            },
                                            icon: Icon(CupertinoIcons.add),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Section".tr,
                                        style: theme.textTheme.bodyMedium),
                                    SizedBox(height: 9),
                                    Container(
                                      height: 48,
                                      width: Get.width * 0.43,
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton2(
                                          value: currentSections,
                                          hint: Padding(
                                            padding: const EdgeInsets.only(),
                                            child: Text("Section",
                                                style: CustomTextStyles
                                                    .bodyMediumBluegray200),
                                          ),
                                          buttonStyleData: ButtonStyleData(
                                              height: 48,
                                              width: Get.width,
                                              padding:
                                                  EdgeInsets.only(left: 20),
                                              decoration: AppDecoration
                                                  .outlineGray
                                                  .copyWith(
                                                color: appTheme.gray100
                                                    .withOpacity(0.4),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                  color: appTheme.blueGray100,
                                                  width: 1,
                                                ),
                                              )),
                                          dropdownStyleData: DropdownStyleData(
                                            decoration: AppDecoration
                                                .outlineGray
                                                .copyWith(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                color: appTheme.blueGray100,
                                                width: 1,
                                              ),
                                            ),
                                          ),
                                          onChanged: (v) {
                                            currentSections = v;
                                            setState(() {});
                                          },

                                          items: [
                                            DropdownMenuItem(
                                              child: Text(
                                                "A",
                                                style: CustomTextStyles
                                                    .bodyMediumBlack900,
                                              ),
                                              value: 0,
                                            ),
                                            DropdownMenuItem(
                                              child: Text(
                                                "B",
                                                style: CustomTextStyles
                                                    .bodyMediumBlack900,
                                              ),
                                              value: 1,
                                            ),
                                            DropdownMenuItem(
                                              child: Text(
                                                "C",
                                                style: CustomTextStyles
                                                    .bodyMediumBlack900,
                                              ),
                                              value: 2,
                                            ),
                                          ],
                                          //   controller: controller.emailController,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Checkbox(
                                  side: BorderSide(
                                      color: theme.colorScheme.primary),
                                  value: agreeTerm,
                                  onChanged: (v) {
                                    setState(() {
                                      agreeTerm = v!;
                                      print(agreeTerm);
                                    });
                                  },
                                  fillColor: agreeTerm
                                      ? MaterialStatePropertyAll(
                                          theme.colorScheme.primary)
                                      : MaterialStatePropertyAll(
                                          Colors.grey.shade100),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Flexible(
                                  child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "I agree with ",
                                          style: CustomTextStyles
                                              .bodyMediumGray600),
                                      TextSpan(
                                          text: "terms and conditions",
                                          style: CustomTextStyles
                                              .bodyMediumPrimary
                                              .copyWith(fontSize: 13.fSize)),
                                      TextSpan(
                                          text:
                                              " and also the protection of my personal data on this application",
                                          style: CustomTextStyles
                                              .bodyMediumGray600)
                                    ]),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 29),
                            GetBuilder<SignUpController>(
                              init: SignUpController(),
                              initState: (_) {},
                              builder: (_) {
                                return CustomElevatedButton(
                                  isDisabled: !agreeTerm,
                                  text: "Sign up".tr,
                                  onTap: () async {
                                    _.signinDebugMode();
                                  },
                                );
                              },
                            ),
                            SizedBox(height: 5)
                          ]))),
            )));
  }

  /// Navigates to the previous screen.

  onTapArrowleft() {
    Get.back();
  }
}
