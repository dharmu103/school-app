import 'package:school_app/modules/employee/upload_attendence/controller/upload_attendence_controller.dart';
import 'package:school_app/widgets/custom_elevated_button.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/employee_app_bar.dart';
import '../employ_hp_one_draweritem/employ_hp_one_draweritem.dart';

import 'package:flutter/material.dart';

import 'widget/upload_attendence_table.dart';

class UploadAttendenceScreen extends GetWidget<UploadAttendenceController> {
  const UploadAttendenceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    final GlobalKey<ScaffoldState> _keyEmp = GlobalKey();
    return SafeArea(
      key: _keyEmp,
      child: Scaffold(
        appBar: EmployeeAppBar(
          title: "lbl_school_name".tr,
        ),
        endDrawer: Drawer(child: EmployDraweritem()),
        body: SizedBox(
            width: double.maxFinite,
            child: Column(children: [
              SizedBox(height: 9.v),
              Expanded(
                  child: SingleChildScrollView(
                      child: Column(children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                    left: 11.h,
                                  ),
                                  child: Text(
                                      "lbl_attendence".tr + " (6 August) ",
                                      style: CustomTextStyles
                                          .titleMediumPrimaryContainer))
                            ]))),
                SizedBox(height: 9.v),
                SizedBox(width: Get.width, child: uploadAttendenceTable()),
                SizedBox(
                  height: 200,
                )
              ])))
            ])),
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          child: CustomElevatedButton(
            text: "Upload",
            onTap: () => Get.toNamed(AppRoutes.employeeScreen),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        // persistentFooterButtons: [
        //   CustomElevatedButton(text: "Upload"),
        // ],
        // bottomNavigationBar: Padding(
        //   padding: const EdgeInsets.all(18.0),
        //   child: CustomElevatedButton(text: "Upload"),
        // ),
      ),
    );
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapImgCloseone() {
    Get.back();
  }
}
