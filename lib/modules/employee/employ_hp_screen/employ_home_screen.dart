import 'package:school_app/widgets/custom_image_view.dart';
import 'package:school_app/widgets/employee_app_bar.dart';

import '../employ_hp_one_draweritem/employ_hp_one_draweritem.dart';
import 'controller/employ_home_controller.dart';

import 'package:flutter/material.dart';
import 'package:school_app/core/app_export.dart';

import 'package:school_app/widgets/custom_elevated_button.dart';

class EmployHomeScreen extends GetWidget<EmployHomeController> {
  EmployHomeScreen({Key? key})
      : super(
          key: key,
        );
  final GlobalKey<ScaffoldState> _keyEmp = GlobalKey();
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      key: _keyEmp,
      appBar: EmployeeAppBar(
        title: "lbl_school_name".tr,
        isLeading: false,
      ),
      endDrawer: Drawer(child: EmployDraweritem()),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 14.v),
              decoration: AppDecoration.fillPrimary,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.v),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 24.h,
                ),
                Text("Select date for attendence",
                    style: CustomTextStyles.titleLargeOnPrimary),
              ],
            ),
            CalendarDatePicker(
                initialDate: DateTime.now(),
                firstDate: DateTime(2021),
                lastDate: DateTime(2024),
                onDateChanged: (v) {}),
            Container(
              padding: EdgeInsets.only(
                left: 24.h,
                right: 24.h,
              ),
              child: Column(
                children: [
                  CustomElevatedButton(
                    onTap: () {
                      Get.toNamed(AppRoutes.uploadAttendenceScreen);
                    },
                    text: "lbl_mark_attendance".tr,
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
