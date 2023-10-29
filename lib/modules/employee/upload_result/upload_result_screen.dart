import 'package:school_app/widgets/custom_elevated_button.dart';

import '../../../core/app_export.dart';
import '../../../widgets/employee_app_bar.dart';
import '../employ_hp_one_draweritem/employ_hp_one_draweritem.dart';

import 'package:flutter/material.dart';

import 'controller/upload_result_controller.dart';
import 'widget/upload_result_table.dart';

class UploadResultScreen extends GetView<UploadResultController> {
  const UploadResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
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
                      padding: EdgeInsets.only(left: 24.h),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(),
                                child: Text("Result",
                                    style: CustomTextStyles
                                        .titleMediumPrimaryContainer))
                          ]))),
              SizedBox(height: 9.v),
              Container(
                width: Get.width,
                child: DataTable(
                  headingRowHeight: 32.v,
                  headingRowColor:
                      MaterialStatePropertyAll(theme.colorScheme.primary),
                  headingTextStyle:
                      theme.textTheme.labelLarge?.copyWith(color: Colors.white),
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
                        label: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Out of".tr,
                        ),
                        Container(
                            width: 35.h,
                            height: 32.v,
                            // padding: EdgeInsets.only(left: 5),
                            child: Center(
                              child: TextFormField(
                                onChanged: (v) {
                                  controller.totalMarks.value = v;
                                },
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                    // filled: true,
                                    fillColor: theme.colorScheme.primary,
                                    isDense: true,
                                    hintText: controller.totalMarks.value,
                                    contentPadding: EdgeInsets.zero,
                                    hintStyle: theme.textTheme.labelLarge
                                        ?.copyWith(
                                            color: Colors.white,
                                            decoration:
                                                TextDecoration.underline),
                                    border: UnderlineInputBorder(
                                        // gapPadding: 0,
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 5))),
                              ),
                            ))
                      ],
                    )),
                    DataColumn(
                        label: Text(
                      "lbl_marks".tr,
                    )),
                  ],
                  rows: [],
                ),
              ),
              Expanded(
                  child: SingleChildScrollView(
                      child: Column(children: [
                // SizedBox(height: 9.v),
                SizedBox(width: Get.width, child: UploadResultTable()),
                SizedBox(
                  height: 200,
                )
              ])))
            ])),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          child: CustomElevatedButton(
            text: "Upload",
            onTap: () => Get.toNamed(AppRoutes.employeeScreen),
          ),
        ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
