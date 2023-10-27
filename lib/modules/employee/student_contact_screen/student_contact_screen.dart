import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/employee_app_bar.dart';
import '../employ_hp_one_draweritem/employ_hp_one_draweritem.dart';
import 'controller/student_contact_controller.dart';
import 'package:flutter/material.dart';

import 'widget/student_contect_table.dart';

class StudentContactScreen extends GetWidget<StudentContactController> {
  const StudentContactScreen({Key? key}) : super(key: key);

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
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h, bottom: 10),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    height: 32.adaptSize,
                                    width: 32.adaptSize,
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgClose,
                                              height: 32.adaptSize,
                                              width: 32.adaptSize,
                                              alignment: Alignment.center,
                                              onTap: () {
                                                onTapImgCloseone();
                                              }),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgVolume,
                                              height: 16.v,
                                              width: 13.h,
                                              alignment: Alignment.center)
                                        ])),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 11.h, top: 4.v, bottom: 4.v),
                                    child: Text("lbl_student_contact".tr,
                                        style: CustomTextStyles
                                            .titleSmallPrimaryContainerMedium))
                              ]))),
                  Container(
                    width: Get.width,
                    child: DataTable(
                        headingRowHeight: 32.v,
                        headingRowColor:
                            MaterialStatePropertyAll(theme.colorScheme.primary),
                        headingTextStyle: theme.textTheme.labelLarge
                            ?.copyWith(color: Colors.white),
                        columnSpacing: 0,
                        decoration: BoxDecoration(),
                        columns: [
                          DataColumn(
                            label: Container(
                              width: 200.h,
                              child: Text(
                                "lbl_name".tr,
                              ),
                            ),
                          ),
                          DataColumn(
                              label: Text(
                            "lbl_number".tr,
                          )),
                          DataColumn(label: Text(""))
                        ],
                        rows: []),
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    // SizedBox(height: 9.v),
                    studentContactTable()
                  ])))
                ]))));
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
