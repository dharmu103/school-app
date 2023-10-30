import 'package:school_app/modules/employee/assignment_status_screen/widget/assignment_status_table.dart';
import 'package:school_app/modules/employee/upload_assignment_status_screen/widget/upload_assignment_status_table.dart';

import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/employee_app_bar.dart';
import '../employ_hp_one_draweritem/employ_hp_one_draweritem.dart';
import '../upload_attendence/widget/upload_attendence_table.dart';
import 'controller/assignment_status_controller.dart';
import 'package:flutter/material.dart';
import 'package:school_app/core/app_export.dart';

class UploadAssignmentStatusScreen
    extends GetWidget<UploadAssignmentStatusController> {
  const UploadAssignmentStatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    final GlobalKey<ScaffoldState> _keyEmp = GlobalKey();
    return SafeArea(
      child: Scaffold(
        key: _keyEmp,
        appBar: EmployeeAppBar(
          title: "lbl_school_name".tr,
        ),
        endDrawer: Drawer(child: EmployDraweritem()),
        body: SizedBox(
            width: Get.width,
            child: Column(children: [
              SizedBox(height: 9),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(
                                  left: 0,
                                ),
                                child: Text("Assignment status",
                                    style: CustomTextStyles
                                        .titleMediumPrimaryContainer))
                          ]))),
              SizedBox(height: 9),
              Container(
                width: Get.width,
                child: DataTable(
                    headingRowHeight: 32,
                    headingRowColor:
                        MaterialStatePropertyAll(theme.colorScheme.primary),
                    headingTextStyle: theme.textTheme.labelLarge
                        ?.copyWith(color: Colors.white),
                    columnSpacing: 0,
                    decoration: BoxDecoration(),
                    columns: [
                      DataColumn(
                        label: Container(
                          //   color: Colors.green,
                          width: Get.width * 0.55 - 48,
                          child: Text(
                            "lbl_name".tr,
                          ),
                        ),
                      ),
                      //   DataColumn(label: Spacer()),
                      DataColumn(
                          label: Container(
                        width: Get.width * 0.2,
                        child: Text(
                          "Submitted".tr,
                        ),
                      )),
                      DataColumn(
                          label: Container(
                        width: Get.width * 0.25,
                        child: Text(
                          "Not Submitted",
                        ),
                      )),
                    ],
                    rows: []),
              ),
              Expanded(
                  child: SingleChildScrollView(
                      child: Column(children: [
                SizedBox(
                    width: Get.width, child: uploadAssignmentStatusTable()),
                SizedBox(
                  height: 200,
                )
              ])))
            ])),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          child: GetBuilder<UploadAssignmentStatusController>(
            init: UploadAssignmentStatusController(),
            initState: (_) {},
            builder: (_) {
              return CustomElevatedButton(
                buttonState: controller.btnState,
                text: "Upload",
                onTap: () {
                  controller.onAssignmentStatusUpload();
                },
              );
            },
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
