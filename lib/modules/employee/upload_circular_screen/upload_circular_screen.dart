import 'package:file_picker/file_picker.dart';
import 'package:school_app/widgets/custom_app_bar_widget.dart';
import 'package:school_app/widgets/dialogs/update_success.dart';

import '../../../widgets/custom_image_view.dart';
import '../../../widgets/employee_app_bar.dart';
import '../employ_hp_one_draweritem/employ_hp_one_draweritem.dart';
import 'controller/upload_circular_controller.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:school_app/core/app_export.dart';
import 'package:school_app/widgets/custom_elevated_button.dart';

class UploadCircularScreen extends GetWidget<UploadCircularController> {
  UploadCircularScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _keyEmp = GlobalKey();
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        key: _keyEmp,
        appBar: EmployeeAppBar(
          title: "lbl_school_name".tr,
        ),
        endDrawer: Drawer(child: EmployDraweritem()),
        body: SizedBox(
            width: double.maxFinite,
            child: Column(children: [
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.h, vertical: 18.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          SizedBox(
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                              child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgClose,
                                        height: 32.adaptSize,
                                        width: 32.adaptSize,
                                        alignment: Alignment.center,
                                        onTap: () {}),
                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgCalendarOnerrorcontainer,
                                        height: 17.v,
                                        width: 13.h,
                                        alignment: Alignment.centerLeft,
                                        margin: EdgeInsets.only(left: 9.h))
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 8.h, top: 5.v, bottom: 3.v),
                              child: Text("lbl_upload_circular".tr,
                                  style: CustomTextStyles
                                      .titleSmallPrimaryContainer))
                        ]),
                        Padding(
                            padding: EdgeInsets.only(top: 37.v, right: 1.h),
                            child: GestureDetector(
                              onTap: () async {
                                FilePickerResult? result =
                                    await FilePicker.platform.pickFiles();
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
                                      padding:
                                          EdgeInsets.symmetric(vertical: 68.v),
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
                        SizedBox(height: 18.v),
                        Align(
                            alignment: Alignment.center,
                            child: Text("msg_doc_should_be_in".tr,
                                style: CustomTextStyles.bodyMediumBluegray500)),
                        SizedBox(height: 5.v)
                      ]))
            ])),
        bottomNavigationBar: CustomElevatedButton(
            onTap: () {
              Get.dialog(UpdateDailogWidget());
            },
            text: "lbl_upload".tr,
            margin: EdgeInsets.only(left: 25.h, right: 25.h, bottom: 42.v)));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
//   onTapImgCloseone() {
//     // Get.back();
//   }
}
