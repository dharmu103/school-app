import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school_app/core/app_export.dart';
import 'package:school_app/theme/theme_helper.dart';
import 'package:school_app/widgets/custom_elevated_button.dart';
import 'package:school_app/widgets/custom_text_form_field.dart';
import 'package:school_app/widgets/dialogs/update_success.dart';

import '../../../widgets/custom_app_bar_widget.dart';
import '../../../widgets/custom_image_view.dart';
import '../home_screen_five_draweritem/home_screen_five_draweritem.dart';

class StudentIssueScreen extends StatelessWidget {
  const StudentIssueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          title: "Raise an Issue",
          actions: [],
        ),
        //   key: _key, // Assign the key to Scaffold.

        body: Container(
            width: Get.width,
            // height: Get.height,
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
                  child: SingleChildScrollView(
                    physics: ScrollPhysics(),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Padding(
                          //     padding: EdgeInsets.only(
                          //         left: 8.h, top: 25.v, bottom: 3.v),
                          //     child: Text("lbl_upload_circular".tr,
                          //         style: CustomTextStyles
                          //             .titleSmallPrimaryContainer)),
                          Padding(
                              padding: EdgeInsets.only(top: 37.v, right: 1.h),
                              child: GestureDetector(
                                onTap: () async {
                                  FilePickerResult? result =
                                      await FilePicker.platform.pickFiles();

                                  if (result != null) {
                                    // File file = File(result.files.single.path!);
                                  } else {
                                    // User canceled the picker
                                  }
                                },
                                child: DottedBorder(
                                    color: appTheme.indigo5001,
                                    padding: EdgeInsets.only(
                                        left: 1.h,
                                        top: 1.v,
                                        right: 1.h,
                                        bottom: 1.v),
                                    strokeWidth: 1.h,
                                    radius: Radius.circular(20),
                                    borderType: BorderType.RRect,
                                    dashPattern: [5, 5],
                                    child: Container(
                                        width: Get.width,
                                        padding: EdgeInsets.symmetric(
                                            vertical: 68.v),
                                        decoration: AppDecoration.outlineIndigo
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder20),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgFirrsignout,
                                                  height: 32.adaptSize,
                                                  width: 32.adaptSize),
                                              SizedBox(height: 18.v),
                                              Text("msg_click_to_upload".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumBluegray500)
                                            ]))),
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Share transaction screenshot.".tr,
                              style: CustomTextStyles.bodyMediumBluegray500),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Text("Describe your issue".tr,
                                  style: CustomTextStyles.bodyMedium_1),
                            ],
                          ),
                          CustomTextFormField(
                            margin: EdgeInsets.only(top: 15.v),
                            maxLines: 8,
                            //  width: 100,
                            height: 150, hintText: "Type here.",
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
        bottomNavigationBar: CustomElevatedButton(
          onTap: () => {Get.dialog(UpdateDailogWidget())},
          text: "Submit",
          margin: EdgeInsets.all(24),
        ),
      ),
    );
  }
}
