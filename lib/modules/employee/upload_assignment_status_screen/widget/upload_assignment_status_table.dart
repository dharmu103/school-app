import 'package:flutter/material.dart';
import 'package:school_app/modules/employee/upload_assignment_status_screen/controller/assignment_status_controller.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../upload_attendence/controller/upload_attendence_controller.dart';

Widget uploadAssignmentStatusTable() {
  return DataTable(
    headingRowHeight: 0.v,
    headingRowColor: MaterialStatePropertyAll(theme.colorScheme.primary),
    headingTextStyle: theme.textTheme.labelLarge?.copyWith(color: Colors.white),
    columnSpacing: 10,
    decoration: BoxDecoration(),
    columns: [
      DataColumn(
        label: Text(
          "".tr,
        ),
      ),
      DataColumn(
          label: Text(
        "".tr,
      )),
      DataColumn(
          label: Text(
        "".tr,
      )),
    ],
    rows: List.generate(
        20,
        (index) => DataRow(cells: [
              DataCell(Container(
                width: 160.h,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_muskan_verma".tr,
                      style: CustomTextStyles.bodyMedium_1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              )),
              DataCell(Padding(
                  padding: EdgeInsets.only(right: 26.h),
                  child: GetBuilder<UploadAssignmentStatusController>(
                    builder: (_) {
                      return Container(
                        width: 24,
                        height: 24,
                        padding: EdgeInsets.all(1),
                        decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadius.circular(30),
                            border:
                                Border.all(width: 0.3, color: appTheme.gray400),
                            color: _.assignmentsList[index] == null ||
                                    _.assignmentsList[index] == false
                                ? appTheme.gray50
                                : theme.colorScheme.primary),
                        child: GetBuilder<UploadAssignmentStatusController>(
                          init: UploadAssignmentStatusController(),
                          initState: (_) {},
                          builder: (_) {
                            return InkWell(
                              borderRadius: BorderRadius.circular(30),
                              onTap: () {
                                _.onTabTrue(index);
                              },
                              child: Container(
                                width: 23,
                                height: 23,
                                padding: EdgeInsets.all(2),
                                decoration: AppDecoration.outlineBlack.copyWith(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(color: appTheme.gray100),
                                    color: _.assignmentsList[index] == null ||
                                            _.assignmentsList[index] == false
                                        ? appTheme.gray50
                                        : theme.colorScheme.primary),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ))),
              DataCell(Padding(
                  padding: EdgeInsets.only(),
                  child: GetBuilder<UploadAssignmentStatusController>(
                    builder: (_) {
                      return Container(
                        width: 24,
                        height: 24,
                        padding: EdgeInsets.all(1),
                        decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadius.circular(30),
                            border:
                                Border.all(width: 0.3, color: appTheme.gray400),
                            color: _.assignmentsList[index] == null ||
                                    _.assignmentsList[index] == true
                                ? appTheme.gray50
                                : theme.colorScheme.primary),
                        child: GetBuilder<UploadAssignmentStatusController>(
                          init: UploadAssignmentStatusController(),
                          initState: (_) {},
                          builder: (_) {
                            return InkWell(
                              borderRadius: BorderRadius.circular(30),
                              onTap: () {
                                _.onTabFalse(index);
                              },
                              child: Container(
                                width: 23,
                                height: 23,
                                padding: EdgeInsets.all(2),
                                decoration: AppDecoration.outlineBlack.copyWith(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(color: appTheme.gray100),
                                    color: _.assignmentsList[index] == null ||
                                            _.assignmentsList[index] == true
                                        ? appTheme.gray50
                                        : theme.colorScheme.primary),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ))),
            ])),
  );
}
